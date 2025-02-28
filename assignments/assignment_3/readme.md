ECON G6905: Topics in Trade\
Spring 2025\
Assignment 3\
Due: Beginning of week 12 class

You must submit a replication package for your response to the "Defining metropolitan areas" question.

### Defining metropolitan areas

The US Office of Management and Budget [defines](https://www.census.gov/programs-surveys/metro-micro/about/omb-standards/2010.html) metropolitan statistical areas as collections of counties that are joined by sufficiently large commuting flows.
This exercise asks you to build metropolitan areas as collections of *tracts* joined by commuting ties.
We will focus on Albany and Syracuse, two upstate New York metros.

- Review how OMB defines a metropolitan statistical area so you understand the contrast of interest.
Core-based statistical areas are geographic entities with at least one core containing 10,000 or more residents.
Outlying counties are attached to this central county if it meets commuting requirements: 
at least 25 percent of workers living in outlying country work in the central county or counties of the CBSA
or
at least 25 percent of the employment in the county is accounted for by workers who reside in the central county or counties of the CBSA.
Look at the [map of core-based statistical areas for New York state in 2010](https://www2.census.gov/geo/maps/metroarea/stcbsa_pg/Dec2009/cbsa2009_NY.pdf).
Look at the [OMB notice in the Federal Register](https://www.govinfo.gov/content/pkg/FR-2010-06-28/pdf/2010-15605.pdf) and at "6.2.2 Current Practice in the World" in [Duranton (2015)](https://ideas.repec.org/h/spr/advchp/978-4-431-55390-8_6.html).
- Download the block-to-block commuting data for New York state (for primary jobs) from the [LEHD Origin-Destination Employment Statistics (LODES)](https://lehd.ces.census.gov/data/): [
ny_od_main_JT01_2010.csv.gz](https://lehd.ces.census.gov/data/lodes/LODES8/ny/od/ny_od_main_JT00_2010.csv.gz). 
The [FIPS code](https://www.census.gov/programs-surveys/geography/guidance/geo-identifiers.html) for a Census block is 15 digits; the first 11 digits identify the tract to which the block belongs.
Aggregate the observations to the level of Census tracts (so your data set contains tract-to-tract commuting counts).
- Propose a "core" for the metro area.
This might be all tracts in the central county of the OMB-defined MSA.
Or you could name criteria that select a subset of tracts to constitute the core.
- Once you have defined a core, attach to it all outlying tracts that have at least 25 percent ties via commuting flows in the tract-to-tract LODES data, consistent with the OMB procedure above.
Notice that this is an iterative procedure because outlying units are attached based on their commuting ties to the core and other units that have been added to the metro area.
- Grab shapefiles for tracts and counties in New York state from the US Census Bureau's [Gazetteer Files](https://www.census.gov/geographies/reference-files/time-series/geo/gazetteer-files.html) (or a New York data source if you prefer).
- Make a map of the Albany MSA as defined by OMB, which uses a collection of counties.
Include neighboring counties that do not belong to the Albany MSA for context.
On this map, outline the tracts that belong to the Albany metro area as defined by your aggregation of tract-to-tract flows.
Discuss the similarity or contrast between the county-based and tract-based definitions of the Albany metro.
Repeat this exercise for Syracuse, NY.

### Spatial equilibrium with idiosyncratic preferences

It is easy to find papers that define spatial equilibrium in a model with Frechet-distributed idiosyncratic preferences as "labor mobility equalizes expected utility across cities".
Please show that this statement describes properties of the idiosyncratic-preferences distribution, not the concept of spatial equilibrium.
Do so by deriving the average utility level (inclusive of idiosyncratic preferences) in each city in a two-city model in which the utility that an individual would obtain in each city has a common component and an idiosyncratic component.
Specifically,
individual $i$ would obtain utility $U_{ic}$ in city $c$, where $U_{ic} = f(U_c,\epsilon_{ic})$ and $U_c$ is the common component.
To make things easy, assume $U_c$ is fixed (so housing prices, wages, and other endogenous variables do not respond to labor quantities).
1. Define spatial equilibrium in this two-city system as an indifference condition and adding-up constraint for labor. To get started, assume $f = U_c + \epsilon_{ic}$. For this case, since there are only two cities, you should work with differences between an individual's idiosyncratic preferences for the two cities. Consult Section 3.1 of Ken Train's *Discrete Choice Methods with Simulation* where he describes the binary choice case. After covering the special case, please define spatial equilibrium for a general $f(U_c,\epsilon_{ic})$.
2. Assume the multiplicative form $f = U_c \epsilon_{ic}$. Show that the average utility of individuals who choose city 1 equals the average utility of individuals who choose city 2 when their idiosyncratic preferences follow a Frechet distribution.
When deriving this result, you might consult the proof of Proposition 3 in Hsieh, Hurst, Jones, Klenow - The Allocation of Talent and US Economic Growth (*Econometrica* 2019).
3. Show that the average utility of individuals who choose city 1 does not equal the average utility of individuals who choose city 2 when their (log) idiosyncratic preferences follow a uniform distribution.
When deriving this result, you might consult Section 3.2 of Enrico Moretti's "Local Labor Markets" (*Handbook of Labor Economics*, 2011).
4. Use your results to demonstrate that the statement "labor mobility equalizes expected utility across cities" describes properties of the idiosyncratic-preferences distribution, not the concept of spatial equilibrium.

### Structural gravity for commuting flows

Consider the labor-allocation (gravity) equation in the barebones quantitative urban model (equation 1 on week 7 slide 4).
Does the commuting gravity equation satisfy the "structural gravity" definition of Head and Mayer (2014) from the week 1 slides?
Provide a proof of your yes/no response.

### Border designs and spatial linkages

I conjecture that a naive border discontinuity design is invalid in an off-the-shelf quantitative urban model.

Use the baseline model introduced in the week 7 slides, augmented with exogenous residential amenities as in Ahlfeldt et al. (2015) or Appendix C.7.3 of Dingel and Tintelnot (2023).
Consider an amenity improvement in one residential location ($\hat{B}_{i} > 1$).
We want to trace out the implications of this improvement for rents (this would be one way of learning the value of a decrease in local water pollution, for example).

Consider a "border design" that contrasts outcomes in the residential location whose amenity improved to those in a neighboring residential location whose amenity was unchanged (e.g., the neighbor draws its water supply from a different source; it's on the other side of the "water cachement border").
I conjecture that the difference between the two residential locations' changes in land rents reflects both the difference in the amenity change and the general-equilibrium linkages in the model.
In fact, if the researcher knew that there were no exogenous changes anywhere in the city besides the amenity improvement in the "treated" residential location, comparing the treated location's change in land rent to that of a far-away "control" location would be "better" than comparing it to its neighboring location.

First, show that with $\sigma = \infty$ or $d_{ij} = 1 \ \forall ij$, there is no contamination by general-equilibrium linkages.
Explain why.
Second, explain the confounding problem for the border discontinuity design that arises more generally.
Comment on the appropriate border design in light of spatial linkages.
