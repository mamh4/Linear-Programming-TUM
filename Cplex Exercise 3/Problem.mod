//sets
{string} Jeans =...;
{string} Machines =...;
//Parameters
int Income[Jeans] = ...;
int Capacities[Machines]=...;
float Consumption[Jeans][Machines] = ...;
//Decision Variables
dvar float+ Q[Jeans];
//Constraints
constraint ctCapacity[Machines];
//Objective Function
dexpr float Revenue = sum(i in Jeans) Q[i]*Income[i];

maximize Revenue;
subject to {
  forall(j in Machines)
    ctCapacity[j]:sum(i in Jeans) Q[i]*Consumption [i][j]<=Capacities[j];
  }
