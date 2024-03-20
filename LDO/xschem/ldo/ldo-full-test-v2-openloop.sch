v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -60 -40 -60 -20 {
lab=vin}
N -470 20 -470 40 {
lab=GND}
N -470 -180 -330 -180 {
lab=ref}
N -470 -180 -470 -40 {
lab=ref}
N 50 -180 140 -180 {
lab=op_out}
N 280 -150 280 -130 { lab=#net1}
N 280 100 280 120 { lab=#net2}
N 280 -180 380 -180 { lab=vin}
N 280 80 280 90 { lab=#net2}
N 280 90 280 100 { lab=#net2}
N 140 -180 240 -180 { lab=op_out}
N 280 -280 280 -210 {
lab=vin}
N 380 -280 380 -180 {
lab=vin}
N 280 -130 280 -100 {
lab=#net1}
N 280 -40 280 0 {
lab=#net3}
N 280 120 280 150 {
lab=#net2}
N 280 -360 280 -280 {
lab=vin}
N -40 -360 275 -360 {
lab=vin}
N 275 -360 280 -360 {
lab=vin}
N 280 -140 370 -140 {
lab=#net1}
N 280 60 280 80 {
lab=#net2}
N 280 210 280 240 {
lab=GND}
N -280 -210 -280 110 {
lab=#net4}
N -280 -210 -150 -210 {
lab=#net4}
N 120 -380 120 -360 {
lab=vin}
N 220 -70 260 -70 {
lab=GND}
N 220 180 260 180 {
lab=GND}
N 120 240 120 260 {
lab=GND}
N 220 -70 220 180 {
lab=GND}
N 220 180 220 240 {
lab=GND}
N 380 -360 380 -280 {
lab=vin}
N 280 -360 380 -360 {
lab=vin}
N -330 -180 -150 -180 {
lab=ref}
N 140 110 280 110 {
lab=#net2}
N -280 110 -230 110 {
lab=#net4}
N -170 110 140 110 {
lab=#net2}
N 430 -140 450 -140 {
lab=out}
N -40 -360 -40 -340 {
lab=vin}
N -40 -280 -40 -250 {
lab=#net5}
N -40 -250 -40 -230 {
lab=#net5}
N 40 -180 50 -180 {
lab=op_out}
N -60 -120 -60 -100 {
lab=#net6}
N -20 -140 -20 240 {
lab=GND}
N -20 240 280 240 {
lab=GND}
N -280 -30 -270 -30 {
lab=#net4}
N -210 -30 -200 -30 {
lab=#net7}
N -150 -180 -100 -200 {
lab=ref}
N -150 -210 -100 -160 {
lab=#net4}
C {devices/isource.sym} -60 -70 2 0 {name=I1 value=100u
}
C {devices/gnd.sym} 120 260 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -470 40 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -470 -10 0 0 {name=V1 value=1.25}
C {devices/lab_pin.sym} -400 -180 1 0 {name=l3 sig_type=std_logic lab=ref}
C {devices/lab_pin.sym} 120 -380 2 0 {name=l4 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} 145 -180 1 0 {name=l12 sig_type=std_logic lab=op_out

}
C {symbols/pfet_03v3.sym} 260 -180 0 0 {name=M1
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
C {symbols/ppolyf_u.sym} 280 -70 0 0 {name=R1
W=1e-6
L=164e-6
model=ppolyf_u_2k
spiceprefix=X
m=1}
C {symbols/ppolyf_u.sym} 280 180 0 0 {name=R2
W=1e-6
L=100e-6
model=ppolyf_u_2k
spiceprefix=X
m=1}
C {devices/vsource.sym} 280 30 0 0 {name=v4 value=0}
C {devices/iopin.sym} 450 -140 0 0 {name=p2 lab=out}
C {devices/vsource.sym} -170 -30 3 0 {name=vt value=0}
C {devices/vsource.sym} 400 -140 3 0 {name=v2 value=0}
C {devices/vsource.sym} -40 -310 0 0 {name=v5 value=0}
C {/workspaces/DC23-LTC2/LDO/xschem/ota-ldo/ota-ldo-v2.sym} -40 -180 0 0 {name=x1}
C {devices/res.sym} -200 110 1 0 {name=R3
value=1G
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} -240 -30 3 0 {name=C2
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -140 -30 3 0 {name=l5 lab=GND}
C {devices/code.sym} -961.25 -921.875 0 0 {name=MODELS
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
C {devices/code_shown.sym} -1301.25 -691.875 0 0 {name=NGSPICE
only_toplevel=true
spice_ignore=false
value="
.param R=33k
R10 out 0 \{R\}
*IL out 0 PWL(0 0.1m 10u 0.1m 20u 10m 30u 10m)
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


*Stability_Analysis (openloop)
.control
reset
alter Vs AC=0
alter Vt AC =1
ac dec 100 1 1G
let phase_val = 180/PI*cph(out)
plot phase_val vdb(out)
meas ac pm FIND phase_val WHEN vdb(out)=0
*plot (180/pi)*vp(out)
*let gm0=@m.xm0.m0[gm]
*let Zout=(1.5)/(gm0*v(op_out))
*let Zout2=v(out)/gm0
*plot vdb(Zout2)
*wrdata /foss/designs/LDO_Design/data/data_PSRR.dat vdb(out)


op
print @m.x1.xm8.m0[vgs]-@m.x1.xm8.m0[vth]
print @m.x1.xm8.m0[vds]
print @m.x1.xm8.m0[id]
print **************
print @m.x1.xm7.m0[vgs]-@m.x1.xm7.m0[vth]
print @m.x1.xm7.m0[vds]
print @m.x1.xm7.m0[id]
print **************
print @m.x1.xm6.m0[vgs]-@m.x1.xm6.m0[vth]
print @m.x1.xm6.m0[vds]
print @m.x1.xm6.m0[gm]
print @m.x1.xm6.m0[gm]/@m.x1.xm6.m0[id]
print **************
print @m.x1.xm5.m0[vgs]-@m.x1.xm5.m0[vth]
print @m.x1.xm5.m0[vds]
print @m.x1.xm5.m0[id]
print **************
print @m.x1.xm1.m0[vgs]-@m.x1.xm1.m0[vth]
print @m.x1.xm1.m0[vds]
print @m.x1.xm1.m0[id]
print @m.x1.xm1.m0[gm]
print @m.x1.xm1.m0[gm]/@m.x1.xm1.m0[id]
print **************
print @m.x1.xm2.m0[vgs]-@m.x1.xm2.m0[vth]
print @m.x1.xm2.m0[vds]
print @m.x1.xm2.m0[id]
print @m.x1.xm2.m0[gm]
print @m.x1.xm2.m0[gm]/@m.x1.xm2.m0[id]
print **************
print @m.x1.xm3.m0[vgs]-@m.x1.xm3.m0[vth]
print @m.x1.xm3.m0[vds]
print @m.x1.xm3.m0[id]
print **************
print @m.x1.xm4.m0[vgs]-@m.x1.xm4.m0[vth]
print @m.x1.xm4.m0[vds]
print @m.x1.xm4.m0[id]

print v(op_out)
print v(out)

.endc


"}
C {devices/lab_pin.sym} -60 -20 3 0 {name=l6 sig_type=std_logic lab=vin}
