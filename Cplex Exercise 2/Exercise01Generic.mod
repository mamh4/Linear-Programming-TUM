//Sets
{string} Products =...;
{string} Machines=...;
{string} Days =...;
//Parameters
int Consumption[Products][Machines]=...;
int MCapacities[Machines][Days]=...;
int Income[Products] = ...;

//Decision variable
dvar int+ Q[Products][Days];

//Constraints
constraint ctMachinesCap[Machines][Days];

//Objective function
dexpr float Margin = sum(i in Products, d in Days) Q[i][d]*Income[i];

maximize Margin;

subject to {
  forall(m in Machines, d in Days)
    ctMachinesCap[m][d] = sum(i in Products) Q	[i][d]*Consumption[i][m] <= MCapacities[m][d]; 
}
