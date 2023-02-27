//Sets
{string} Products =...;
{string} Machines=...;

//Parameters
int Consumption[Products][Machines]=...;
int MCapacities[Machines]=...;
int Income[Products] = ...;

//Decision variable
dvar float+ Q[Products];

//Constraints
constraint ctMachinesCap[Machines];

//Objective function
dexpr float Margin = sum(i in Products) Q[i]*Income[i];

maximize Margin;

subject to {
  forall(m in Machines)
    ctMachinesCap[m] = sum(i in Products) Q	[i]*Consumption[i][m] <= MCapacities[m]; 
}




