v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 200 -160 200 -140 {
lab=GND}
N 200 -320 200 -220 {
lab=#net1}
N 200 -320 230 -320 {
lab=#net1}
N 90 -150 90 -130 {
lab=GND}
N 810 -600 810 -580 {
lab=GND}
N 90 -350 230 -350 {
lab=ref}
N 90 -350 90 -210 {
lab=ref}
N 680 -680 810 -680 {
lab=vin}
N 680 -680 680 -550 {
lab=vin}
N 520 -470 520 -420 {
lab=vin}
N 610 -350 700 -350 {
lab=op_out}
N 840 -320 840 -300 { lab=out}
N 840 -70 840 -50 { lab=pos}
N 840 -350 940 -350 { lab=vin}
N 840 -90 840 -80 { lab=pos}
N 840 -80 840 -70 { lab=pos}
N 700 -350 800 -350 { lab=op_out}
N 840 -450 840 -380 {
lab=vin}
N 940 -450 940 -350 {
lab=vin}
N 840 -300 840 -270 {
lab=out}
N 840 -210 840 -170 {
lab=#net2}
N 840 -50 840 -20 {
lab=pos}
N 840 -530 840 -450 {
lab=vin}
N 520 -530 520 -470 {
lab=vin}
N 520 -530 835 -530 {
lab=vin}
N 835 -530 840 -530 {
lab=vin}
N 840 -310 930 -310 {
lab=out}
N 840 -110 840 -90 {
lab=pos}
N 840 40 840 70 {
lab=GND}
N 280 -380 280 -60 {
lab=#net3}
N 280 -380 410 -380 {
lab=#net3}
N 680 -550 680 -530 {
lab=vin}
N 780 -240 820 -240 {
lab=GND}
N 780 10 820 10 {
lab=GND}
N 520 70 840 70 {
lab=GND}
N 520 -280 520 70 {
lab=GND}
N 680 70 680 90 {
lab=GND}
N 780 -240 780 10 {
lab=GND}
N 780 10 780 70 {
lab=GND}
N 940 -530 940 -450 {
lab=vin}
N 840 -530 940 -530 {
lab=vin}
N 230 -350 410 -350 {
lab=ref}
N 700 -60 840 -60 {
lab=pos}
N 280 -60 330 -60 {
lab=#net3}
N 390 -60 700 -60 {
lab=pos}
N 310 -320 410 -320 {
lab=#net1}
N 210 -1060 270 -1060 {
lab=#net4}
N 200 -1060 210 -1060 {
lab=#net4}
N 160 -1030 160 -1000 {
lab=#net4}
N 160 -1000 220 -1000 {
lab=#net4}
N 220 -1060 220 -1000 {
lab=#net4}
N 160 -1130 160 -1090 {
lab=#net5}
N 160 -1130 310 -1130 {
lab=#net5}
N 310 -1130 310 -1100 {
lab=#net5}
N 310 -1100 310 -1090 {
lab=#net5}
N 160 -1000 160 -960 {
lab=#net4}
N 100 -830 120 -830 {
lab=#net6}
N 100 -880 100 -830 {
lab=#net6}
N 100 -880 160 -880 {
lab=#net6}
N 160 -880 160 -870 {
lab=#net6}
N 160 -870 160 -860 {
lab=#net6}
N 160 -900 160 -880 {
lab=#net6}
N 160 -800 160 -760 {
lab=GND}
N 160 -780 210 -780 {
lab=GND}
N 210 -830 210 -780 {
lab=GND}
N 160 -830 210 -830 {
lab=GND}
N 160 -760 160 -740 {
lab=GND}
N 310 -1060 380 -1060 {
lab=#net5}
N 380 -1110 380 -1060 {
lab=#net5}
N 310 -1110 380 -1110 {
lab=#net5}
N 100 -1060 160 -1060 {
lab=#net5}
N 100 -1100 100 -1060 {
lab=#net5}
N 100 -1100 160 -1100 {
lab=#net5}
N 310 -1030 310 -500 {
lab=#net7}
N 300 -1130 680 -1130 {
lab=#net5}
N 230 -320 310 -320 {
lab=#net1}
C {devices/isource.sym} 200 -190 2 0 {name=I1 value=3u
}
C {devices/gnd.sym} 200 -140 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} 680 90 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 90 -130 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 90 -180 0 0 {name=V1 value=1.25}
C {devices/code.sym} 68.75 -571.875 0 0 {name=MODELS
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
C {devices/gnd.sym} 810 -580 0 0 {name=l9 lab=GND}
C {devices/code_shown.sym} -661.25 -761.875 0 0 {name=NGSPICE
only_toplevel=true
format="tcleval( @value )"
spice_ignore=false
value="
.param R=66k
R10 out 0 \{R\}
IL out 0 PWL(0 0.1m 10u 0.1m 20u 10m 30u 10m)
*CL out 0 10p

Vs vin 0 PULSE(3.4 3.4 50u 20u 1u 100u 100u)

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
plot load_current v(out)-3.3
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
C {devices/lab_pin.sym} 160 -350 1 0 {name=l3 sig_type=std_logic lab=ref}
C {devices/lab_pin.sym} 680 -620 2 0 {name=l4 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 705 -350 1 0 {name=l12 sig_type=std_logic lab=op_out

}
C {symbols/pfet_03v3.sym} 820 -350 0 0 {name=M1
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
C {symbols/ppolyf_u.sym} 840 -240 0 0 {name=R1
W=1e-6
L=164e-6
model=ppolyf_u_2k
spiceprefix=X
m=1}
C {symbols/ppolyf_u.sym} 840 10 0 0 {name=R2
W=1e-6
L=100e-6
model=ppolyf_u_2k
spiceprefix=X
m=1}
C {devices/vsource.sym} 840 -140 0 0 {name=v4 value=0}
C {devices/iopin.sym} 930 -310 0 0 {name=p2 lab=out}
C {devices/lab_pin.sym} 695 -60 1 0 {name=l5 sig_type=std_logic lab=pos

}
C {/workspaces/DC23-LTC2/LDO/xschem/ota-ldo/ota-ldo.sym} 500 -350 0 0 {name=X1}
C {devices/vsource.sym} 360 -60 3 0 {name=vt value=0}
C {devices/vsource.sym} 810 -630 0 0 {name=V3 value=3.5 savecurrent=false}
C {symbols/pfet_03v3.sym} 180 -1060 0 1 {name=M2
L=1.5u
W=30u
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
C {symbols/pfet_03v3.sym} 290 -1060 0 0 {name=M3
L=1.5u
W=0.9u
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
C {devices/res.sym} 160 -930 0 0 {name=R3
value=50k
footprint=1206
device=resistor
m=5}
C {symbols/nfet_03v3.sym} 140 -830 0 0 {name=M4
L=1u
W=2u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
5}
C {devices/gnd.sym} 160 -740 0 0 {name=l6 lab=GND}
