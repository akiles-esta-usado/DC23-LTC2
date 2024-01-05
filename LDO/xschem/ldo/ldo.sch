v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 820 -680 820 -630 {
lab=vdd}
N 910 -560 1000 -560 {
lab=op_out}
N 1140 -530 1140 -510 { lab=out}
N 1140 -280 1140 -260 { lab=pos}
N 1140 -560 1240 -560 { lab=vdd}
N 1140 -300 1140 -290 { lab=pos}
N 1140 -290 1140 -280 { lab=pos}
N 1000 -560 1100 -560 { lab=op_out}
N 1140 -660 1140 -590 {
lab=vdd}
N 1240 -660 1240 -560 {
lab=vdd}
N 1140 -510 1140 -480 {
lab=out}
N 1140 -420 1140 -380 {
lab=#net1}
N 1140 -260 1140 -230 {
lab=pos}
N 1140 -740 1140 -660 {
lab=vdd}
N 820 -740 820 -680 {
lab=vdd}
N 820 -740 1135 -740 {
lab=vdd}
N 1135 -740 1140 -740 {
lab=vdd}
N 1140 -520 1230 -520 {
lab=out}
N 1140 -320 1140 -300 {
lab=pos}
N 1140 -170 1140 -140 {
lab=vss}
N 580 -270 1140 -270 {
lab=pos}
N 580 -590 580 -270 {
lab=pos}
N 580 -590 710 -590 {
lab=pos}
N 980 -760 980 -740 {
lab=vdd}
N 1080 -450 1120 -450 {
lab=vss}
N 1080 -200 1120 -200 {
lab=vss}
N 820 -140 1140 -140 {
lab=vss}
N 820 -490 820 -140 {
lab=vss}
N 980 -140 980 -120 {
lab=vss}
N 1080 -450 1080 -200 {
lab=vss}
N 1080 -200 1080 -140 {
lab=vss}
N 1240 -740 1240 -660 {
lab=vdd}
N 1140 -740 1240 -740 {
lab=vdd}
C {devices/iopin.sym} 710 -560 2 0 {name=p6 sig_type=std_logic lab=ref
}
C {devices/code.sym} 318.75 -791.875 0 0 {name=MODELS
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
C {devices/lab_pin.sym} 1005 -560 1 0 {name=l12 sig_type=std_logic lab=op_out

}
C {../ota-ldo/ota-ldo.sym} 800 -560 0 0 {name=X1}
C {symbols/pfet_03v3.sym} 1120 -560 0 0 {name=M1
L=1u
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
C {symbols/ppolyf_u.sym} 1140 -450 0 0 {name=R1
W=1e-6
L=164e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u.sym} 1140 -200 0 0 {name=R2
W=1e-6
L=100e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {devices/vsource.sym} 1140 -350 0 0 {name=v4 value=0}
C {devices/iopin.sym} 1230 -520 0 0 {name=p2 lab=out}
C {devices/iopin.sym} 710 -530 2 0 {name=p3 lab=cur}
C {devices/iopin.sym} 980 -120 0 0 {name=p4 lab=vss}
C {devices/iopin.sym} 980 -760 2 0 {name=p1 lab=vdd}
C {devices/lab_pin.sym} 995 -270 1 0 {name=l1 sig_type=std_logic lab=pos

}
