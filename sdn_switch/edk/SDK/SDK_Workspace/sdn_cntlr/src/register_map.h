#include "sdn_ctlr_intf.h"

//Generic Defines
#define RESET              (uint32_t *)  SDN_CTLR_INTF_SLV_REG0_OFFSET
#define SRAM_RESET_DONE    (uint32_t *)  SDN_CTLR_INTF_SLV_REG30_OFFSET
#define CHIPSCOPE_EN       (uint32_t *)  SDN_CTLR_INTF_SLV_REG31_OFFSET

//CPU Bus Write Defines
#define CPU_BUS_WR_DATA   (uint32_t *) SDN_CTLR_INTF_SLV_REG1_OFFSET
#define CPU_BUS_WR_ADDR   (uint32_t *) SDN_CTLR_INTF_SLV_REG2_OFFSET
#define CPU_BUS_RD_WR_L   (uint32_t *) SDN_CTLR_INTF_SLV_REG3_OFFSET
#define CPU_BUS_WR_CTRL   (uint32_t *) SDN_CTLR_INTF_SLV_REG4_OFFSET
#define CPU_BUS_WR_TOGGLE (uint32_t *) SDN_CTLR_INTF_SLV_REG5_OFFSET

//CPU Bus Read defines
#define CPU_BUS_RD_DATA   (uint32_t *) SDN_CTLR_INTF_SLV_REG6_OFFSET
#define CPU_BUS_RD_VALID  (uint32_t *) SDN_CTLR_INTF_SLV_REG7_OFFSET

#define SRAM_BLOCK_ADDR 0x1000000
#define TOGGLE_VALUE_INIT 0

#define READ 1
#define WRITE 0

#define EMPTY 1
#define FULL 2
#define ALMOST_FULL 3

#define SWITCH0 0


