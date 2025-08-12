## ECON G6905: Topics in Trade

Jonathan Dingel\
Columbia University\
Fall 2025

This graduate course covers topics in international trade and economic geography.
We will extensively cover the methods use to estimate, calibrate, simulate, and solve quantitative models in trade, spatial, and urban economics.
The methods topics covered will include estimating gravity regressions with high-dimensional fixed effects, computing counterfactual outcomes by exact hat algebra, choosing and implementing numerical solution methods, and conducting Monte Carlo simulations.

This class is part of the trade and spatial second-year PhD sequence.
It complements the classes taught by David Weinstein and Donald Davis.
I will introduce concepts and models in a self-contained fashion.

### Logistics
Course materials: [github.com/jdingel/econ6905](http://github.com/jdingel/econ6905)\
Class schedule: Wednesdays 8:10 AM - 10:00 AM in IAB 1101\
Email: <j.dingel@columbia.edu>\
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

I have opted for a minimalist reading list.
Every reading listed below is required.
We will discuss each paper and chapter that is listed in considerable detail.
Do the readings before class each week.

If you’re going to be a trade economist, you ought to own the following books:

-   Avinash Dixit and Victor Norman, [*Theory of International Trade: A Dual, General Equilibrium Approach*](https://clio.columbia.edu/catalog/ebs306324e), 1980.

-   Elhanan Helpman and Paul R. Krugman, [*Market Structure and Foreign Trade: Increasing Returns, Imperfect Competition, and the International Economy*](https://clio.columbia.edu/catalog/4249538), 1985.

-   Robert C. Feenstra, [*Advanced International Trade: Theory and Evidence*](https://clio.columbia.edu/catalog/11541432), 2016.


#### Week 1: The CES Armington model

- Allen, Treb and Costas Arkolakis. 2015. [*Elements of Advanced International Trade*](https://sites.google.com/site/treballen/graduate-trade?authuser=0). Sections 3.1-3.3.

- Costinot, Arnaud and Andres Rodriguez-Clare. 2014.
	"[Trade Theory with Numbers: Quantifying the Consequences of Globalization](http://www.sciencedirect.com/science/article/pii/B9780444543141000045)."
	in *Handbook of International Economics*, Vol. 4, 197-261. Sections 1 and 2.

#### Week 2: Gains from trade and comparative advantage

-   Dixit and Norman textbook, chapters 1 and 3.

-   Deardorff, Alan V. 1980.
	"[The General Validity of the Law of Comparative Advantage](http://www.journals.uchicago.edu/doi/10.1086/260915)."
    *Journal of Political Economy*, 88(5): 941-957.

-   Dornbusch, Rudiger, Stanley Fischer, and Paul Samuelson. 1977.
    "[Comparative Advantage, Trade, and Payments in a Ricardian Model with a Continuum of Goods](http://www.jstor.org/stable/1828066)."
    *American Economic Review*, 67(5): 823-839

#### Week 3: Quantitative Ricardian trade models

-   Eaton, Jonathan and Samuel Kortum. 2002. "[Technology, Geography, and Trade](http://onlinelibrary.wiley.com/doi/abs/10.1111/1468-0262.00352)."
	*Econometrica,* 70(5): 1741-1779.

-	Caliendo, Lorenzo and Fernando Parro. 2015. "[Estimates of the Trade and Welfare Effects of NAFTA](https://doi.org/10.1093/restud/rdu035)."
	*Review of Economic Studies*, 82 (1): 1-44.

#### Week 4: Gravity regressions

-   Head, Keith, and Thierry Mayer. 2014. "[Gravity Equations: Workhorse, Toolkit, and Cookbook](http://www.sciencedirect.com/science/article/pii/B9780444543141000033)."
	in *Handbook of International Economics*, Vol. 4, 131-195.

#### Week 5: Multiple factors of production

-   Jones, Ronald W. and J. Peter Neary. 1984. "[The positive theory of international trade](http://www.sciencedirect.com/science/article/pii/S1573440484010042)."
    in *Handbook of International Economics*, Vol. 1, 1-62.

-   Feenstra textbook, chapters [1](http://assets.press.princeton.edu/chapters/s10615.pdf) and 2.

#### Week 6: Increasing returns and home-market effects

- Krugman, Paul R. 1980. "[Scale Economies, Product Differentiation, and the Pattern of Trade](https://www.aeaweb.org/aer/top20/70.5.950-959.pdf)." *American Economic Review*, 70(5): 950-959.

- Dingel, Gottlieb, Lozinski, Mourot. 2024. "[Market Size and Trade in Medical Services](http://www.jdingel.com/research/DGLM_MSTMS.pdf)." Working paper.

#### Week 7: Agglomeration economies

-   Glaeser, Edward L., and Joshua D. Gottlieb. 2009. "[The Wealth of Cities: Agglomeration Economies and Spatial Equilibrium in the United States](https://www.aeaweb.org/articles?id=10.1257/jel.47.4.983)." *Journal of Economic Literature*, 47 (4): 983-1028.

#### Week 8: Quantitative spatial models

- Krugman, Paul. 1991. "[Increasing Returns and Economic Geography](http://www.journals.uchicago.edu/doi/abs/10.1086/261763)." *Journal of Political Economy*, 99(3): 483-499.

- Allen, Treb and Costas Arkolakis. 2025. "[Quantitative Regional Economics](http://www.nber.org/papers/w33436)." NBER working paper 33436. Prepared for *Handbook of Regional and Urban Economics*.

#### Week 9: Quantitative urban models

- Ahfeldt, Gabriel M., Stephen J. Redding, Daniel M. Sturm, and Nikolaus Wolf. 2015. "[The Economics of Density: Evidence from the Berlin Wall](http://onlinelibrary.wiley.com/doi/abs/10.3982/ECTA10876)." *Econometrica,* 83(6): 2127–2189.

- Redding, Stephen J. "[Quantitative urban models](https://www.youtube.com/watch?v=2IfSeRHJyVo)." Urban Economics Association, July 2020.

- Redding, Stephen J. "[Quantitative urban economics](https://doi.org/10.1016/bs.hesreg.2025.06.007)." *Handbook of Regional and Urban Economics*, 2025.


#### Week 10: Identification, calibration, and exact hat algebra

-   Dingel, Jonathan I. and Felix Tintelnot. 2023. "[Spatial Economics for Granular Settings](http://www.jdingel.com/research/DingelTintelnotSEGS.pdf)." Working paper.

#### Week 11: Skill-biased agglomeration

-   Diamond, Rebecca. 2016. "[The Determinants and Welfare Implications of US Workers’ Diverging Location Choices by Skill: 1980-2000](http://www.aeaweb.org/articles?id=10.1257/aer.20131706)." *American Economic Review*, 106(3): 479-524.

-   Davis, Donald R. and Jonathan I. Dingel. 2019. "[A Spatial Knowledge Economy](https://www.aeaweb.org/articles?id=10.1257/aer.20130249)." *American Economic Review*, 109 (1): 153-70.

#### Week 12: Trade policy

-	Fajgelbaum, Pablo D., Pinelopi K. Goldberg, Patrick J. Kennedy, and Amit K. Khandelwal. 2020. "[The Return to Protectionism](https://doi.org/10.1093/qje/qjz036)." *The Quarterly Journal of Economics*, 135(1):1–55.

#### Week 13: Spatial environmental economics

- Clare Balboni, Joe Shapiro. 2024. "[Spatial Environmental Economics](https://ies.princeton.edu/wp-content/uploads/2024/09/Spatial_Environmental_Economics.pdf)". Prepared for *Handbook of Regional and Urban Economics*.
- Tomas Domınguez-Iino. 2023. "[Spatial Economics and Environmental Policies](https://tdomingueziino.github.io/domingueziino_handbook_LHRPE_2023.pdf)". *Handbook of Labor, Human Resources and Population Economics*.

### Topics covered in other years (not fall 2025)

#### Week W: Discrete choice estimation and simulations

- Donald R. Davis, Jonathan I. Dingel, Joan Monras, and Eduardo Morales. 2019. "[How Segregated Is Urban Consumption?](http://www.jdingel.com/research/DavisDingelMonrasMorales.pdf)" *Journal of Political Economy* 127:4, 1684-1738.

#### Week X: Non-homothetic preferences

-   Dingel, Jonathan I. 2017. "[The Determinants of Quality Specialization](http://academic.oup.com/restud/article/84/4/1551/2684498)", *Review of Economic Studies*, 84(4): 1551-1582.

-   Matsuyama, Kiminori. 2019. "[Engel's Law in the Global Economy: Demand‐Induced Patterns of Structural Change, Innovation, and Trade](https://onlinelibrary-wiley-com/doi/10.3982/ECTA13765)", *Econometrica* 87: 497-528.

#### Week Y: The canonical urban model

- Murphy, Kevin. "[Location Choice: An Introduction to Compensating Differences](https://www.youtube.com/watch?v=PbudgN5S48I). YouTube.

- Thisse, Jacques-Francois, Matthew A. Turner, Philip Ushchev. 2023. "[Foundations of Cities](https://matthewturner.org/papers/unpublished/Thisse_Turner_Ushchev_unp_2023.pdf)". Working paper.

- Proost, Stef, and Jacques-François Thisse. 2019. "[What Can Be Learned from Spatial Economics?](https://www.aeaweb.org/articles?id=10.1257/jel.20181414)" *Journal of Economic Literature*, 57 (3): 575-643.

- Davis, Donald R. and Jonathan I. Dingel. 2020. "[The Comparative Advantage of Cities.](http://www.jdingel.com/research/DavisDingel-TheComparativeAdvantageofCities.pdf)" *Journal of International Economics*.

#### Week Z: Multi-region firms

- Hsieh, Chang-Tai, and Esteban Rossi-Hansberg. 2023. "[The Industrial Revolution in Services](http://doi.org/10.1086/723009)" *Journal of Political Economy Macroeconomics* 1:1, 3-42.
- Xavier Giroud, Simone Lenzu, Quinn Maingi, Holger Mueller. 2024. "[Propagation and Amplification of Local Productivity Spillovers](https://doi.org/10.3982/ECTA20029)" *Econometrica* 92:5, 1589-1619.

