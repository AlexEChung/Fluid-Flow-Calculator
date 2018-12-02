function cv_prime= cv_viscosity_correction(v,cv) 
    %Get correct input variable for kin. viscosity and flow factor
    %from Matt's code. Leaving as v and cv for now.
    
factor = 0.8907(v)-0.0152;
    %From Alex's cvc excel
cv_prime=cv/factor;
end


