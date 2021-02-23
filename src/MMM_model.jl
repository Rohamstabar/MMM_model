module MMM_model

using JuMP, Gurobi

export runmodel

include("MMM_Input.jl")

model = Model(Gurobi.Optimizer)

@variables model begin

end #variables


@constraints model begin

    end #constraints


@objective model Min begin
        
    end


function runmodel()
    
    status = optimize!(model)
    

    if termination_status(model) == MOI.OPTIMAL
        println("\nSolve status: Optimal")   
    elseif termination_status(model) == MOI.TIME_LIMIT && has_values(model)
        println("\nSolve status: Reached the time-limit")
    else
        error("The model was not solved correctly.")
    end


end

end # module
