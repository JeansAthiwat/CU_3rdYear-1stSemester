Created by: Angelo Jacobo   
Date: June 7,2021  

[![image](https://user-images.githubusercontent.com/87559347/126261351-5080e8bf-3be1-4291-8394-c11ec4fcf6dc.png)](https://youtu.be/viPjJRhXTEY)

# Inside the src folder are:  
* top_module.v -> Uses the sdram_controller, uart, and 100MHz DCM core. Transmit and receive data from SDRAM  
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;via UART. Press "key" to alternate between transmitting(PC->UART->SDRAM) and receiving  
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;(SDRAM->UART->PC). First three ASCII received/transmittted is the SDRAM address(24-bits)   
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;then the next two consecutive ASCII  are then the data(16-bits).		    
* sdram_controller.v -> Interface module between FPGA and SDRAM. SDRAM used is "winbond-W9825G6KH". Current settings are:    
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Burst: 1  
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Address Mode: Sequential  
&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Autoprecharge is enabled after every read/write.  
* UART.v -> Interface from PC -> FPGA -> SDRAM and vice-versa.  
* top_module.ucf -> Constraint file for top_module.v  

Note: The constraint file is designed for Spartan 6 xc6slx9-2ftg256 FPGA (specifically the AX309 FPGA development board). Edit at your own risk.  

# NOTE: 
Chapter 11 of this book is only about SRAM(Static RAM) controller. But my board only has an SDRAM(Synchronous Dynamic RAM) so that is what
I instead did here. Beware that SDRAM controller **IS A COMPLETELY DIFFERENT LEVEL** compared to making an SRAM controller.    

I added a lot of comments on my code (especially the the sdram_controller.v) so try to understand the whole logic first before trying to make your own SDRAM controller.   

# UML Chart [SDRAM Controller Logic]:
![UMLchart_SDRAM_controller_logic](https://user-images.githubusercontent.com/87559347/126260972-bfad2a1b-b80e-417e-9bb5-99f3d78939b2.jpg)

# UML Chart [UART to SDRAM Logic]:
![UMLchart_UART_to_SDRAM](https://user-images.githubusercontent.com/87559347/126261033-77ff2f2c-77ca-4c68-b024-db49991722bb.jpg)



