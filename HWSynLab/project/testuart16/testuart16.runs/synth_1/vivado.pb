
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:062

00:00:062	
485.9922	
200.516Z17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Awork/y3s1/HWSynLab/project/testuart16/testuart16.srcs/utils_1/imports/synth_1/uart_test.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2a
_C:/Awork/y3s1/HWSynLab/project/testuart16/testuart16.srcs/utils_1/imports/synth_1/uart_test.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
d
Command: %s
53*	vivadotcl23
1synth_design -top uart_test -part xc7a35tcpg236-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7a35tZ17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7a35tZ17-349h px� 
D
Loading part %s157*device2
xc7a35tcpg236-1Z21-403h px� 
Z
$Part: %s does not have CEAM library.966*device2
xc7a35tcpg236-1Z21-9227h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
15536Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 1341.680 ; gain = 448.203
h px� 
�
synthesizing module '%s'%s4497*oasys2
	uart_test2
 2`
\C:/Awork/y3s1/HWSynLab/project/testuart16/testuart16.srcs/sources_1/imports/UART/uart_test.v2
158@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

uart_top2
 2_
[C:/Awork/y3s1/HWSynLab/project/testuart16/testuart16.srcs/sources_1/imports/UART/uart_top.v2
378@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
baud_rate_generator2
 2j
fC:/Awork/y3s1/HWSynLab/project/testuart16/testuart16.srcs/sources_1/imports/UART/baud_rate_generator.v2
158@Z8-6157h px� 
E
%s
*synth2-
+	Parameter N bound to: 10 - type: integer 
h p
x
� 
F
%s
*synth2.
,	Parameter M bound to: 651 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
baud_rate_generator2
 2
02
12j
fC:/Awork/y3s1/HWSynLab/project/testuart16/testuart16.srcs/sources_1/imports/UART/baud_rate_generator.v2
158@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
uart_receiver2
 2d
`C:/Awork/y3s1/HWSynLab/project/testuart16/testuart16.srcs/sources_1/imports/UART/uart_receiver.v2
158@Z8-6157h px� 
I
%s
*synth21
/	Parameter DBITS bound to: 24 - type: integer 
h p
x
� 
K
%s
*synth23
1	Parameter SB_TICK bound to: 16 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart_receiver2
 2
02
12d
`C:/Awork/y3s1/HWSynLab/project/testuart16/testuart16.srcs/sources_1/imports/UART/uart_receiver.v2
158@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
uart_transmitter2
 2g
cC:/Awork/y3s1/HWSynLab/project/testuart16/testuart16.srcs/sources_1/imports/UART/uart_transmitter.v2
158@Z8-6157h px� 
I
%s
*synth21
/	Parameter DBITS bound to: 24 - type: integer 
h p
x
� 
K
%s
*synth23
1	Parameter SB_TICK bound to: 16 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart_transmitter2
 2
02
12g
cC:/Awork/y3s1/HWSynLab/project/testuart16/testuart16.srcs/sources_1/imports/UART/uart_transmitter.v2
158@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
fifo2
 2[
WC:/Awork/y3s1/HWSynLab/project/testuart16/testuart16.srcs/sources_1/imports/UART/fifo.v2
188@Z8-6157h px� 
M
%s
*synth25
3	Parameter DATA_SIZE bound to: 24 - type: integer 
h p
x
� 
Q
%s
*synth29
7	Parameter ADDR_SPACE_EXP bound to: 2 - type: integer 
h p
x
� 
�
-case statement is not full and has no default155*oasys2[
WC:/Awork/y3s1/HWSynLab/project/testuart16/testuart16.srcs/sources_1/imports/UART/fifo.v2
818@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
fifo2
 2
02
12[
WC:/Awork/y3s1/HWSynLab/project/testuart16/testuart16.srcs/sources_1/imports/UART/fifo.v2
188@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

uart_top2
 2
02
12_
[C:/Awork/y3s1/HWSynLab/project/testuart16/testuart16.srcs/sources_1/imports/UART/uart_top.v2
378@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82

write_data2
242

uart_top2`
\C:/Awork/y3s1/HWSynLab/project/testuart16/testuart16.srcs/sources_1/imports/UART/uart_test.v2
388@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82
	read_data2
