v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 260 -300 260 -280 {
lab=GND}
N 260 -460 260 -360 {
lab=#net1}
N 260 -460 290 -460 {
lab=#net1}
N 150 -290 150 -270 {
lab=GND}
N 150 -490 290 -490 {
lab=ref}
N 150 -490 150 -350 {
lab=ref}
N 670 -490 760 -490 {
lab=op_out}
N 900 -460 900 -440 { lab=#net2}
N 900 -210 900 -190 { lab=pos}
N 900 -490 1000 -490 { lab=vin}
N 900 -230 900 -220 { lab=pos}
N 900 -220 900 -210 { lab=pos}
N 760 -490 860 -490 { lab=op_out}
N 900 -590 900 -520 {
lab=vin}
N 1000 -590 1000 -490 {
lab=vin}
N 900 -440 900 -410 {
lab=#net2}
N 900 -350 900 -310 {
lab=#net3}
N 900 -190 900 -160 {
lab=pos}
N 900 -670 900 -590 {
lab=vin}
N 580 -670 895 -670 {
lab=vin}
N 895 -670 900 -670 {
lab=vin}
N 900 -450 990 -450 {
lab=#net2}
N 900 -250 900 -230 {
lab=pos}
N 900 -100 900 -70 {
lab=GND}
N 340 -520 340 -200 {
lab=#net4}
N 340 -520 470 -520 {
lab=#net4}
N 740 -690 740 -670 {
lab=vin}
N 840 -380 880 -380 {
lab=GND}
N 840 -130 880 -130 {
lab=GND}
N 580 -70 900 -70 {
lab=GND}
N 740 -70 740 -50 {
lab=GND}
N 840 -380 840 -130 {
lab=GND}
N 840 -130 840 -70 {
lab=GND}
N 1000 -670 1000 -590 {
lab=vin}
N 900 -670 1000 -670 {
lab=vin}
N 290 -490 470 -490 {
lab=ref}
N 760 -200 900 -200 {
lab=pos}
N 340 -200 390 -200 {
lab=#net4}
N 450 -200 760 -200 {
lab=pos}
N 370 -460 470 -460 {
lab=#net1}
N 290 -460 370 -460 {
lab=#net1}
N 1050 -450 1070 -450 {
lab=out}
N 580 -310 580 -70 {
lab=GND}
N 580 -420 580 -310 {
lab=GND}
N 580 -670 580 -650 {
lab=vin}
N 580 -590 580 -560 {
lab=#net5}
C {devices/isource.sym} 260 -330 2 0 {name=I1 value=3u
}
C {devices/gnd.sym} 260 -280 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} 740 -50 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 150 -270 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 150 -320 0 0 {name=V1 value=1.25}
C {devices/code.sym} -321.25 -991.875 0 0 {name=MODELS
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
C {devices/code_shown.sym} -661.25 -761.875 0 0 {name=NGSPICE
only_toplevel=true
format="tcleval( @value )"
spice_ignore=false
value="
.param R=66k
R10 out 0 \{R\}
IL out 0 PWL(0 0.1m 10u 0.1m 20u 10m 30u 10m)
*CL out 0 10p

Vs vin 0 PULSE(5 5 50u 20u 1u 100u 100u)

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
*plot v(op_out)
*plot v(out)
*plot i(out)
*plot i(v3)*v(vin)
.endc



*SUPPLY SWEEP
.control
dc Vs 4 0 -0.01
plot v(out) v(ref) v(vin)
*plot v(x1.op_out)
*plot i(v.x1.v4)
.endc

*Stability_Analysis (openloop)
.control
alter Vs AC=0
alter Vt AC =1
ac dec 100 1 1G
plot vdb(out)
let phase_val = 180/PI*cph(out)
plot phase_val
meas ac pm FIND phase_val WHEN vdb(out)=0
*plot (180/pi)*vp(out)
*let gm0=@m.xm0.m0[gm]
*let Zout=(1.5)/(gm0*v(op_out))
*let Zout2=v(out)/gm0
*plot vdb(Zout2)
*wrdata /foss/designs/LDO_Design/data/data_PSRR.dat vdb(out)
.endc

*PSRR_Analysis
.control
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
alter @IL[pwl]=[ 0 0 10u 0 20u 0 30u 0 ]
alter @Vs[pulse]=[4 3.3 50u 1u 1u 10u 100u]
alter IL 0
tran 0.1u 100u
plot v(vin) v(out)
.endc
"}
C {devices/lab_pin.sym} 220 -490 1 0 {name=l3 sig_type=std_logic lab=ref}
C {devices/lab_pin.sym} 740 -690 2 0 {name=l4 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 765 -490 1 0 {name=l12 sig_type=std_logic lab=op_out

}
C {symbols/pfet_03v3.sym} 880 -490 0 0 {name=M1
L=0.3u
W=10u
nf=1
m=800
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/ppolyf_u.sym} 900 -380 0 0 {name=R1
W=1e-6
L=164e-6
model=ppolyf_u_2k
spiceprefix=X
m=1}
C {symbols/ppolyf_u.sym} 900 -130 0 0 {name=R2
W=1e-6
L=100e-6
model=ppolyf_u_2k
spiceprefix=X
m=1}
C {devices/vsource.sym} 900 -280 0 0 {name=v4 value=0}
C {devices/iopin.sym} 1070 -450 0 0 {name=p2 lab=out}
C {devices/lab_pin.sym} 755 -200 1 0 {name=l5 sig_type=std_logic lab=pos

}
C {/workspaces/DC23-LTC2/LDO/xschem/ota-ldo/ota-ldo.sym} 560 -490 0 0 {name=X1}
C {devices/vsource.sym} 420 -200 3 0 {name=vt value=0}
C {devices/vsource.sym} 1020 -450 3 0 {name=v2 value=0}
C {devices/vsource.sym} 580 -620 0 0 {name=v5 value=0}
