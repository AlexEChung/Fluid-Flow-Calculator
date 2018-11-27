function N2O_Liquid_Density = N2O_Liquid_Density(N2O_Temperature)
% http://edge.rit.edu/edge/P07106/public/Nox.pdf 
% Eqn. 4.2

N2O_Critical_Density = 452; % kg/m^3
N2O_Critical_Temperature = 309.57; % Kelvin
N2O_Temperature = N2O_Temperature + 273.15; % Celcius to Kelvin

N2O_Reduced_Temperature = N2O_Temperature/N2O_Critical_Temperature;

b1 = 1.72328;
b2 = -0.83950;
b3 = 0.51060;
b4 = -0.10412;

N2O_Liquid_Density = N2O_Critical_Density*exp(b1*(1 - N2O_Reduced_Temperature)^(1/3)...
    + b2*(1 - N2O_Reduced_Temperature)^(2/3) + b3*(1 - N2O_Reduced_Temperature)...
    + b4*(1 - N2O_Reduced_Temperature)^(4/3)); % kg/m^3

end