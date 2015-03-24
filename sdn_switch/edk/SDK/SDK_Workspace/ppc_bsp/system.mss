
 PARAMETER VERSION = 2.2.0


BEGIN OS
 PARAMETER OS_NAME = standalone
 PARAMETER OS_VER = 3.09.a
 PARAMETER PROC_INSTANCE = ppc405_0
 PARAMETER STDIN = rs232_uart_1
 PARAMETER STDOUT = rs232_uart_1
END


BEGIN PROCESSOR
 PARAMETER DRIVER_NAME = cpu_ppc405
 PARAMETER DRIVER_VER = 1.12.a
 PARAMETER HW_INSTANCE = ppc405_0
END


BEGIN DRIVER
 PARAMETER DRIVER_NAME = mpmc
 PARAMETER DRIVER_VER = 4.01.a
 PARAMETER HW_INSTANCE = ddr2_sdram
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartlite
 PARAMETER DRIVER_VER = 2.00.a
 PARAMETER HW_INSTANCE = mdm_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartlite
 PARAMETER DRIVER_VER = 2.00.a
 PARAMETER HW_INSTANCE = rs232_uart_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = bram
 PARAMETER DRIVER_VER = 3.01.a
 PARAMETER HW_INSTANCE = xps_bram_if_cntlr_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = intc
 PARAMETER DRIVER_VER = 2.06.a
 PARAMETER HW_INSTANCE = xps_intc_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = intc
 PARAMETER DRIVER_VER = 2.06.a
 PARAMETER HW_INSTANCE = xps_intc_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 1.00.a
 PARAMETER HW_INSTANCE = sdn_ctlr_intf_0
END

