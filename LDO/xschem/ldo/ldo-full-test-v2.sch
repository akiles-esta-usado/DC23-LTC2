v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 0 -120 0 -100 {
lab=GND}
N 0 -280 0 -180 {
lab=#net1}
N 0 -280 30 -280 {
lab=#net1}
N -110 -110 -110 -90 {
lab=GND}
N -110 -310 30 -310 {
lab=ref}
N -110 -310 -110 -170 {
lab=ref}
N 410 -310 500 -310 {
lab=op_out}
N 640 -280 640 -260 { lab=#net2}
N 640 -30 640 -10 { lab=pos}
N 640 -310 740 -310 { lab=vin}
N 640 -50 640 -40 { lab=pos}
N 640 -40 640 -30 { lab=pos}
N 500 -310 600 -310 { lab=op_out}
N 640 -410 640 -340 {
lab=vin}
N 740 -410 740 -310 {
lab=vin}
N 640 -260 640 -230 {
lab=#net2}
N 640 -170 640 -130 {
lab=#net3}
N 640 -10 640 20 {
lab=pos}
N 640 -490 640 -410 {
lab=vin}
N 320 -490 635 -490 {
lab=vin}
N 635 -490 640 -490 {
lab=vin}
N 640 -270 730 -270 {
lab=#net2}
N 640 -70 640 -50 {
lab=pos}
N 640 80 640 110 {
lab=GND}
N 80 -340 80 -20 {
lab=#net4}
N 80 -340 210 -340 {
lab=#net4}
N 480 -510 480 -490 {
lab=vin}
N 580 -200 620 -200 {
lab=GND}
N 580 50 620 50 {
lab=GND}
N 320 110 640 110 {
lab=GND}
N 480 110 480 130 {
lab=GND}
N 580 -200 580 50 {
lab=GND}
N 580 50 580 110 {
lab=GND}
N 740 -490 740 -410 {
lab=vin}
N 640 -490 740 -490 {
lab=vin}
N 30 -310 210 -310 {
lab=ref}
N 500 -20 640 -20 {
lab=pos}
N 80 -20 130 -20 {
lab=#net4}
N 190 -20 500 -20 {
lab=pos}
N 110 -280 210 -280 {
lab=#net1}
N 30 -280 110 -280 {
lab=#net1}
N 790 -270 810 -270 {
lab=out}
N 320 -130 320 110 {
lab=GND}
N 320 -240 320 -130 {
lab=GND}
N 320 -490 320 -470 {
lab=vin}
N 320 -410 320 -380 {
lab=#net5}
N 320 -240 340 -270 {
lab=GND}
N 210 -280 300 -250 {
lab=#net1}
N 320 -380 320 -360 {
lab=#net5}
N 210 -340 260 -290 {
lab=#net4}
N 210 -310 260 -330 {
lab=ref}
N 400 -310 410 -310 {
lab=op_out}
C {devices/isource.sym} 0 -150 2 0 {name=I1 value=100u
}
C {devices/gnd.sym} 0 -100 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} 480 130 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -110 -90 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -110 -140 0 0 {name=V1 value=1.25}
C {devices/code.sym} -581.25 -811.875 0 0 {name=MODELS
only_toplevel=true
place=header
format="tcleval( @value )"
value="
.include $env(PDK_ROOT)/$env(PDK)/libs.tech/ngspice/design.ngspice
.lib $env(PDK_ROOT)/$env(PDK)/libs.tech/ngspice/sm141064.ngspice typical
.lib $env(PDK_ROOT)/$env(PDK)/libs.tech/ngspice/sm141064.ngspice mimcap_statistical
.lib $env(PDK_ROOT)/$env(PDK)/libs.tech/ngspice/sm141064.ngspice cap_mim
.lib $env(PDK_ROOT)/$env(PDK)/libs.tech/ngspice/sm141064.ngspice res_typical
"}
C {devices/lab_pin.sym} -40 -310 1 0 {name=l3 sig_type=std_logic lab=ref}
C {devices/lab_pin.sym} 480 -510 2 0 {name=l4 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 505 -310 1 0 {name=l12 sig_type=std_logic lab=op_out

}
C {symbols/pfet_03v3.sym} 620 -310 0 0 {name=M1
L=0.5u
W=10u
nf=1
m=900
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/ppolyf_u.sym} 640 -200 0 0 {name=R1
W=1e-6
L=164e-6
model=ppolyf_u_2k
spiceprefix=X
m=1}
C {symbols/ppolyf_u.sym} 640 50 0 0 {name=R2
W=1e-6
L=100e-6
model=ppolyf_u_2k
spiceprefix=X
m=1}
C {devices/vsource.sym} 640 -100 0 0 {name=v4 value=0}
C {devices/iopin.sym} 810 -270 0 0 {name=p2 lab=out}
C {devices/lab_pin.sym} 495 -20 1 0 {name=l5 sig_type=std_logic lab=pos

}
C {devices/vsource.sym} 160 -20 3 0 {name=vt value=0}
C {devices/vsource.sym} 760 -270 3 0 {name=v2 value=0}
C {devices/vsource.sym} 320 -440 0 0 {name=v5 value=0}
C {/workspaces/DC23-LTC2/LDO/xschem/ota-ldo/ota-ldo-v2.sym} 320 -310 0 0 {name=x1}
C {devices/code_shown.sym} -921.25 -581.875 0 0 {name=NGSPICE1
only_toplevel=true
spice_ignore=false
value="
.param R=33
R10 out 0 \{R\}
IL out 0 PWL(0 0.1m 10u 0.1m 20u 10m 30u 10m)
CL out 0 10u

.param iref = 100u
.param vdd  = 5
.param vss  = 0.0
.param vcm  = 3
.param vac  = 60m
.param w857 = 10u
.param l857 = 1u
.param m857 = 1
.param wpar = 30u
.param lpar = 4u
.param mpar = 4
.param w34  = 20u
.param l34  = 1u
.param m34  = 3
.param w6   = 100u
.param l6   = 0.8u
.param m6   = 2

.param m5   = 7
.param m7   = 10


Vs vin 0 5

.nodeset v(out)=0
.nodeset v(x1.pos)=0

*TRANSIENT
.control
save all
tran 1ns 200us
let gds = @x1.xm2.m0[gds]
print ic
plot gds
plot v(out) v(ref) v(pos) v(vin)
plot i(v5)
plot v(op_out)
*plot v(op_out)
*plot v(out)
*plot i(out)
*plot i(v3)*v(vin)
.endc

*supply_sweep
.control
reseet
alter IL 0
dc Vs 6 0 -0.1
plot v(vin) v(out)
meas DC vldo_sup_4_6 FIND v(out) AT=4.6
meas DC vldo_nom FIND v(out) AT=5
meas DC vldo_sup_5_4 FIND v(out) AT=5.4
let line_reg = abs((vldo_sup_5_4-vldo_sup_4_6)/0.8)
print line_reg
meas DC vin WHEN v(out)=3.2982
let dropout = vin-3.2982
print dropout
.endc

*PSRR_Analysis
.control
reset
alter Vs AC =1
alter Vt AC=0
ac dec 100 1 1G
plot vdb(out)
let phase_val = 180/PI*cph(out)
plot phase_val
*plot (180/pi)*vp(out)
*let gm0=@m.xm0.m0[gm]
*let Zout=(1.5)/(gm0*v(op_out))
*let Zout2=v(out)/gm0
*plot vdb(Zout2)
*wrdata /foss/designs/LDO_Design/data/data_PSRR.dat vdb(out)
.endc

**Load_Transient
.control
reset
alter IL 50u
alter R10 3600k
tran 0.1u 100u
meas TRAN V_ldo_100u FIND v(out) AT=5u
meas TRAN V_ldo_10m FIND v(out) AT=100u
let load_reg= V_ldo_100u-V_ldo_10m
let load_current =(-1*i(Vs)-131.8e-6)
print load_reg
plot i(v2) v(out)-3.3
.endc

.control
alter R10 36k
reset
alter @IL[pwl]=[ 0 0 10u 0 20u 0 30u 0 ]
alter @Vs[pulse]=[ 5 4 50u 1u 1u 10u 100u ]
alter IL 0
tran 0.1u 100u
plot v(vin) v(out)
.endc
"}
