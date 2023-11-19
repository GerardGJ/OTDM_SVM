param nu;
param m; # number of observations
param n; # number of features

param y {1..m};
param x {1..m,1..n}; 

var g;
var w {1..n};
var s {1..m};


minimize primal_svm:
    1/2 * sum{i in 1..n} w[i]^2 + nu * sum{j in 1..m} s[j];

subject to Constraint_1 {i in 1..m}:
    y[i] * (sum{j in 1..n} w[j]*x[i,j] + g) + s[i] >= 1;

subject to Constraint_2 {i in 1..m}:
    s[i] >= 0;