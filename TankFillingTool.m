function [Tank_Ullage, Mass_Liquid, Mass_Vapor] = TankFillingTool(Mass_Total_N2O, Tank_Internal_Volume, P_or_T)
% 

N2O_Vapor_Pressure = N2O_Vapor_Pressure(N2O_Temperature);

N2O_Vapor_Density = N2O_Vapor_Density(N2O_Temperature);

Tank_Ullage = N2O_Vapor_Volume/Tank_Internal_Volume*100;

end