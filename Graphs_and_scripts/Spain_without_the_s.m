syms r1 r2 r3 r4 v1 v2 v3 v4 a1 a2 a3 a4 th1 th2 th3 th4 w1 w2 w3 w4 al1 al2 al3 al4 t

t = linspace(0, 1.2, 144)

th2 = 180*sin(pi*t/0.6 - pi/2) + 180

w2 = 10.47

th3 = acosd((0.02 - 0.2*cosd(th2))/(1.2))
r4 = -(0.2*sind(th2) + 1.2*sind(th3))

w3 = (-0.2*sind(th2)*w2)/(1.2*sind(th3))
v4 = -(0.2*cosd(th2)*w2 + 1.2*cosd(th3)*w3)

al3 = (-0.2*cosd(th2)*w2^2)/(1.2*sind(th3))
a4  = -(1.2*cosd(th3)*al3 - 1.2*sind(th3)*w3^2 - 0.2*sind(th2)*w2^2)

plot(th2, r4)
figure()
plot(th2, v4)
figure()
plot(th2, a4)

writematrix(r4, 'Position.csv')
writematrix(v4, 'Velocity.csv')
writematrix(a4, 'Aceleration.csv')