v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1250 -390 1300 -390 {
lab=g1}
N 1340 -320 1340 -260 {
lab=GND}
N 1340 -390 1420 -390 {
lab=d1}
N 1340 -560 1340 -430 {
lab=d1}
N 1340 -560 1490 -560 {
lab=d1}
N 1340 -360 1340 -320 {
lab=GND}
N 1340 -430 1340 -420 {
lab=d1}
N 1420 -460 1420 -390 {
lab=d1}
N 1340 -460 1420 -460 {
lab=d1}
C {devices/code_shown.sym} 1570 -600 0 0 {name=NGSPICE
only_toplevel=true
value="
vsg d1 g1 dc=1
vsd d1 0 dc=3.3


.control
save all


save @m.xm1.m0[gm]
save @m.xm1.m0[id]


dc vsd 0 3.3 0.2 vsg 0 1.8 0.5
let idn = @m.xm1.m0[id]
let gmn = @m.xm1.m0[gm]
let vthn = @m.xm1.m0[vth]
let vgsn = @m.xm1.m0[vgs]
let vdsatn = @m.xm1.m0[vdsat]
let vov = v(g1) - vthn
let cgs= @m.xm1.m0[cgg]

plot idn
*plot idn vs vov
print vthn
print cgs
*wrdata /foss/designs/IPD413_2023_HW2_git_v2/M3_4/data_id_vds_l1p5_M78.dat idn
*wrdata /foss/designs/IPD413_2023_HW2_git_v2/M3_4/data_id_vds_l1_M78.dat idn
*wrdata /foss/designs/IPD413_2023_HW2_git_v2/M3_4/data_id_vds_lp5_M78.dat idn


.endc
" }
C {devices/ipin.sym} 1250 -390 0 0 {name=p1 lab=g1}
C {devices/iopin.sym} 1490 -560 0 0 {name=p2 lab=d1}
C {devices/gnd.sym} 1340 -260 0 0 {name=l3 lab=GND}
C {symbols/pfet_03v3.sym} 1320 -390 0 0 {name=M1
L=0.7u
*W=227.3m
W=10u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {devices/code.sym} 1198.75 -541.875 0 0 {name=MODELS
only_toplevel=true
place=header
format="tcleval( @value )"
value="
.include $env(PDK_ROOT)/$env(PDK)/libs.tech/ngspice/design.ngspice

.lib $env(PDK_ROOT)/$env(PDK)/libs.tech/ngspice/sm141064.ngspice typical
.lib $env(PDK_ROOT)/$env(PDK)/libs.tech/ngspice/sm141064.ngspice mimcap_statistical
.lib $env(PDK_ROOT)/$env(PDK)/libs.tech/ngspice/sm141064.ngspice cap_mim
.lib $env(PDK_ROOT)/$env(PDK)/libs.tech/ngspice/sm141064.ngspice res_typical
.lib $env(PDK_ROOT)/$env(PDK)/libs.tech/ngspice/sm141064.ngspice bjt_typical
.lib $env(PDK_ROOT)/$env(PDK)/libs.tech/ngspice/sm141064.ngspice moscap_typical

"}
