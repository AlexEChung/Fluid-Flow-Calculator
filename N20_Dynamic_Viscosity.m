function N20_Dynamic_Viscosity = N20_Dynamic_Viscosity(N20_Temperature)

% http://edge.rit.edu/edge/P07106/public/Nox.pdf
% Equation 4.9

b1 = 1.6089; 
b2 = 2.0439; 
b3 = 5.24; 
b4 = 0.0293423;

N20_Critical_Temperature = 309.57;  % Kelvin

theta =( N20_Critical_Temperature - b3)/(N20_Temperature-b3);

N20_Dynamic_Viscosity = b4*exp(b1*((theta-1)^1/3) + b2*((theta-1)^4/3));

end