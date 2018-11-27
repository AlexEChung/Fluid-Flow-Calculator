function N2O_Vapor_P = N2O_T_to_P(T)
% Data taken from http://edge.rit.edu/edge/P07106/public/Nox.pdf
% Celcius to PSI absolute for T = -3.15C to 36.42C

N2O_Vapor_P = 0.1413*T^2 + 11.229*T + 453.41; % PSIA

end