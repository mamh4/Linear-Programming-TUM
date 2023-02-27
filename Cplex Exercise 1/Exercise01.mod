dvar float+ x1;
dvar float+ x2;


maximize 10*x1 + 40*x2;
subject to {
  x1+5*x2<=30;
  x1+x2 <= 10;
  3*x1+x2<=24;
 }
 
 
 
 
 