v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 290 -300 290 -280 {
lab=GND}
N 290 -460 290 -360 {
lab=#net1}
N 290 -460 320 -460 {
lab=#net1}
N 180 -300 180 -280 {
lab=GND}
N 600 -600 600 -580 {
lab=GND}
N 180 -500 320 -500 {
lab=ref}
N 180 -500 180 -360 {
lab=ref}
N 600 -680 600 -660 {
lab=vin}
N 470 -680 600 -680 {
lab=vin}
N 470 -680 470 -550 {
lab=vin}
C {devices/isource.sym} 290 -330 2 0 {name=I1 value=0.1u
}
C {devices/gnd.sym} 290 -280 0 0 {name=l10 lab=GND}
C {devices/gnd.sym} 470 -410 0 0 {name=l1 lab=GND}
C {devices/opin.sym} 620 -480 0 0 {name=p3 lab=out
}
C {devices/gnd.sym} 180 -280 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 180 -330 0 0 {name=V1 value=1.25}
C {devices/code.sym} 188.75 -791.875 0 0 {name=MODELS
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
C {devices/gnd.sym} 600 -580 0 0 {name=l9 lab=GND}
C {devices/vsource.sym} 600 -630 0 0 {name=V3 value=3.5}
C {devices/code_shown.sym} -541.25 -981.875 0 0 {name=NGSPICE
only_toplevel=true
format="tcleval( @value )"
spice_ignore=false
value="
.param R=33000
R10 out 0 \{R\}
*IL out 0 PWL(0 0.1m 10u 0.1m 20u 10m 30u 10m)
CL out 0 100p
.options savecurrents

.nodeset v(out)=0
.nodeset v(x1.pos)=0

*TRANSIENT
.control
save all
tran 1ns 100us
plot v(out) v(ref) v(pos) v(vin)
plot v(op_out)
plot v(out)
plot i(out)
plot i(v3)*v(vin)
.endc

*Stability_Analysis
*.control
*alter IL 0
*alter Vs AC =0
*alter Vt AC=1
*ac dec 10 1 1G
*plot vdb(out)
*plot (180/pi)*vp(out)
*let ph= (180/pi)*vp(out)
*meas ac pm FIND ph WHEN vdb(out)=0
*.endc

*SUPPLY SWEEP
.control
save all
save v(out) v(ref) v(x1.pos) v(vin) v(x1.op_out) i(x1.v4)
dc V3 4 0 -0.01
plot v(out) v(ref) v(x1.pos) v(vin)
*plot v(x1.op_out)
*plot i(v.x1.v4)
.endc

*PSRR_Analysis
.control
save all
alter V3 AC =1
ac dec 100 1 1G
plot vdb(out)
*let gm0=@m.xm0.m0[gm]
*let Zout=(1.5)/(gm0*v(op_out))
*let Zout2=v(out)/gm0
*plot vdb(Zout2)
*wrdata /foss/designs/LDO_Design/data/data_PSRR.dat vdb(out)
.endc


**Load_Transient
*.control
*alter IL 50u
*alter R10 3600k
*tran 0.1u 100u
*meas TRAN V_ldo_100u FIND v(out) AT=5u
*meas TRAN V_ldo_10m FIND v(out) AT=100u
*let load_reg= V_ldo_100u-V_ldo_10m
*let load_current =(-1*i(V3)-131.8e-6)
*print load_reg
*plot load_current v(out)-1.8
*.endc
"}
C {ldo.sym} 470 -480 0 0 {name=x1}
C {devices/lab_pin.sym} 250 -500 1 0 {name=l3 sig_type=std_logic lab=ref}
C {devices/lab_pin.sym} 470 -620 2 0 {name=l4 sig_type=std_logic lab=vin}
