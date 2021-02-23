# I den här filen kan ni stoppa alla input data. 
# Läs in datan ni fått som ligger på Canvas genom att använda paketen CSV och DataFrames

using CSV, DataFrames


#Sets
REGION = [:DE, :SE, :DK]
PLANT = [:Hydro, :Gas, :Wind, :PV, :Batteries]
HOUR = 1:8760

#Input Parameters

X = 7
