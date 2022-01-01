# Made by Christian Mauffette Denis 

# Script that will use a primitive evolutionary algorithm to create an elevator system that is 
# possibly more efficient than regular elevator systems.

# Creating a struct for the state of the total system. This takes into account the location
# of the elevator, the people waiting at each floor, and the time since last pressed button.
mutable struct ESystem
    floortime::Vector{Int64}                    # Time since the press of the button at each floor 
    elevator_occupancy::Vector{Vector{Int64}}   # List with the people in the elevator and the time since they pressed their buttons [desired floor, time ellapsed]
    location::Int64                             # Location of the elevator
end

function timestep!(system)
    # Function that makes the whole system evolve in time for one step


    # Make the time at each floor pass by
    for i in 1:length(system.floortime)
        system.floortime[1] += 1
    end


    # Make the time pass by for the people in the elevator
    for i in system.elevator_occupancy
        system.elevator_occupancy[i][2] += 1
    end



    
end




#= mysystem1 = ESystem([1], [[1, 4]], 2)

println(mysystem1)

mysystem1.floortime = [2]

println(mysystem1) =#

someobject = [1, 2, 3, 4]

function yessir(myobj)
    for i in 1:length(myobj)
        myobj[i] += 1
    end
    return myobj
end


println(yessir(someobject))
println(someobject)