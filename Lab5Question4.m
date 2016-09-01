syms E1 E2 I1 I2 s

% Convert all elements in Laplace (in terms of s)
% Do mesh analysis and get the current * R of I1 and I2
% for circuit

% Define e1 and laplace that

% Put all into solve()

% sym(1) cause 1 volt
e1 = sym(1);
E1 = laplace(e1);
eq1 = -E1  + s *(3/2 * I1) + (1/(4/3 * s)) * (I1 - I2)
eq2 = 1* I2 - (1/(4/3 * s)) * (I1 - I2) + 0.5 * s * I2;

result = solve(eq1, eq2, I1, I2);

% Plug E2 into iLaplace and ezplot
E2 = result.I2 * 1;
L = ilaplace(E2);
ezplot(L, [0 10]);

syms omega real
G1 = E2 / E1;
G2 = subs(G1, s, 1j*omega)

ezplot(abs(G2), [0, 20])
ylim([0 1])



