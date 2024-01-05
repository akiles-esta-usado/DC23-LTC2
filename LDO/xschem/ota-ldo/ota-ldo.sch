v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 410 -460 650 -460 {
lab=#net1}
N 530 -450 530 -410 {
lab=#net1}
N 530 -460 530 -450 {
lab=#net1}
N 530 -410 530 -400 {
lab=#net1}
N 370 -400 530 -400 {
lab=#net1}
N 370 -430 370 -400 {
lab=#net1}
N 370 -400 370 -350 {
lab=#net1}
N 690 -430 690 -350 {
lab=#net2}
N 370 -290 370 -250 {
lab=#net3}
N 370 -250 690 -250 {
lab=#net3}
N 690 -290 690 -250 {
lab=#net3}
N 370 -530 370 -490 {
lab=avdd}
N 370 -530 690 -530 {
lab=avdd}
N 690 -530 690 -490 {
lab=avdd}
N 290 -460 370 -460 {
lab=avdd}
N 290 -530 290 -460 {
lab=avdd}
N 290 -530 370 -530 {
lab=avdd}
N 690 -460 770 -460 {
lab=avdd}
N 770 -530 770 -460 {
lab=avdd}
N 690 -530 770 -530 {
lab=avdd}
N 370 -320 690 -320 {
lab=agnd}
N 510 -250 510 -200 {
lab=#net3}
N 510 -170 590 -170 {
lab=agnd}
N 590 -320 590 -170 {
lab=agnd}
N 590 -170 590 -110 {
lab=agnd}
N 510 -110 590 -110 {
lab=agnd}
N 510 -140 510 -110 {
lab=agnd}
N 590 -110 1030 -110 {
lab=agnd}
N 690 -400 930 -400 {
lab=#net2}
N 970 -370 970 -320 {
lab=out}
N 970 -320 970 -270 {
lab=out}
N 970 -210 970 -110 {
lab=agnd}
N 1030 -240 1030 -110 {
lab=agnd}
N 970 -240 1030 -240 {
lab=agnd}
N 240 -140 240 -110 {
lab=agnd}
N 240 -110 510 -110 {
lab=agnd}
N 240 -170 300 -170 {
lab=agnd}
N 300 -170 300 -110 {
lab=agnd}
N 240 -300 240 -200 {
lab=vb}
N 150 -250 240 -250 {
lab=vb}
N 150 -250 150 -170 {
lab=vb}
N 150 -170 200 -170 {
lab=vb}
N 120 -170 150 -170 {
lab=vb}
N 970 -320 1010 -320 {
lab=out}
N 1010 -320 1100 -320 {
lab=out}
N 970 -530 970 -430 {
lab=avdd}
N 770 -530 970 -530 {
lab=avdd}
N 970 -400 1050 -400 {
lab=avdd}
N 1050 -450 1050 -400 {
lab=avdd}
N 970 -450 1050 -450 {
lab=avdd}
N 960 -320 970 -320 {
lab=out}
N 880 -320 900 -320 {
lab=#net4}
N 810 -320 820 -320 {
lab=#net2}
N 810 -400 810 -320 {
lab=#net2}
C {devices/iopin.sym} 240 -300 3 0 {name=p7 lab=vb}
C {devices/lab_pin.sym} 120 -170 0 0 {name=l1 sig_type=std_logic lab=vb}
C {devices/iopin.sym} 520 -530 0 0 {name=p8 lab=avdd}
C {devices/iopin.sym} 510 -110 0 0 {name=p9 lab=agnd}
C {devices/ipin.sym} 330 -320 0 0 {name=p10 lab=neg}
C {devices/ipin.sym} 730 -320 0 1 {name=p11 lab=pos}
C {devices/opin.sym} 1100 -320 0 0 {name=p12 lab=out}
C {devices/lab_pin.sym} 1070 -320 1 0 {name=l2 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 470 -170 0 0 {name=l3 sig_type=std_logic lab=vb}
C {devices/lab_pin.sym} 930 -240 0 0 {name=l4 sig_type=std_logic lab=vb}
C {symbols/cap_mim_2p0fF.sym} 850 -320 3 0 {name=C2
W=50e-6
L=50e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/nfet_03v3.sym} 350 -320 0 0 {name=M1
L=0.5u
W=9u
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
}
C {symbols/pfet_03v3.sym} 390 -460 0 1 {name=M3
L=1.5u
W=1u
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
C {symbols/nfet_03v3.sym} 710 -320 0 1 {name=M2
L=0.5u
W=9u
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
}
C {symbols/pfet_03v3.sym} 670 -460 0 0 {name=M4
L=1.5u
W=1u
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
C {symbols/nfet_03v3.sym} 490 -170 0 0 {name=M7
L=0.7u
W=3u
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
}
C {symbols/nfet_03v3.sym} 220 -170 0 0 {name=M8
L=0.7u
W=3u
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
}
C {symbols/pfet_03v3.sym} 950 -400 0 0 {name=M5
L=0.5u
W=35u
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
C {symbols/nfet_03v3.sym} 950 -240 0 0 {name=M6
L=0.7u
W=36.3u
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
}
C {devices/res.sym} 930 -320 3 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
