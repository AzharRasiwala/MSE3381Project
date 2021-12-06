clc
syms r1 r2 r3 r4 v1 v2 v3 v4 a1 a2 a3 a4 th1 th2 th3 th4 w1 w2 w3 w4 al1 al2 al3 al4 t
r1 = 0.02
r2=0.2
r3=1.2
w2 = 600
% r4 comes from pos i subbed into pos j component 
% add constant as the position of the stock center is 0.22 meter below the
% connecting point of punch and r4
r4(t) = -(r2*sind(w2*t) + r3*sind( acosd( (r1-r2*cosd(w2*t)) / r3 ) ) + 0.22)
v4(t) = diff(r4,t)
a4(t) = diff(v4,t)

t = linspace(0, 1.2, 288);
th2 = 600*t

plot (t, r4(t))
figure()
plot(t,v4(t))
figure()
plot(t,a4(t))

d1 = double(r4(t))
d2 = double(v4(t))
d3 = double(a4(t))

writematrix(d1, 'Position.csv')
writematrix(d2, 'Velocity.csv')
writematrix(d3, 'Aceleration.csv')