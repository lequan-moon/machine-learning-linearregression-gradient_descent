# machine-learning-linearregression-gradient_descent

This repo contains prototype of linear regression in Octave.
It should be easily implemented in any language with following way of thinking.

# Ex1: Simple linear regression with 1 feature
### Problems:
> Suppose you are the CEO of a
> restaurant franchise and are considering different cities for opening a new
> outlet. The chain already has trucks in various cities and you have data for
> profits and populations from the cities.

ex1data1.txt contains the dataset for our linear regression problem.
- The first column is the population of a city
- The second column is the profit of a food truck in that city. 
    * negative value for profit indicates a loss.

The dataset looks like this

![](https://image.ibb.co/fZgHdn/data_plot.png)

### Solutions:
1. Compute the cost with theta(A, B) for hypothesis: y = B + Ax
2. gradientDescent the shit out of it with 1500 iterations and alpha(learning rate) = 0.01
3. The output is theta(A, B)
and we have result like this. Every prediction should be on that blue line
![](https://image.ibb.co/kRstjS/linear_regression.png)

Now you have theta(A, B), you can predict y(profit) with x(population size) by 
```
// Predict profit for population sizes of 35,000
predict1 = [1, 3.5] * theta;

// Predict profit for population sizes of 70,000
predict1 = [1, 7] * theta;
```
You may wonder why a 1x2 matrix multiply with theta.
Well theta is a 2x1 matrix represent A, B so if you do the above calculation. 
You will get y = 1*B + 7*A which will be our prediction.

Bonus:
Following chart show that the costs for output theta is at local optima

![](https://image.ibb.co/fv9sTn/costs.png)

# Ex1_multi: Linear regression with multiple features
Same logic with Ex1 but with multiple features
The hypothesis is y = C + Bx1 + Ax2


# Usage:
Install Octave and run 
```
ex1

Output:
For population = 35,000, we predict a profit of 4519.767868
For population = 70,000, we predict a profit of 45342.450129
```

```
ex1_multi
```

# Implement scikit learn
After implementation with scikit learn
We see that the hypothesis is almost identical

![](https://image.ibb.co/dvBFon/compare.png)

But then the output is diffirent

Mathematically:
> For population = 35,000, we predict a profit of 4519.767868
> For population = 70,000, we predict a profit of 45342.450129

Scikit:
> For population = 35,000, we predict a profit of 2798.3688
> For population = 70,000, we predict a profit of 44554.5463

Notice the 35,000 data is different?
Turn out, trainning data set has no data for <50,000 so maybe that's why scikit predict diffirently compare to math algorithm
 
But in the other hand, implementation for multi-features is much more easier.
 
