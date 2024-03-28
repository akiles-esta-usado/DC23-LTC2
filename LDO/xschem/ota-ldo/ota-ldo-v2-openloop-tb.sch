v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 80 0 170 0 {
lab=vout}
N 170 90 170 120 {
lab=vss}
N 20 40 20 50 {
lab=vss}
N 0 -60 -0 -50 {
lab=vdd}
N -100 20 -100 60 {
lab=vcm}
N -100 120 -100 150 {
lab=vss}
N -190 -20 -150 -20 {
lab=vin}
N -170 -140 -100 -140 {
lab=#net1}
N -40 -140 170 -140 {
lab=#net2}
N -150 -20 -90 -20 {
lab=vin}
N -260 -140 -170 -140 {
lab=#net1}
N -270 -140 -260 -140 {
lab=#net1}
N -270 -140 -270 -20 {
lab=#net1}
N -270 -20 -250 -20 {
lab=#net1}
N -290 -20 -270 -20 {
lab=#net1}
N -20 140 -20 150 {
lab=vdd}
N -380 -20 -350 -20 {
lab=vcm}
N -340 160 -340 180 {
lab=#net3}
N -340 240 -340 260 {
lab=vcm}
N -340 80 -340 100 {
lab=vin}
N -480 230 -480 260 {
lab=vss}
N -480 140 -480 170 {
lab=vdd}
N -560 230 -560 260 {
lab=GND}
N -560 140 -560 170 {
lab=vss}
N 170 -140 170 -100 {
lab=#net2}
N 170 -40 170 -0 {
lab=vout}
N 170 0 170 30 {
lab=vout}
N -20 60 -20 80 {
lab=#net4}
N -100 20 -90 20 {
lab=vcm}
N -90 -20 -60 -20 {
lab=vin}
N -90 20 -60 20 {
lab=vcm}
C {devices/code.sym} -400 -270 0 0 {name=SIMULATION only_toplevel=false 

value="

.include ~/.volare/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib ~/.volare/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.lib ~/.volare/gf180mcuD/libs.tech/ngspice/sm141064.ngspice mimcap_statistical
*.lib ~/.volare/gf180mcuD/libs.tech/ngspice/sm141064_mim.ngspice cap_mim_new
.lib ~/.volare/gf180mcuD/libs.tech/ngspice/sm141064.ngspice cap_mim
.lib ~/.volare/gf180mcuD/libs.tech/ngspice/sm141064.ngspice res_typical

* Circuit Parameters
.param iref = 10u
.param vdd  = 5
.param vss  = 0.0
.param vcm  = 1.25
.param vac  = 60m
.param w857 = 5u
.param l857 = 1u
.param m857 = 1
.param wpar = 10u
.param lpar = 1u
.param mpar = 1
.param w34  = 10u
.param l34  = 1u
.param m34  = 1
.param w6   = 100u
.param l6   = 1u
.param m6   = 1

.param m5   = 1
.param m7   = 5

* Include Models
*.lib ~/skywater/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/corners/sky130.lib TT

* OP Parameters & Singals to save
.save all


*Simulation
.control
  set color0 = white
  
  ac dec 100 1 10G
  setplot ac1
  meas ac GBW when vdb(vout)=0
  meas ac DCG find vdb(vout) at=1
  meas ac PM find vp(vout) when vdb(vout)=0
  print PM*180/PI
  meas ac GM find vdb(vout) when vp(vout)=0
  plot vdb(vout) \{vp(vout)*180/PI\}
  write tb_opamp_openloop_ac1.raw

  reset
  op
  setplot op1
  unset filetype
  write tb_opamp_openloop.raw

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

print v(vout)
print v(vin)

.endc

.end
"}
C {devices/isource.sym} -20 110 2 0 {name=I0 value=DC\{iref\}}
C {devices/vsource.sym} -340 210 0 0 {name=V1 value="sin(0 \{vac\} 1Meg) dc 0 ac 1" savecurrent=false}
C {devices/capa.sym} 170 60 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 170 120 0 0 {name=p1 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 20 50 3 0 {name=p2 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 0 -60 1 0 {name=p3 sig_type=std_logic lab=vdd}
C {devices/vsource.sym} -480 200 0 0 {name=V2 value=DC\{vdd\} savecurrent=false}
C {devices/res.sym} -220 -20 1 0 {name=R2
value=1G
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -320 -20 1 0 {name=R3
value=500
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} -100 150 0 0 {name=p4 sig_type=std_logic lab=vss}
C {devices/vsource.sym} -100 90 0 0 {name=V3 value=DC\{vcm\} savecurrent=false}
C {devices/res.sym} -70 -140 3 0 {name=R4
value=5k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} -380 -20 0 0 {name=p7 sig_type=std_logic lab=vcm}
C {devices/capa.sym} -340 130 0 0 {name=C3
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -340 260 0 0 {name=p8 sig_type=std_logic lab=vcm}
C {devices/lab_pin.sym} -340 80 0 0 {name=p9 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} -100 -20 0 0 {name=p10 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} -480 260 0 0 {name=p11 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -480 140 0 0 {name=p12 sig_type=std_logic lab=vdd}
C {devices/vsource.sym} -560 200 0 0 {name=V4 value=DC\{vss\} savecurrent=false}
C {devices/lab_pin.sym} -560 140 0 0 {name=p14 sig_type=std_logic lab=vss}
C {devices/gnd.sym} -560 260 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 170 0 2 0 {name=p13 sig_type=std_logic lab=vout}
C {/workspaces/DC23-LTC2/LDO/xschem/ota-ldo/ota-ldo-v2.sym} 0 0 0 0 {name=x1}
C {devices/lab_pin.sym} -90 20 0 0 {name=p15 sig_type=std_logic lab=vcm}
C {devices/vsource.sym} 170 -70 2 0 {name=V5 value=1.75 savecurrent=false}
C {devices/lab_pin.sym} -20 150 0 0 {name=p5 sig_type=std_logic lab=vdd}
