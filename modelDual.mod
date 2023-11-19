param nu;
param m;
param n;

param y {1..m};
param x {1..m,1..n};

var l {1..m};

maximize dual_svm:
    sum{i in 1..m} l[i] - 1/2*sum{i in 1..m,j in 1..m} l[i]*y[i]*l[j]*y[j]*(sum{z in 1..n}x[i,z]*x[j,z]);

subject to Constraint_1:
    sum{i in 1..m} l[i]*y[i] = 0;
subject to Constraint_2 {i in 1..m}:
    l[i] >=0;
subject to Constraint_3 {i in 1..m}:
    l[i] <=nu;


