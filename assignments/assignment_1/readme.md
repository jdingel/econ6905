ECON G6905: Topics in Trade\
Fall 2023\
Assignment 1\
Due: 21 September 2023, 10:10am

This assignment concerns the Armington model with CES preferences introduced in week 1.
This model is presented in Section 2.1 of [Costinot and Rodriguez-Clare (Handbook, 2014)](https://doi.org/10.1016/B978-0-444-54314-1.00004-5).
We simplified their setup by assuming identical preferences, &psi; = 1 for all i,j.

### Pencil-and-paper exercises

The first part of this assignment requires zero computing.
Produce answers to each of the four queries below.
All answers can be shown analytically without resorting to numerical computation.
Please submit your PDF via Courseworks.

#### Free-trade equilibrium

Assume balanced budgets (Y = X) and free trade (&tau;=1 for all i,j).
The only endogenous variables are incomes.
Solve the model.
Show that the equilibrium income levels take the form Y<sub>i</sub> = Q<sub>i</sub><sup>&epsilon;/(&epsilon;+1)</sup>.

#### Gains from trade in free-trade equilibrium

A country's real income is Y<sub>i</sub>/P<sub>i</sub>, where P<sub>i</sub> is the CES price index.
Derive an expression for real income in the free-trade equilibrium that depends only on exogenous parameters.
Derive an expression for real income in the autarky equilibrium (&tau;=&infin; if i &ne; j) that depends only on exogenous parameters.
Express the gains from free trade as real income under free trade divided by real income under autarky.

#### Immiserizing growth

Suppose that one country experiences productivity growth (an increase in its *Q<sub>i</sub>*).
Can a country's productivity improvement be immiserizing?
That is, can a productivity improvement reduce its real income?
Answer this question for the case of the free-trade Armington model.
See [Feenstra's textbook](https://press.princeton.edu/books/hardcover/9780691161648/advanced-international-trade) chapter titled "Trade and Endogenous Growth" for an explanation of immiserizing growth (also see Deardorff's [glossary definition](http://www-personal.umich.edu/~alandear/glossary/i.html#ImmiserizingGrowth)).

#### Identification (with trade costs)

Consider an arbitrary Armington economy (rather than only the free-trade case).
Use prime to denote an alternative economy that is identical
except that country 1 has 10% lower productivity and 10% lower trade costs when shipping its good to any destination:
Q'<sub>1</sub> = 0.9 Q<sub>1</sub>
and
&tau;'<sub>1j</sub> = 0.9 &tau;<sub>1j</sub> &forall; j.
Compare the equilibrium outcomes of these two economies:
is country 1's share of world income higher in the prime economy?

### Numerical exercises

The second part of this assignment is about computing.
Please submit your code via Courseworks.
Your code must run on my computer without modification (e.g., use relative file paths).
I will evaluate your solver function by giving it arbitrary inputs and grading the output.
(Talk to me before using a language other than **Julia** or **Matlab**.)

#### Write a solver function

Your function should take four arguments:
the productivity vector *A*,
the labor-endowment vector *L*,
the iceberg trade cost matrix *tau*,
and
the preference parameter *&sigma;*.

In Julia's syntax, here are the types and dimensions of these arguments:
```
function Armington_solver(A::Array{Float64,1},L::Array{Float64,1},tau::Array{Float64,1},sigma::Float64)
```

Your function should perform basic error checking before producing
output:
-   verify that *A* and *L* are equal length and contain non-negative values
-   verify that *&tau;* is a square *N* by *N* array where *N* is the length of *A* and *L*
-   verify that *&sigma;* is a strictly positive scalar

The output of your solver function should be an *N*-element vector of equilibrium wages *w*.

I will test your function by passing arrays *A*, *L*, *&tau;*, and *&sigma;* to your function and verifying that the output is correct.
Note that these arrays have fixed dimensionality but may be of arbitrary length.
In particular, I might solve the model for 2 countries or 200 countries.
Make sure your solver can handle this (in terms of both feasibility and speed).
If I pass arrays with incompatible lengths, your function should return an error.


#### Write a unit test

You possess a closed-form solution for the free-trade equilibrium as a function of *A*, *L*, and *&sigma;* (given &tau;=1 for all i,j).
Write a free-trade unit test for your solver function.
This unit test verifies that your function returns the correct vector of free-trade equilibrium (relative) wages given values of *A*, *L*, and *&sigma;*.
The closed-form solution and the function's output should differ only up to machine precision.
The output of your unit-test function is binary: true or false.

Write the free-trade unit test function taking arguments *A*, *L*, and *&sigma;* so that I can verify your solver passes this unit test using arbitrary arguments of my choosing.

#### Compute the gains from trade

You possess a closed-form expression for real income in autarky given *A*, *L*, and *&sigma;*.
Write a function the uses your solver function to compute equilibrium real income and reports it relative to autarky real income.
Your function should take *A*, *L*, *&tau;*, and *&sigma;* as inputs and return a vector of real incomes relative to autarky.
For example, if the first element of the output vector is 1.05, it means that country 1's real income is 5% greater in the trade equilibrium than in autarky.


### Programming hints

If you have considerable difficulty getting started in Julia or Matlab, consult your classmates first and me second.
Here are a few notes on getting started in Julia:

-   I recommend that you read the QuantEcon.org lectures on [Programming in Julia](https://lectures.quantecon.org/jl/index_learning_julia.html) to get started.
-   To install Julia on your own machine, download Julia 1.9 from
    <https://julialang.org/downloads>. 
-	You should need to install very few packages to complete this assignment. You might use Optim.jl.
	You might also consider those that are [dependencies for the QuantEcon package](https://github.com/QuantEcon/QuantEcon.jl/blob/master/REQUIRE) and those listed as [Useful Libraries](https://lectures.quantecon.org/jl/julia_libraries.html) by QuantEcon.
	Installing packages can take a few minutes. Don't panic.
