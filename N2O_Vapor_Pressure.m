function N2O_Vapor_Pressure = N2O_Vapor_Pressure(N2O_Temperature)
% http://edge.rit.edu/edge/P07106/public/Nox.pdf
% VALID FOR -90C to 36C

N2O_Critical_Temperature = 309.57; % Kelvin
N2O_Critical_Pressure = 7251e3; % Pascals
N2O_Temperature = N2O_Temperature + 273.15; % Celcius to Kelvin

N2O_Reduced_Temperature = N2O_Temperature/N2O_Critical_Temperature;

b1 = -6.71893;
b2 = 1.35966;
b3 = -1.3779;
b4 = -4.051;

N2O_Vapor_Pressure = N2O_Critical_Pressure*exp(1/N2O_Reduced_Temperature*(b1*(1-N2O_Reduced_Temperature)...
    + b2*(1 - N2O_Reduced_Temperature)^(3/2) + b3*(1 - N2O_Reduced_Temperature)^(5/2)...
    + b4*(1 - N2O_Reduced_Temperature)^5)); % Pa

end