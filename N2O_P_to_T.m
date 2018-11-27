function N2O_Vapor_T = N2O_P_to_T(N2O_Vapor_P)
% Data taken from http://edge.rit.edu/edge/P07106/public/Nox.pdf
% PSI Absolute to Celcius

N2O_Vapor_T = -3e-05*N2O_Vapor_P^2 + 0.1121*N2O_Vapor_P - 43.757; % Celcius

end