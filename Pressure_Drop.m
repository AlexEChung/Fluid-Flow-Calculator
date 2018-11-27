function Pressure_Drop = Pressure_Drop(Coefficient_of_Flow, N2O_Liquid_Density, N2O_Volumetric_Flow_Rate)
% :^)
% Units are in Pa cause SI is the best

% Water Density
H2O_Liquid_Density = 999.972; % kg/m^3

% Specific Gravity - Ratio of weights of your substance to Water at its
% densest, which is 999.972 kg/m3 @ 4 celcius.
N2O_Specific_Gravity = N2O_Liquid_Density/H2O_Liquid_Density;

Pressure_Drop = N2O_Specific_Gravity*(Coefficient_of_Flow/N2O_Volumetric_Flow_Rate)^-2;

end