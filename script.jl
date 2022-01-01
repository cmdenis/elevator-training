# Made by Christian Mauffette Denis 

# Script that will use a primitive evolutionary algorithm to create an elevator system that is 
# possibly more efficient than regular elevator systems.

# Creating a struct for the state of the total system. This takes into account the location
# of the elevator, the people waiting at each floor, and the time since last pressed button.
struct esystem
    floortime::Vector{Int64}
    
end