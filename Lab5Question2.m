syms v(t) x(t) e(t)

Lab2 = dsolve('v = (x - 0.005 * Dv) * 10', 'x = -0.01 * De', 'e = 0.5 * Dx + v', 'e(0) = 7.5', 'v(0) = 0 ', 'x(0) = 0', 't');

pretty(vpa(Lab2.e));
pretty(vpa(Lab2.v));
pretty(vpa(Lab2.x));


ezplot(Lab2.e, [0 1])