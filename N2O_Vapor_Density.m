function N2O_Vapor_Density = N2O_Vapor_Density(N2O_Temperature)
% http://edge.rit.edu/edge/P07106/public/Nox.pdf 
% Eqn. 4.3

N2O_Critical_Density = 452; % kg/m^3
N2O_Critical_Temperature = 309.57; % Kelvin
N2O_Temperature = N2O_Temperature + 273.15; % Celcius to Kelvin

N2O_Reduced_Temperature = N2O_Temperature/N2O_Critical_Temperature;

b1 = -1.00900;
b2 = -6.28792;
b3 = 7.50332;
b4 = -7.90463;
b5 = 0.629427;

N2O_Vapor_Density = N2O_Critical_Density*exp(b1*(1/N2O_Reduced_Temperature - 1)^(1/3)...
    + b2*(1/N2O_Reduced_Temperature - 1)^(2/3) + b3*(1/N2O_Reduced_Temperature - 1)...
    + b4*(1/N2O_Reduced_Temperature - 1)^(4/3) + b5*(1/N2O_Reduced_Temperature - 1)^(5/3)); % kg/m^3

end