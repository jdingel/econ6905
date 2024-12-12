## ECON G6905: Topics in Trade

Jonathan Dingel\
Columbia University\
Spring 2025

This graduate course covers topics in economic geography and regional economics.
We will extensively cover the methods use to estimate, calibrate, simulate, and solve quantitative models in trade, spatial, and urban economics.
The methods topics covered will include estimating gravity regressions with high-dimensional fixed effects, computing counterfactual outcomes by exact hat algebra, choosing and implementing numerical solution methods, and conducting Monte Carlo simulations.

This class is part of the trade and spatial second-year PhD sequence.
It complements the classes taught by David Weinstein and Donald Davis.
I will introduce concepts and models in a self-contained fashion, but I will assume that second-year students are familiar with the material taught in already-completed classes in the sequence.

### Logistics
Course materials: [github.com/jdingel/econ6905](http://github.com/jdingel/econ6905)\
Class schedule: Wednesdays 8:10 AM - 10:00 AM\
Email: <jid2106@columbia.edu>\
Office: IAB 1126B\
Office hours: By appointment, please email

### Assessment

Grades will be based on assignments (75%) and a final exam (25%).

Assignments will be posted to the GitHub repository.
Submit your work via the Courseworks site.

Assignments will come in various forms:
- Economics: We will ask you to derive a theoretical result or survey an empirical literature.
- Programming: We will ask you to write a function that solves for equilibrium or estimates a parameter. See comments on computation below.
- Writing: I will ask to rewrite the abstract of a recent paper.

In addition to course material, the final exam may ask you to propose an original research idea, so you should be thinking about these during our class (and for the rest of your life!).

### Computation

Scientific computation is important.
I hope that you have already been exposed to the basics.
Please glance at Jesus Fernandez-Villaverde's "[Computational Methods for Economists](https://www.sas.upenn.edu/~jesusfv/teaching.html)" course.
My workflow is outlined in my [project template](https://github.com/jdingel/projecttemplate).

You have choices to make.
See "[A Comparison of Programming Languages in
Economics](https://github.com/jesusfv/Comparison-Programming-Languages-Economics)."
[I recommend](https://tradediversion.net/2018/09/17/why-i-encourage-econ-phd-students-to-learn-julia/)
the [Julia language](http://www.julialang.org).
Julia's advantages are that it is open source and typically faster than Matlab.
To get started doing economics in Julia, see Perla, Sargent, and Stachurski's
"[Lectures in Quantitative Economics](https://lectures.quantecon.org/jl/)."
You may submit Julia or Matlab code as homework solutions.
Please confer with me before submitting code written in other languages.

Standards for transparency and replicability are rising quickly.
The AEA has appointed a [Data Editor](https://github.com/AEADataEditor/) who will verify that code works [prior](https://www.aeaweb.org/journals/policies/data-code) to accepting papers for publication.
Please write code for this class that is transparent and self-contained.

## Course Outline and Reading List

I may revise the course outline and reading list during the semester.

#### Week 1: The CES Armington model

- Allen, Treb and Costas Arkolakis. 2015. [*Elements of Advanced International Trade*](https://sites.google.com/site/treballen/graduate-trade?authuser=0). Sections 3.1-3.3.

- Costinot, Arnaud and Andres Rodriguez-Clare. 2014. "[Trade Theory with Numbers: Quantifying the Consequences of Globalization](http://www.sciencedirect.com.proxy.uchicago.edu/science/article/pii/B9780444543141000045)." in *Handbook of International Economics*, Vol. 4, 197-261. Sections 1 and 2.

#### Week 2: Gravity regressions

-   Head, Keith, and Thierry Mayer. 2014. "[Gravity Equations: Workhorse, Toolkit, and Cookbook](http://www.sciencedirect.com.proxy.uchicago.edu/science/article/pii/B9780444543141000033)." in *Handbook of International Economics*, Vol. 4, 131-195.

#### Week 3: Increasing returns and home-market effects

- Dingel, Gottlieb, Lozinski, Mourot. 2024. "[Market Size and Trade in Medical Services](http://www.jdingel.com/research/DGLM_MSTMS.pdf)." Working paper.

#### Week 4: Non-homothetic preferences

-   Dingel, Jonathan I. 2017. "[The Determinants of Quality Specialization](http://academic.oup.com.proxy.uchicago.edu/restud/article/84/4/1551/2684498)", *Review of Economic Studies*, 84(4): 1551-1582.

-   Matsuyama, Kiminori. 2019. "[Engel's Law in the Global Economy: Demand‐Induced Patterns of Structural Change, Innovation, and Trade](https://onlinelibrary-wiley-com.proxy.uchicago.edu/doi/10.3982/ECTA13765)", *Econometrica* 87: 497-528.

#### Week 5: Agglomeration economies

-   Glaeser, Edward L., and Joshua D. Gottlieb. 2009. "[The Wealth of Cities: Agglomeration Economies and Spatial Equilibrium in the United States](https://www.aeaweb.org/articles?id=10.1257/jel.47.4.983)." *Journal of Economic Literature*, 47 (4): 983-1028.

#### Week 6: Quantitative spatial models

- Allen, Treb and Costas Arkolakis. 2014. "[Trade and the Topography of the Spatial Economy](https://doi.org/10.1093/qje/qju016)". *The Quarterly Journal of Economics*

#### Week 7: Quantitative urban models

- Ahfeldt, Gabriel M., Stephen J. Redding, Daniel M. Sturm, and Nikolaus Wolf. 2015. "[The Economics of Density: Evidence from the Berlin Wall](http://onlinelibrary.wiley.com/doi/abs/10.3982/ECTA10876)." *Econometrica,* 83(6): 2127–2189.

#### Week 8: Exact hat algebra and calibration

-   Dingel, Jonathan I. and Felix Tintelnot. 2023. "[Spatial Economics for Granular Settings](http://www.jdingel.com/research/DingelTintelnotSEGS.pdf)." Working paper.

#### Week 9: The canonical urban model

- Murphy, Kevin. "[Location Choice: An Introduction to Compensating Differences](https://www.youtube.com/watch?v=PbudgN5S48I). YouTube.

- Thisse, Jacques-Francois, Matthew A. Turner, Philip Ushchev. 2023. "[Foundations of Cities](https://matthewturner.org/papers/unpublished/Thisse_Turner_Ushchev_unp_2023.pdf)". Working paper.

- Proost, Stef, and Jacques-François Thisse. 2019. "[What Can Be Learned from Spatial Economics?](https://www.aeaweb.org/articles?id=10.1257/jel.20181414)" *Journal of Economic Literature*, 57 (3): 575-643.

- Davis, Donald R. and Jonathan I. Dingel. 2020. "[The Comparative Advantage of Cities.](http://www.jdingel.com/research/DavisDingel-TheComparativeAdvantageofCities.pdf)" *Journal of International Economics*.

#### Week 10: Spatial sorting of skills and sectors

-   Diamond, Rebecca. 2016. "[The Determinants and Welfare Implications of US Workers’ Diverging Location Choices by Skill: 1980-2000](http://www.aeaweb.org.proxy.uchicago.edu/articles?id=10.1257/aer.20131706)." *American Economic Review*, 106(3): 479-524.

-   Davis, Donald R. and Jonathan I. Dingel. 2019. "[A Spatial Knowledge Economy](https://www.aeaweb.org/articles?id=10.1257/aer.20130249)." *American Economic Review*, 109 (1): 153-70.

#### Week 11: Discrete choice estimation and simulations

- Donald R. Davis, Jonathan I. Dingel, Joan Monras, and Eduardo Morales. 2019. "[How Segregated Is Urban Consumption?](http://www.jdingel.com/research/DavisDingelMonrasMorales.pdf)" *Journal of Political Economy* 127:4, 1684-1738.

#### Week 12: Multi-region firms

- Hsieh, Chang-Tai, and Esteban Rossi-Hansberg. 2023. "[The Industrial Revolution in Services](http://doi.org/10.1086/723009)" *Journal of Political Economy Macroeconomics* 1:1, 3-42.
- Xavier Giroud, Simone Lenzu, Quinn Maingi, Holger Mueller. 2024. "[Propagation and Amplification of Local Productivity Spillovers](https://doi.org/10.3982/ECTA20029)" *Econometrica* 92:5, 1589-1619.

#### Week 13: Spatial environmental economics

#### Week 14: Research consultations
