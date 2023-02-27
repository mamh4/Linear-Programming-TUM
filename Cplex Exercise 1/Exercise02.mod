dvar float+ s;
dvar float+ n;

maximize 1.5*s+2*n;
subject to {
  3*s + 2*n <= 130;
  1*s + 2*n <= 100;
  s<=100;
  n<=150;
  }







