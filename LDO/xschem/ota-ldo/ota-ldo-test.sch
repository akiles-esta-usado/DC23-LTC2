v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -660 -750 -660 -730 { lab=V3V3}
N -660 -670 -660 -650 { lab=GND}
N -670 -420 -670 -400 { lab=GND}
N -670 -500 -670 -480 { lab=#net1}
N -670 -580 -670 -560 { lab=INP}
N -670 -580 -650 -580 { lab=INP}
N -430 -780 -430 -760 { lab=GND}
N -80 -850 -80 -810 { lab=OUT}
N -80 -670 -80 -630 { lab=INM}
N -80 -570 -80 -550 { lab=GND}
N -80 -650 -60 -650 { lab=INM}
N -80 -750 -80 -730 { lab=#net2}
N -160 -850 -80 -850 { lab=OUT}
N -80 -850 190 -850 { lab=OUT}
N -250 -850 -160 -850 {
lab=OUT}
N -810 -820 -540 -820 {
lab=#net3}
N -840 -660 -840 -640 {
lab=GND}
N -840 -820 -840 -720 {
lab=#net3}
N -840 -820 -810 -820 {
lab=#net3}
N -430 -970 -430 -920 {
lab=V3V3}
N -340 -850 -250 -850 {
lab=OUT}
N 170 -850 170 -820 {
lab=OUT}
N 170 -760 170 -740 {
lab=GND}
C {devices/code_shown.sym} -1581.25 -1231.875 0 0 {name=NGSPICE
only_toplevel=true
format="tcleval( @value )"
value="

.include $env(PDK_ROOT)/$env(PDK)/libs.tech/ngspice/design.ngspice
.lib $env(PDK_ROOT)/$env(PDK)/libs.tech/ngspice/sm141064.ngspice typical
.lib $env(PDK_ROOT)/$env(PDK)/libs.tech/ngspice/sm141064.ngspice mimcap_statistical
.lib $env(PDK_ROOT)/$env(PDK)/libs.tech/ngspice/sm141064.ngspice cap_mim

*.options savecurrents
.save all

*.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.param CM_VOLTAGE = 0.9
.param OUTPUT_VOLTAGE = 1
.control

*save all


ac dec 200 10 1000Meg
settype decibel out
plot vdb(out)
wrdata /foss/designs/LDO_Design/data/data_OTAvoutdb.dat vdb(out)
let phase_val = 180/PI*cph(out)
let phase_margin_val = 180 + 180/PI*cph(out)
settype phase phase_val
plot phase_val
wrdata /foss/designs/LDO_Design/data/data_OTAphase_val.dat phase_val
meas ac phase_margin find phase_margin_val when vdb(out)=0
meas ac crossover_freq WHEN vdb(out)=0


let gm1  = @m.x1.xm1.m0[gm]
print gm1

*wrdata /foss/designs/IPD413_2023_HW1_git/data_nmos_gmvgs_VDSp9.dat gmn




let id1  = @m.x1.xm1.m0[gm]
*let id2  = @m.x1.xm2.msky130_fd_pr__nfet_01v8_lvt[id]
*let id3  = @m.x1.xm3.msky130_fd_pr__pfet_01v8_lvt[id]
*let id4  = @m.x1.xm4.msky130_fd_pr__pfet_01v8_lvt[id]
*let id5  = @m.x1.xm5.msky130_fd_pr__pfet_01v8_lvt[id]
*let id6  = @m.x1.xm6.msky130_fd_pr__nfet_01v8_lvt[id]
*let id7  = @m.x1.xm7.msky130_fd_pr__nfet_01v8_lvt[id]
*let id8  = @m.x1.xm8.msky130_fd_pr__nfet_01v8_lvt[id]


*let gm2  = @m.x1.xm2.msky130_fd_pr__nfet_01v8_lvt[gm]
*let gm3  = @m.x1.xm3.msky130_fd_pr__pfet_01v8_lvt[gm]
*let gm4  = @m.x1.xm4.msky130_fd_pr__pfet_01v8_lvt[gm]
let gm5  = @m.x1.xm5.m0[gm]
*let gm6  = @m.x1.xm6.msky130_fd_pr__nfet_01v8_lvt[gm]
*let gm7  = @m.x1.xm7.msky130_fd_pr__nfet_01v8_lvt[gm]
*let gm8  = @m.x1.xm8.msky130_fd_pr__nfet_01v8_lvt[gm]

let gds2 = @m.x1.xm2.m0[gds]
*plot gds
let gds4 = @m.x1.xm4.m0[gds]
let gds5 = @m.x1.xm5.m0[gds]
let gds6 = @m.x1.xm6.m0[gds]


*let vgs1  = @m.x1.xm1.msky130_fd_pr__nfet_01v8_lvt[vgs]
*let vth1  = @m.x1.xm1.msky130_fd_pr__nfet_01v8_lvt[vth]
*let vov1 = vgs1 - vth1
*let vds1  = @m.x1.xm1.msky130_fd_pr__nfet_01v8_lvt[vds]
*let vdsat1  = @m.x1.xm1.msky130_fd_pr__nfet_01v8_lvt[vdsat]

let cgs5  = @m.x1.xm5.m0[cgg]

*@m.xm1.m0[id]
*print v(inp)
*print v(inm)
*print v(out)
let v_offset = v(inp)-v(inm)
*print v_offset

print cgs5
print id1
*print id2
*print id5
*print gm1
*print gm2
*print gm5
*print id7
*print id8
print gm5 
print gm1
print gm1/(gds2+gds4)
print gm5/(gds5+gds6)

*print v(vgs1)
*print v(vth1)
*print v(vov1)
*print v(vds1)
*print v(vdsat1)

write /workspaces/DC23-LTC2/LDO/xschem/ota-ldo/data all

.endc
"}
C {devices/vsource.sym} -660 -700 0 0 {name=V1 value=3.3}
C {devices/gnd.sym} -660 -650 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -660 -750 0 0 {name=l4 sig_type=std_logic lab=V3V3
}
C {devices/vsource.sym} -670 -450 0 0 {name=V2 value=\{CM_VOLTAGE\}}
C {devices/gnd.sym} -670 -400 0 0 {name=l16 lab=GND}
C {devices/vsource.sym} -670 -530 0 0 {name=V3 value="AC 1"}
C {devices/lab_pin.sym} -650 -580 2 0 {name=l18 sig_type=std_logic lab=INP
}
C {devices/lab_pin.sym} -540 -880 0 0 {name=l19 sig_type=std_logic lab=INP
}
C {devices/gnd.sym} -430 -760 0 0 {name=l22 lab=GND}
C {devices/lab_pin.sym} 190 -850 2 0 {name=l23 sig_type=std_logic lab=OUT
}
C {devices/res.sym} -80 -700 0 0 {name=R1
value=10E6
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} -80 -780 0 0 {name=V4 value=\{OUTPUT_VOLTAGE-CM_VOLTAGE\}}
C {devices/capa.sym} -80 -600 0 0 {name=C3
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -80 -550 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -60 -650 0 1 {name=l7 sig_type=std_logic lab=INM
}
C {devices/isource.sym} -840 -690 2 0 {name=I1 value=3u
}
C {devices/gnd.sym} -840 -640 0 0 {name=l10 lab=GND}
C {devices/lab_pin.sym} -540 -850 0 0 {name=l2 sig_type=std_logic lab=INM
}
C {devices/lab_pin.sym} -430 -970 0 0 {name=l5 sig_type=std_logic lab=V3V3
}
C {./ota-ldo.sym} -450 -850 0 0 {name=X1}
C {devices/capa.sym} 170 -790 0 0 {name=C1
m=1
value=2.5p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 170 -740 0 0 {name=l1 lab=GND}
