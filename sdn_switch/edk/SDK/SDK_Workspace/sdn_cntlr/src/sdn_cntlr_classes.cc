/*
 * sdn_cntlr_classes.cc
 *
 *  Created on: Mar 21, 2015
 *      Author: akumar17
 */

#include "xparameters.h"
#include "register_map.h"
#include <stdint.h>
#include <stdio.h>
using namespace std;
//-----------------------------------------
// Write to the CPU Bus
//-----------------------------------------
class cpu_bus_write{
  volatile uint32_t *data_p, *addr_p, *rd_wr_L_p, *ctrl_p, *toggle_p;
  static bool toggle_val;
  public: 
    cpu_bus_write(){
          data_p    = CPU_BUS_WR_DATA;
          addr_p    = CPU_BUS_WR_ADDR;
          rd_wr_L_p = CPU_BUS_RD_WR_L;
          ctrl_p    = CPU_BUS_WR_CTRL;
          toggle_p  = CPU_BUS_WR_TOGGLE;
    }
	inline void toggle(){
		*toggle_p    = !toggle_val;
		toggle_val   = !toggle_val;
		return;
	}
	//Base Function to perform write transaction
	void tx(uint32_t data, uint32_t addr, uint32_t rd_wr_l, uint32_t ctrl){
		*data_p    = data;
		*addr_p    = addr;
		*rd_wr_L_p = rd_wr_l;
		*ctrl_p    = ctrl;
		toggle();
		return;
	}

	void status(int switch_id){
		*data_p   = 0;
		*addr_p   = 0;
		*rd_wr_L_p= 0;
		*ctrl_p   = (switch_id << 2) | 3;
	}

};

//-----------------------------------------
// Read from the CPU Bus
//-----------------------------------------
class cpu_bus_read{
	volatile uint32_t  *data_p, *valid_p;
public:
	cpu_bus_read(){
		data_p = CPU_BUS_RD_DATA;
		valid_p = CPU_BUS_RD_VALID;
    }
	uint32_t rx(){
		while(*valid_p != 1) {};        //Wait until valid data is available
		return *data_p;
	}
};

//-----------------------------------------
// Read IN/Output register FIFO status
//-----------------------------------------
struct status{
	int write_fifo_status;
	int read_fifo_status;
};

class read_status{
	cpu_bus_write req_status;
	cpu_bus_read  get_status;
	status   stat;
	uint32_t stat_read;

public:
	status reg_fifos(int switch_id){
		req_status.status(switch_id);
		stat_read = get_status.rx();
		stat.write_fifo_status = check_status(stat_read);
		stat.read_fifo_status = check_status(stat_read >> 3);
		return stat;
	}

	int check_status(uint32_t status){
		if(status & 1)
			return EMPTY;
		else if(status & 2)
			return FULL;
		else if(status & 4)
			return ALMOST_FULL;
		else
			return 0;
	}
};
//-----------------------------------------
// Install Flow
//-----------------------------------------
class install_flow{
public:

	cpu_bus_write instr_write;
	read_status   stat_handler;
	status        stat;
	int           fifo_empty;


	void write_to_reg(uint32_t *header, uint32_t *action, int start_idx,int switch_id){
		uint32_t start_addr = start_idx * 2;
		uint32_t sram_addr;
		uint32_t ctrl;

		int i;
		print("Installing Flow...\n\r");
		print("Header- \n\r");
		for(i=7; i >= 0 ; i--){
			xil_printf("%04X _",header[i]);
		}
		print("\n\n\n");

		print("Action- ");
		for(i=9; i >= 0 ; i--){
			xil_printf("%04X _",action[i]);
		}
		print("\n\n");

		ctrl = switch_id << 2;

		print("Writing Header...\n\n");
		//Writing Header
		for(i=0;i<8;i++){
			sram_addr = ((start_addr + i) * 4) ;
			xil_printf("I=%0d, SRAM_ADDR=%0d\n");
			sram_addr = sram_addr | SRAM_BLOCK_ADDR;
			instr_write.tx(header[i],sram_addr,WRITE,ctrl);
		}

		print("Reading Status.. Making sure that the write reg fifo is empty.. \n");
		fifo_empty = 0;
		while(!fifo_empty){
          stat = stat_handler.reg_fifos(switch_id);
          fifo_empty = (stat.write_fifo_status == EMPTY);
		}
		print("Writing Action...\n\n");
		//Writing Action
		for(i=0;i<10;i++){
			sram_addr = ((start_addr + 10 + i) * 4) | SRAM_BLOCK_ADDR;
			instr_write.tx(action[i],sram_addr,WRITE,ctrl);
		}
	}
};






