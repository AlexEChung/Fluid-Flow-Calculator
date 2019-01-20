clc
clear all

%% Set Initial Conditions
clc
clear all

% Pressure & Temperature
N2O_Vapor_P = 800; % PSIA
N2O_Temperature = N2O_P_to_T(N2O_Vapor_P); % Celcius

% Density
N2O_Liquid_Density = N2O_Liquid_Density(N2O_Temperature); % kg/m^3

% Mass
N2O_Mass = 12.5; % lbs
N2O_Mass = lbs_to_kg(N2O_Mass); % kg

% Flow Time
t = 4; % seconds

% Flow Rate
N2O_Mass_Flow_Rate = N2O_Mass/t; % kg/s
N2O_Volumetric_Flow_Rate = N2O_Mass_Flow_Rate/N2O_Liquid_Density; % m^3/s

%% 1) Custom Fitting

% Inputs:
    % Dimensions
    d1 = 0.5; % inches
    d1 = in_to_m(d1); % meters
    d2 = 0.391; % inches
    d2 = in_to_m(d2); % meters
    theta = 45; % Degrees
    % Absolute Roughness of Zinc 
    Absolute_Roughness_Zinc = 1.8e-3; % inches

% Flow Velocity
N2O_Flow_Velocity_1 = N2O_Volumetric_Flow_Rate/(pi*(d1/2)^2);

% Kinematic Viscosity
N2O_Kinematic_Viscosity

% Reynold's Number
Reynolds_Number = N2O_Flow_Velocity_1*d1/N2O_Kinematic_Viscosity;

% 

% Friction Factor
f = Colebrook(Reynolds_Number, Absolute_Roughness_Zinc, d1);




%%
% Length of Tube
L =

% Flow Velocity
v = 

% Inner Diameter
D =

% Gravitational Constant
g =

dp = rho*f*L*v^2/(144*D*2*g); % pressure drop, psi

%% (5) Generant SOV-8F
% Coefficient of Flow
Coefficient_of_Flow = 2.34;

Pressure_Drop_5 = Pressure_Drop(Coefficient_of_Flow, N2O_Liquid_Density, N2O_Volumetric_Flow_Rate); % Pa