242

uart_top2`
\C:/Awork/y3s1/HWSynLab/project/testuart16/testuart16.srcs/sources_1/imports/UART/uart_test.v2
418@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2
debounce_explicit2
 2h
dC:/Awork/y3s1/HWSynLab/project/testuart16/testuart16.srcs/sources_1/imports/UART/debounce_explicit.v2
178@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
debounce_explicit2
 2
02
12h
dC:/Awork/y3s1/HWSynLab/project/testuart16/testuart16.srcs/sources_1/imports/UART/debounce_explicit.v2
178@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	uart_test2
 2
02
12`
\C:/Awork/y3s1/HWSynLab/project/testuart16/testuart16.srcs/sources_1/imports/UART/uart_test.v2
158@Z8-6155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
nbits_reg_reg2d
`C:/Awork/y3s1/HWSynLab/project/testuart16/testuart16.srcs/sources_1/imports/UART/uart_receiver.v2
468@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
nbits_reg_reg2g
cC:/Awork/y3s1/HWSynLab/project/testuart16/testuart16.srcs/sources_1/imports/UART/uart_transmitter.v2
488@Z8-6014h px� 
h
+design %s has port %s driven by constant %s3447*oasys2
	uart_test2
an[3]2
1Z8-3917h px� 
h
+design %s has port %s driven by constant %s3447*oasys2
	uart_test2
an[2]2
1Z8-3917h px� 
h
+design %s has port %s driven by constant %s3447*oasys2
	uart_test2
an[1]2
1Z8-3917h px� 
h
+design %s has port %s driven by constant %s3447*oasys2
	uart_test2
an[0]2
0Z8-3917h px� 
i
+design %s has port %s driven by constant %s3447*oasys2
	uart_test2
seg[1]2
1Z8-3917h px� 
i
+design %s has port %s driven by constant %s3447*oasys2
	uart_test2
seg[2]2
1Z8-3917h px� 
i
+design %s has port %s driven by constant %s3447*oasys2
	uart_test2
seg[4]2
1Z8-3917h px� 
i
+design %s has port %s driven by constant %s3447*oasys2
	uart_test2
seg[5]2
1Z8-3917h px� 
i
+design %s has port %s driven by constant %s3447*oasys2
	uart_test2
seg[6]2
1Z8-3917h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1453.781 ; gain = 560.305
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1453.781 ; gain = 560.305
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1453.781 ; gain = 560.305
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0022

1453.7812
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2c
_C:/Awork/y3s1/HWSynLab/project/testuart16/testuart16.srcs/constrs_1/imports/UART/uart_const.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2c
_C:/Awork/y3s1/HWSynLab/project/testuart16/testuart16.srcs/constrs_1/imports/UART/uart_const.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2a
_C:/Awork/y3s1/HWSynLab/project/testuart16/testuart16.srcs/constrs_1/imports/UART/uart_const.xdc2
.Xil/uart_test_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1553.5082
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0022

1553.5082
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1553.508 ; gain = 660.031
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7a35tcpg236-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1553.508 ; gain = 660.031
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1553.508 ; gain = 660.031
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
q
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2
uart_receiverZ8-802h px� 
t
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2
uart_transmitterZ8-802h px� 
y
3inferred FSM for state register '%s' in module '%s'802*oasys2
state_reg_reg2
debounce_explicitZ8-802h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                    idle |                              001 |                               00
h p
x
� 
y
%s
*synth2a
_                   start |                              010 |                               01
h p
x
� 
y
%s
*synth2a
_                    data |                              100 |                               10
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2	
one-hot2
uart_receiverZ8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                    idle |                              001 |                               00
h p
x
� 
y
%s
*synth2a
_                   start |                              010 |                               01
h p
x
� 
y
%s
*synth2a
_                    data |                              100 |                               10
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2	
one-hot2
uart_transmitterZ8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                    zero |                               00 |                               00
h p
x
� 
y
%s
*synth2a
_                   wait1 |                               01 |                               11
h p
x
� 
y
%s
*synth2a
_                     one |                               10 |                               10
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
state_reg_reg2

sequential2
debounce_explicitZ8-3354h px� 
�
!inferring latch for variable '%s'327*oasys2
db_level_reg2h
dC:/Awork/y3s1/HWSynLab/project/testuart16/testuart16.srcs/sources_1/imports/UART/debounce_explicit.v2
718@Z8-327h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:12 ; elapsed = 00:00:14 . Memory (MB): peak = 1553.508 ; gain = 660.031
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   22 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   10 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit       Adders := 4     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               24 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               10 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 5     
h p
x
� 
&
%s
*synth2
+---RAMs : 
h p
x
� 
V
%s
*synth2>
<	               96 Bit	(4 X 24 bit)          RAMs := 2     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   3 Input   24 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   22 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   3 Input    4 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   3 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 7     
h p
x
� 
F
%s
*synth2.
,	   3 Input    1 Bit        Muxes := 13    
h p
x
� 
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 12    
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
%s
*synth2X
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
h
+design %s has port %s driven by constant %s3447*oasys2
	uart_test2
an[3]2
1Z8-3917h px� 
h
+design %s has port %s driven by constant %s3447*oasys2
	uart_test2
an[2]2
1Z8-3917h px� 
h
+design %s has port %s driven by constant %s3447*oasys2
	uart_test2
an[1]2
1Z8-3917h px� 
h
+design %s has port %s driven by constant %s3447*oasys2
	uart_test2
an[0]2
0Z8-3917h px� 
i
+design %s has port %s driven by constant %s3447*oasys2
	uart_test2
seg[1]2
1Z8-3917h px� 
i
+design %s has port %s driven by constant %s3447*oasys2
	uart_test2
seg[2]2
1Z8-3917h px� 
i
+design %s has port %s driven by constant %s3447*oasys2
	uart_test2
seg[4]2
1Z8-3917h px� 
i
+design %s has port %s driven by constant %s3447*oasys2
	uart_test2
seg[5]2
1Z8-3917h px� 
i
+design %s has port %s driven by constant %s3447*oasys2
	uart_test2
seg[6]2
1Z8-3917h px� 
v
/Removed RAM (%s) due to inactive write enable.
4980*oasys2#
!UART_UNIT/FIFO_RX_UNIT/memory_regZ8-7257h px� 
r
+Unused sequential element %s was removed. 
4326*oasys2#
!UART_UNIT/FIFO_RX_UNIT/memory_regZ8-6014h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys20
.UART_UNIT/UART_RX_UNIT/FSM_onehot_state_reg[2]2
	uart_testZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys20
.UART_UNIT/UART_RX_UNIT/FSM_onehot_state_reg[1]2
	uart_testZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys20
.UART_UNIT/UART_RX_UNIT/FSM_onehot_state_reg[0]2
	uart_testZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
BUTTON_DEBOUNCER/db_level_reg2
	uart_testZ8-3332h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:14 ; elapsed = 00:00:16 . Memory (MB): peak = 1553.508 ; gain = 660.031
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
X
%s*synth2@
>
Distributed RAM: Preliminary Mapping Report (see note below)
h px� 
~
%s*synth2f
d+------------+-----------------------------------+-----------+----------------------+-------------+
h px� 

%s*synth2g
e|Module Name | RTL Object                        | Inference | Size (Depth x Width) | Primitives  | 
h px� 
~
%s*synth2f
d+------------+-----------------------------------+-----------+----------------------+-------------+
h px� 

%s*synth2g
e|uart_test   | UART_UNIT/FIFO_TX_UNIT/memory_reg | Implied   | 4 x 8                | RAM32M x 4  | 
h px� 

%s*synth2g
e+------------+-----------------------------------+-----------+----------------------+-------------+

h px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:18 ; elapsed = 00:00:20 . Memory (MB): peak = 1553.508 ; gain = 660.031
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 1553.508 ; gain = 660.031
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
A
%s
*synth2)
'
Distributed RAM: Final Mapping Report
h p
x
� 
~
%s
*synth2f
d+------------+-----------------------------------+-----------+----------------------+-------------+
h p
x
� 

%s
*synth2g
e|Module Name | RTL Object                        | Inference | Size (Depth x Width) | Primitives  | 
h p
x
� 
~
%s
*synth2f
d+------------+-----------------------------------+-----------+----------------------+-------------+
h p
x
� 

%s
*synth2g
e|uart_test   | UART_UNIT/FIFO_TX_UNIT/memory_reg | Implied   | 4 x 8                | RAM32M x 4  | 
h p
x
� 

%s
*synth2g
e+------------+-----------------------------------+-----------+----------------------+-------------+

h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 1553.508 ; gain = 660.031
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:22 ; elapsed = 00:00:24 . Memory (MB): peak = 1553.508 ; gain = 660.031
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:22 ; elapsed = 00:00:24 . Memory (MB): peak = 1553.508 ; gain = 660.031
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:22 ; elapsed = 00:00:24 . Memory (MB): peak = 1553.508 ; gain = 660.031
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:22 ; elapsed = 00:00:24 . Memory (MB): peak = 1553.508 ; gain = 660.031
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:22 ; elapsed = 00:00:24 . Memory (MB): peak = 1553.508 ; gain = 660.031
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:22 ; elapsed = 00:00:24 . Memory (MB): peak = 1553.508 ; gain = 660.031
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|      |Cell     |Count |
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|1     |BUFG     |     1|
h px� 
4
%s*synth2
|2     |CARRY4   |    12|
h px� 
4
%s*synth2
|3     |LUT1     |    21|
h px� 
4
%s*synth2
|4     |LUT2     |     2|
h px� 
4
%s*synth2
|5     |LUT3     |    48|
h px� 
4
%s*synth2
|6     |LUT4     |    33|
h px� 
4
%s*synth2
|7     |LUT5     |    10|
h px� 
4
%s*synth2
|8     |LUT6     |    14|
h px� 
4
%s*synth2
|9     |RAM32X1D |     2|
h px� 
4
%s*synth2
|10    |FDCE     |    66|
h px� 
4
%s*synth2
|11    |FDPE     |     3|
h px� 
4
%s*synth2
|12    |IBUF     |     3|
h px� 
4
%s*synth2
|13    |OBUF     |    12|
h px� 
4
%s*synth2
|14    |OBUFT    |     8|
h px� 
4
%s*synth2
+------+---------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:22 ; elapsed = 00:00:24 . Memory (MB): peak = 1553.508 ; gain = 660.031
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
a
%s
*synth2I
GSynthesis finished with 0 errors, 0 critical warnings and 17 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:16 ; elapsed = 00:00:23 . Memory (MB): peak = 1553.508 ; gain = 560.305
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:23 ; elapsed = 00:00:25 . Memory (MB): peak = 1553.508 ; gain = 660.031
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0022

1553.5082
0.000Z17-268h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
14Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1553.5082
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2^
\  A total of 2 instances were transformed.
  RAM32X1D => RAM32X1D (RAMD32(x2)): 2 instances
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

b36042bfZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
432
302
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:272

00:00:292

1553.5082

1059.793Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0012

1553.5082
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2Q
OC:/Awork/y3s1/HWSynLab/project/testuart16/testuart16.runs/synth_1/uart_test.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2]
[report_utilization -file uart_test_utilization_synth.rpt -pb uart_test_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Wed Dec  4 15:52:46 2024Z17-206h px� 


End Record