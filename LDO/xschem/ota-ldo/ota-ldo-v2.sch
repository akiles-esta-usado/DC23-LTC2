v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 120 30 120 60 {
lab=#net1}
N -120 60 120 60 {
lab=#net1}
N -120 30 -120 60 {
lab=#net1}
N 0 60 0 120 {
lab=#net1}
N -370 180 -370 220 {
lab=vss}
N -370 220 -0 220 {
lab=vss}
N -0 180 -0 220 {
lab=vss}
N -330 150 -40 150 {
lab=iref}
N -370 40 -370 120 {
lab=iref}
N -300 100 -300 150 {
lab=iref}
N -300 80 -300 100 {
lab=iref}
N -370 80 -300 80 {
lab=iref}
N -420 150 -370 150 {
lab=vss}
N -420 150 -420 220 {
lab=vss}
N -420 220 -370 220 {
lab=vss}
N 0 150 60 150 {
lab=vss}
N 60 150 60 220 {
lab=vss}
N 0 220 60 220 {
lab=vss}
N -80 -150 20 -150 {
lab=#net2}
N -120 -120 -120 -30 {
lab=#net2}
N -120 -250 60 -250 {
lab=vdd}
N -120 -250 -120 -180 {
lab=vdd}
N -120 -0 120 0 {
lab=vss}
N 20 -150 80 -150 {
lab=#net2}
N 120 -250 120 -180 {
lab=vdd}
N 60 -250 120 -250 {
lab=vdd}
N 120 -120 120 -30 {
lab=#net3}
N 120 -80 370 -80 {
lab=#net3}
N 470 -250 470 -110 {
lab=vdd}
N 120 -250 410 -250 {
lab=vdd}
N 470 -50 470 120 {
lab=vout}
N 470 180 470 220 {
lab=vss}
N 60 220 410 220 {
lab=vss}
N 420 150 430 150 {
lab=iref}
N 380 150 420 150 {
lab=iref}
N 370 -80 430 -80 {
lab=#net3}
N 410 220 470 220 {
lab=vss}
N 410 -250 470 -250 {
lab=vdd}
N 360 0 390 0 {
lab=#net4}
N 270 0 300 0 {
lab=#net3}
N 450 0 470 0 {
lab=vout}
N 270 -80 270 -0 {
lab=#net3}
N -180 0 -160 -0 {
lab=vin_n}
N 160 0 180 0 {
lab=vin_p}
N -150 -150 -120 -150 {
lab=vdd}
N -150 -250 -150 -150 {
lab=vdd}
N -150 -250 -120 -250 {
lab=vdd}
N 120 -150 140 -150 {
lab=vdd}
N 140 -250 140 -150 {
lab=vdd}
N 470 -80 500 -80 {
lab=vdd}
N 500 -250 500 -80 {
lab=vdd}
N 470 -250 500 -250 {
lab=vdd}
N 470 150 480 150 {
lab=vss}
N 480 150 500 150 {
lab=vss}
N 500 150 500 220 {
lab=vss}
N 470 220 500 220 {
lab=vss}
N -0 -270 0 -250 {
lab=vdd}
N -0 220 -0 250 {
lab=vss}
N 470 0 520 -0 {
lab=vout}
N -50 -150 -50 -100 {
lab=#net2}
N -120 -100 -50 -100 {
lab=#net2}
N 60 -0 60 150 {
lab=vss}
N 330 20 330 220 {
lab=vss}
C {symbols/nfet_03v3.sym} -140 0 0 0 {name=M2
L=\{lpar\}
W=\{wpar\}
nf=1
m=\{mpar\}
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} -20 150 0 0 {name=M5
L=\{l857\}
W=\{w857\}
nf=1
m=\{m5\}
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} -350 150 0 1 {name=M8
L=\{l857\}
W=\{w857\}
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
C {symbols/nfet_03v3.sym} 450 150 0 0 {name=M7
L=\{l857\}
W=\{w857\}
nf=1
m=\{m7\}
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/lab_pin.sym} 380 150 0 0 {name=p1 sig_type=std_logic lab=iref}
C {devices/lab_pin.sym} -170 150 0 0 {name=p2 sig_type=std_logic lab=iref}
C {devices/ipin.sym} -370 40 1 0 {name=p3 lab=iref}
C {devices/ipin.sym} -180 0 0 0 {name=p4 lab=vin_n}
C {devices/ipin.sym} 180 0 2 0 {name=p5 lab=vin_p}
C {devices/iopin.sym} 0 -270 3 0 {name=p6 lab=vdd}
C {devices/iopin.sym} 0 250 1 0 {name=p7 lab=vss}
C {devices/opin.sym} 520 0 0 0 {name=p8 lab=vout}
C {devices/lab_pin.sym} 270 -250 0 0 {name=p9 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 270 220 0 0 {name=p11 sig_type=std_logic lab=vss}
C {symbols/nfet_03v3.sym} 140 0 0 1 {name=M1
L=\{lpar\}
W=\{wpar\}
nf=1
m=\{mpar\}
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} -100 -150 0 1 {name=M3
L=\{l34\}
W=\{w34\}
nf=1
m=\{m34\}
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 450 -80 0 0 {name=M6
L=\{l6\}
W=\{w6\}
nf=1
m=\{m6\}
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 100 -150 0 0 {name=M4
L=\{l34\}
W=\{w34\}
nf=1
m=\{m34\}
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/ppolyf_u.sym} 330 0 3 0 {name=R2
W=1e-6
L=164e-6
model=ppolyf_u_2k
spiceprefix=X
m=1}
C {symbols/cap_mim_2f0fF.sym} 420 0 3 0 {name=C1
W=50e-6
L=50e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
