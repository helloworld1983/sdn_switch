/*
 * Empty C++ Application
 */
#include <iostream>
#include <stdio.h>
#include "xparameters.h"
#include "sdn_ctlr_intf.h"
#include "sdn_cntlr_classes.cc"



// Global Register Writes
uint32_t header[8];
uint32_t action[10];

//-----------------------------------------
// Delay
//-----------------------------------------
void delay(uint32_t value){
  uint32_t i,delay_val;
  for(i=0;i<100*value;i++){
	  delay_val++;
  }
}

bool cpu_bus_write::toggle_val = 0;



int main()
{
	uint32_t     *chipscope_enable_p, *reset_p, *sram_reset_done_p;
	install_flow install_flow;
	read_status  read_status;
	status       status;
	cpu_bus_read cpu_bus_read;


	chipscope_enable_p = CHIPSCOPE_EN;
	reset_p            = RESET;
    sram_reset_done_p  = SRAM_RESET_DONE;

    print("1 -> Starting SDN Controller...\n");

    print("2 -> Waiting for chipscope to come up.. \n");
	//Wait until chipscope VIO sets the value
	while(*chipscope_enable_p == 0) {;}

    //RESET
	print("3 -> Reseting the SDN Controller Interface.. \n");
    *reset_p = 1;
    delay(1000);
    *reset_p = 0;

    //Packet Header
	header[7] = 0x80200820;
    header[6] = 0x0000248c;
    header[5] = 0x01790600;
    header[4] = 0x248c0179;
    header[3] = 0x080800d5;
    header[2] = 0xe9ab0a5e;
    header[1] = 0xb6b88c06;
    header[0] = 0x0557901f;

    //Action
    action[9] = 0;
    action[8] = 0;
    action[7] = 0;
    action[6] = 0;
    action[5] = 0;
    action[4] = 0;
    action[3] = 0;
    action[2] = 0;
    action[1] = 0;
    action[0] = 0xF;

    //Wait until SRAM is initialized
    print("4 -> Waiting for SRAM Reset to finish.. \n");
    while(*sram_reset_done_p == 0 ) {;}

    //Install Flow
    print("5 -> Installing flow on SWITCH0.. \n");
    install_flow.write_to_reg(header,action,160,SWITCH0);

    print("6 -> Flow installation complete! SWITCH0.. \n");


	return 0;
}
