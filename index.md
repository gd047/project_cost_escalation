---
title       : Cost Escalation estimation 
subtitle    : for construction projects
author      : hwhd
job         : data products developer
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax, bootstrap]  # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
logo        : kraft2.jpg
---

## Project  cost growth
<style>
strong {
  font-weight: bold;
}
em {
  font-style: italic;
}
.description {
  color: #345962;
  background:#EEE;
  font-weight:bold;
}
.footnote { 
font-size: smaller; margin-left: 2em; 
}
</style>




The fraction of the additional project cost, per year of project duration, is given by the following formula:
  $$p = \frac{A}{T \cdot P},$$ 
where **$A$** is the <span class="description">additional amount of money</span> (mostly due to inflation), that was spent during the <span class="description">total project duration</span> **$(T)$** in years, and **$P$** denotes the <span class="description">original budgeted amount</span> (MEURO). 

> - Rearranging terms we get: $A = p \cdot (T \cdot P).$
> - A new, composite variable **$(TP)$** can be generated, as the product of $T$ and $P$.
> - Fitting a simple linear regression model, of the form:
$$lm(A \sim TP)$$
can give us an estimate of the unknown parameter $p$.

--- 

## A Shiny app to estimate the additional project cost

- A construction management company has at its disposal historical data for the variables **A**, **T** and **P**. The [Shiny application](http://hwhd.shinyapps.io/pr_cost_esc) that has been created, fits a <span class="description">segmented simple linear regression model</span> (without intercept) to that data. The resulting model has the following form ^* :


$$\hat{A} = \begin{cases}
  2.915\% \cdot T_{years} \cdot P_{MEURO} & \text{for $T_{years} \cdot P_{MEURO} \le 130.12$} \\
  1.52 + 1.75\% \cdot T_{years} \cdot P_{MEURO} & \text{for $T_{years} \cdot P_{MEURO} > 130.12$}
\end{cases}$$
> - On the sidebar panel, users can input values for the predictor variables, (total project duration, **T** and original budgeted amount, **P**), and obtain predictions for the additional project cost (**A**) on the **Results** tabPanel. The fitted value is shown both on the scatterplot's $y$ axis and in a table at the bottom of the screen.  
> - Additionaly, there is a <code>list input control</code> on the sidebar, where users can select the confidence level of the generated prediction, among the values 80%, 90% and 95%. Accordingly, a prediction interval is indicated on the scatterplot, along with the fitted value. The <strong><em>Upper</em></strong> and <strong><em>Lower</em></strong> confidence limits also appear in the table at the bottom. 

<span class="footnote">^* The $\LaTeX$ formula contains embedded R code that gets run when slidifying the document</span>


--- bg:#EEE

## Warnings, Diagnostics and Documentation

In case the fitted value lies beyond the plot area, the scatterplot's axes limits dynamically adopt suitable values, so that the point be visible.   

<div class="alert alert-info">
<p>A warning message appears on the screen, when the given values are forcing the model to extrapolate beyond the range of the original data.</p>
</div>

The application contains two additional tabs:

> - Diagnostics: A summary of the fitted model as well as a plot of it, are displayed here. The percentage of additional project cost relative to the original budgeted amounnt, per year of project duration, can be inferred by the information given in this tab.
> - Documentation: This final tab contains a brief description of the application, information about the author and references to publications or products that have been used during the implementation.  


--- {class: class, tpl: tabs}

This is to test if the tab template works correctly

*** {class: active, id: question}

For a project with initial duration of 36 months with an original budgeted amount of 100,000 k?, give an estimate for the increase of the additional project cost that will be caused by the approval of a 6 months time overrun, if the original budgeted amount remains the same.


*** {id: answer}

870,000 ?

*** {id: finally}
## Thank You

<br><br><br><br><br><br><br> 
<div style='text-align: right;'>
    Slidify is Awesome <br><br>
    <img src='assets/img/kraft3.bmp' />
</div>


--- 

## googleVis

<!-- MotionChart generated in R 3.1.0 by googleVis 0.5.2 package -->
<!-- Wed Jun 18 17:42:26 2014 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataMotionChartID19474d0182 () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
 ".TOTAL_act",
new Date(2014,0,1),
420,
420,
1 
],
[
 ".TOTAL_act",
new Date(2014,1,1),
5521,
5941,
1 
],
[
 ".TOTAL_act",
new Date(2014,2,1),
4880,
10821,
1 
],
[
 ".TOTAL_act",
new Date(2014,3,1),
9313,
20135,
1 
],
[
 ".TOTAL_act",
new Date(2014,4,1),
3215,
23349,
1 
],
[
 ".TOTAL_act",
new Date(2014,5,1),
7331,
30680,
1 
],
[
 ".TOTAL_base",
new Date(2014,0,1),
523,
523,
0 
],
[
 ".TOTAL_base",
new Date(2014,1,1),
10202,
10725,
0 
],
[
 ".TOTAL_base",
new Date(2014,2,1),
18900,
29625,
0 
],
[
 ".TOTAL_base",
new Date(2014,3,1),
25027,
54652,
0 
],
[
 ".TOTAL_base",
new Date(2014,4,1),
24956,
79608,
0 
],
[
 ".TOTAL_base",
new Date(2014,5,1),
23259,
102867,
0 
],
[
 ".TOTAL_base",
new Date(2014,6,1),
32743,
135610,
0 
],
[
 ".TOTAL_base",
new Date(2014,7,1),
37226,
172836,
0 
],
[
 ".TOTAL_base",
new Date(2014,8,1),
32697,
205533,
0 
],
[
 ".TOTAL_base",
new Date(2014,9,1),
32258,
237791,
0 
],
[
 ".TOTAL_base",
new Date(2014,10,1),
31337,
269128,
0 
],
[
 ".TOTAL_base",
new Date(2014,11,1),
36136,
305264,
0 
],
[
 ".TOTAL_upd",
new Date(2014,0,1),
420,
420,
1 
],
[
 ".TOTAL_upd",
new Date(2014,1,1),
5521,
5941,
1 
],
[
 ".TOTAL_upd",
new Date(2014,2,1),
4880,
10821,
1 
],
[
 ".TOTAL_upd",
new Date(2014,3,1),
21864,
32686,
2 
],
[
 ".TOTAL_upd",
new Date(2014,4,1),
22428,
55114,
2 
],
[
 ".TOTAL_upd",
new Date(2014,5,1),
25528,
80642,
2 
],
[
 ".TOTAL_upd",
new Date(2014,6,1),
32267,
112909,
2 
],
[
 ".TOTAL_upd",
new Date(2014,7,1),
35114,
148023,
2 
],
[
 ".TOTAL_upd",
new Date(2014,8,1),
29271,
177294,
2 
],
[
 ".TOTAL_upd",
new Date(2014,9,1),
34687,
211981,
2 
],
[
 ".TOTAL_upd",
new Date(2014,10,1),
35180,
247162,
2 
],
[
 ".TOTAL_upd",
new Date(2014,11,1),
40182,
287344,
2 
],
[
 ".Δ.Ε.1_act",
new Date(2014,0,1),
420,
420,
1 
],
[
 ".Δ.Ε.1_act",
new Date(2014,1,1),
2083,
2503,
1 
],
[
 ".Δ.Ε.1_act",
new Date(2014,2,1),
3323,
5827,
1 
],
[
 ".Δ.Ε.1_act",
new Date(2014,3,1),
4514,
10341,
1 
],
[
 ".Δ.Ε.1_act",
new Date(2014,4,1),
3215,
13555,
1 
],
[
 ".Δ.Ε.1_act",
new Date(2014,5,1),
131,
13686,
1 
],
[
 ".Δ.Ε.1_base",
new Date(2014,0,1),
523,
523,
0 
],
[
 ".Δ.Ε.1_base",
new Date(2014,1,1),
2795,
3318,
0 
],
[
 ".Δ.Ε.1_base",
new Date(2014,2,1),
5271,
8589,
0 
],
[
 ".Δ.Ε.1_base",
new Date(2014,3,1),
6505,
15094,
0 
],
[
 ".Δ.Ε.1_base",
new Date(2014,4,1),
8176,
23270,
0 
],
[
 ".Δ.Ε.1_base",
new Date(2014,5,1),
8621,
31891,
0 
],
[
 ".Δ.Ε.1_base",
new Date(2014,6,1),
11867,
43758,
0 
],
[
 ".Δ.Ε.1_base",
new Date(2014,7,1),
15650,
59408,
0 
],
[
 ".Δ.Ε.1_base",
new Date(2014,8,1),
18371,
77779,
0 
],
[
 ".Δ.Ε.1_base",
new Date(2014,9,1),
17850,
95629,
0 
],
[
 ".Δ.Ε.1_base",
new Date(2014,10,1),
18150,
113779,
0 
],
[
 ".Δ.Ε.1_base",
new Date(2014,11,1),
18316,
132095,
0 
],
[
 ".Δ.Ε.1_upd",
new Date(2014,0,1),
420,
420,
1 
],
[
 ".Δ.Ε.1_upd",
new Date(2014,1,1),
2083,
2503,
1 
],
[
 ".Δ.Ε.1_upd",
new Date(2014,2,1),
3323,
5827,
1 
],
[
 ".Δ.Ε.1_upd",
new Date(2014,3,1),
3671,
9498,
2 
],
[
 ".Δ.Ε.1_upd",
new Date(2014,4,1),
5500,
14998,
2 
],
[
 ".Δ.Ε.1_upd",
new Date(2014,5,1),
8426,
23424,
2 
],
[
 ".Δ.Ε.1_upd",
new Date(2014,6,1),
10867,
34291,
2 
],
[
 ".Δ.Ε.1_upd",
new Date(2014,7,1),
12650,
46941,
2 
],
[
 ".Δ.Ε.1_upd",
new Date(2014,8,1),
14671,
61612,
2 
],
[
 ".Δ.Ε.1_upd",
new Date(2014,9,1),
18867,
80479,
2 
],
[
 ".Δ.Ε.1_upd",
new Date(2014,10,1),
17500,
97979,
2 
],
[
 ".Δ.Ε.1_upd",
new Date(2014,11,1),
19636,
117615,
2 
],
[
 ".Δ.Ε.2_act",
new Date(2014,1,1),
3438,
3438,
1 
],
[
 ".Δ.Ε.2_act",
new Date(2014,2,1),
1557,
4995,
1 
],
[
 ".Δ.Ε.2_act",
new Date(2014,3,1),
4799,
9794,
1 
],
[
 ".Δ.Ε.2_act",
new Date(2014,5,1),
7199,
16993,
1 
],
[
 ".Δ.Ε.2_base",
new Date(2014,1,1),
7407,
7407,
0 
],
[
 ".Δ.Ε.2_base",
new Date(2014,2,1),
13629,
21036,
0 
],
[
 ".Δ.Ε.2_base",
new Date(2014,3,1),
18522,
39558,
0 
],
[
 ".Δ.Ε.2_base",
new Date(2014,4,1),
16780,
56338,
0 
],
[
 ".Δ.Ε.2_base",
new Date(2014,5,1),
14638,
70976,
0 
],
[
 ".Δ.Ε.2_base",
new Date(2014,6,1),
20876,
91852,
0 
],
[
 ".Δ.Ε.2_base",
new Date(2014,7,1),
21576,
113428,
0 
],
[
 ".Δ.Ε.2_base",
new Date(2014,8,1),
14326,
127754,
0 
],
[
 ".Δ.Ε.2_base",
new Date(2014,9,1),
14408,
142162,
0 
],
[
 ".Δ.Ε.2_base",
new Date(2014,10,1),
13187,
155349,
0 
],
[
 ".Δ.Ε.2_base",
new Date(2014,11,1),
17820,
173169,
0 
],
[
 ".Δ.Ε.2_upd",
new Date(2014,1,1),
3438,
3438,
1 
],
[
 ".Δ.Ε.2_upd",
new Date(2014,2,1),
1557,
4995,
1 
],
[
 ".Δ.Ε.2_upd",
new Date(2014,3,1),
18193,
23188,
2 
],
[
 ".Δ.Ε.2_upd",
new Date(2014,4,1),
16928,
40116,
2 
],
[
 ".Δ.Ε.2_upd",
new Date(2014,5,1),
17102,
57218,
2 
],
[
 ".Δ.Ε.2_upd",
new Date(2014,6,1),
21400,
78618,
2 
],
[
 ".Δ.Ε.2_upd",
new Date(2014,7,1),
22464,
101082,
2 
],
[
 ".Δ.Ε.2_upd",
new Date(2014,8,1),
14600,
115682,
2 
],
[
 ".Δ.Ε.2_upd",
new Date(2014,9,1),
15820,
131502,
2 
],
[
 ".Δ.Ε.2_upd",
new Date(2014,10,1),
17680,
149182,
2 
],
[
 ".Δ.Ε.2_upd",
new Date(2014,11,1),
20546,
169729,
2 
],
[
 "265/2_base",
new Date(2014,2,1),
300,
300,
0 
],
[
 "265/2_base",
new Date(2014,3,1),
0,
300,
0 
],
[
 "265/2_base",
new Date(2014,4,1),
0,
300,
0 
],
[
 "265/2_base",
new Date(2014,5,1),
0,
300,
0 
],
[
 "265/2_base",
new Date(2014,6,1),
0,
300,
0 
],
[
 "265/2_base",
new Date(2014,7,1),
0,
300,
0 
],
[
 "265/2_base",
new Date(2014,8,1),
0,
300,
0 
],
[
 "265/2_base",
new Date(2014,9,1),
0,
300,
0 
],
[
 "265/2_base",
new Date(2014,10,1),
0,
300,
0 
],
[
 "265/2_base",
new Date(2014,11,1),
0,
300,
0 
],
[
 "265/2_upd",
new Date(2014,3,1),
0,
0,
2 
],
[
 "265/2_upd",
new Date(2014,4,1),
300,
300,
2 
],
[
 "265/2_upd",
new Date(2014,5,1),
0,
300,
2 
],
[
 "265/2_upd",
new Date(2014,6,1),
0,
300,
2 
],
[
 "265/2_upd",
new Date(2014,7,1),
0,
300,
2 
],
[
 "265/2_upd",
new Date(2014,8,1),
0,
300,
2 
],
[
 "265/2_upd",
new Date(2014,9,1),
0,
300,
2 
],
[
 "265/2_upd",
new Date(2014,10,1),
0,
300,
2 
],
[
 "265/2_upd",
new Date(2014,11,1),
0,
300,
2 
],
[
 "265/3_base",
new Date(2014,2,1),
150,
150,
0 
],
[
 "265/3_base",
new Date(2014,3,1),
702,
852,
0 
],
[
 "265/3_base",
new Date(2014,4,1),
0,
852,
0 
],
[
 "265/3_base",
new Date(2014,5,1),
0,
852,
0 
],
[
 "265/3_base",
new Date(2014,6,1),
0,
852,
0 
],
[
 "265/3_base",
new Date(2014,7,1),
0,
852,
0 
],
[
 "265/3_base",
new Date(2014,8,1),
0,
852,
0 
],
[
 "265/3_base",
new Date(2014,9,1),
0,
852,
0 
],
[
 "265/3_base",
new Date(2014,10,1),
0,
852,
0 
],
[
 "265/3_base",
new Date(2014,11,1),
0,
852,
0 
],
[
 "265/3_upd",
new Date(2014,3,1),
0,
0,
2 
],
[
 "265/3_upd",
new Date(2014,4,1),
150,
150,
2 
],
[
 "265/3_upd",
new Date(2014,5,1),
702,
852,
2 
],
[
 "265/3_upd",
new Date(2014,6,1),
0,
852,
2 
],
[
 "265/3_upd",
new Date(2014,7,1),
0,
852,
2 
],
[
 "265/3_upd",
new Date(2014,8,1),
0,
852,
2 
],
[
 "265/3_upd",
new Date(2014,9,1),
0,
852,
2 
],
[
 "265/3_upd",
new Date(2014,10,1),
0,
852,
2 
],
[
 "265/3_upd",
new Date(2014,11,1),
0,
852,
2 
],
[
 "265_act",
new Date(2014,1,1),
1312,
1312,
1 
],
[
 "265_base",
new Date(2014,1,1),
1325,
1325,
0 
],
[
 "265_base",
new Date(2014,2,1),
1500,
2825,
0 
],
[
 "265_base",
new Date(2014,3,1),
1000,
3825,
0 
],
[
 "265_base",
new Date(2014,4,1),
1200,
5025,
0 
],
[
 "265_base",
new Date(2014,5,1),
0,
5025,
0 
],
[
 "265_base",
new Date(2014,6,1),
0,
5025,
0 
],
[
 "265_base",
new Date(2014,7,1),
0,
5025,
0 
],
[
 "265_base",
new Date(2014,8,1),
0,
5025,
0 
],
[
 "265_base",
new Date(2014,9,1),
0,
5025,
0 
],
[
 "265_base",
new Date(2014,10,1),
0,
5025,
0 
],
[
 "265_base",
new Date(2014,11,1),
0,
5025,
0 
],
[
 "265_upd",
new Date(2014,1,1),
1312,
1312,
1 
],
[
 "265_upd",
new Date(2014,3,1),
0,
1312,
2 
],
[
 "265_upd",
new Date(2014,4,1),
1500,
2812,
2 
],
[
 "265_upd",
new Date(2014,5,1),
1000,
3812,
2 
],
[
 "265_upd",
new Date(2014,6,1),
500,
4312,
2 
],
[
 "265_upd",
new Date(2014,7,1),
0,
4312,
2 
],
[
 "265_upd",
new Date(2014,8,1),
0,
4312,
2 
],
[
 "265_upd",
new Date(2014,9,1),
0,
4312,
2 
],
[
 "265_upd",
new Date(2014,10,1),
0,
4312,
2 
],
[
 "265_upd",
new Date(2014,11,1),
0,
4312,
2 
],
[
 "379_base",
new Date(2014,11,1),
200,
200,
0 
],
[
 "379_upd",
new Date(2014,11,1),
200,
200,
2 
],
[
 "458_act",
new Date(2014,3,1),
407,
407,
1 
],
[
 "458_base",
new Date(2014,2,1),
400,
400,
0 
],
[
 "458_base",
new Date(2014,3,1),
400,
800,
0 
],
[
 "458_base",
new Date(2014,4,1),
400,
1200,
0 
],
[
 "458_base",
new Date(2014,5,1),
0,
1200,
0 
],
[
 "458_base",
new Date(2014,6,1),
0,
1200,
0 
],
[
 "458_base",
new Date(2014,7,1),
0,
1200,
0 
],
[
 "458_base",
new Date(2014,8,1),
0,
1200,
0 
],
[
 "458_base",
new Date(2014,9,1),
0,
1200,
0 
],
[
 "458_base",
new Date(2014,10,1),
0,
1200,
0 
],
[
 "458_base",
new Date(2014,11,1),
500,
1700,
0 
],
[
 "458_upd",
new Date(2014,3,1),
400,
400,
2 
],
[
 "458_upd",
new Date(2014,4,1),
400,
800,
2 
],
[
 "458_upd",
new Date(2014,5,1),
400,
1200,
2 
],
[
 "458_upd",
new Date(2014,6,1),
0,
1200,
2 
],
[
 "458_upd",
new Date(2014,7,1),
0,
1200,
2 
],
[
 "458_upd",
new Date(2014,8,1),
0,
1200,
2 
],
[
 "458_upd",
new Date(2014,9,1),
0,
1200,
2 
],
[
 "458_upd",
new Date(2014,10,1),
0,
1200,
2 
],
[
 "458_upd",
new Date(2014,11,1),
500,
1700,
2 
],
[
 "465_base",
new Date(2014,6,1),
17,
17,
0 
],
[
 "465_upd",
new Date(2014,6,1),
17,
17,
2 
],
[
 "470_act",
new Date(2014,1,1),
2126,
2126,
1 
],
[
 "470_act",
new Date(2014,2,1),
1557,
3683,
1 
],
[
 "470_act",
new Date(2014,3,1),
1837,
5520,
1 
],
[
 "470_act",
new Date(2014,5,1),
5601,
11121,
1 
],
[
 "470_base",
new Date(2014,1,1),
2000,
2000,
0 
],
[
 "470_base",
new Date(2014,2,1),
3000,
5000,
0 
],
[
 "470_base",
new Date(2014,3,1),
3000,
8000,
0 
],
[
 "470_base",
new Date(2014,4,1),
3000,
11000,
0 
],
[
 "470_base",
new Date(2014,5,1),
3000,
14000,
0 
],
[
 "470_base",
new Date(2014,6,1),
6000,
20000,
0 
],
[
 "470_base",
new Date(2014,7,1),
3000,
23000,
0 
],
[
 "470_base",
new Date(2014,8,1),
3000,
26000,
0 
],
[
 "470_base",
new Date(2014,9,1),
3000,
29000,
0 
],
[
 "470_base",
new Date(2014,10,1),
3000,
32000,
0 
],
[
 "470_base",
new Date(2014,11,1),
3000,
35000,
0 
],
[
 "470_upd",
new Date(2014,1,1),
2126,
2126,
1 
],
[
 "470_upd",
new Date(2014,2,1),
1557,
3683,
1 
],
[
 "470_upd",
new Date(2014,3,1),
1837,
5520,
2 
],
[
 "470_upd",
new Date(2014,4,1),
3000,
8520,
2 
],
[
 "470_upd",
new Date(2014,5,1),
3500,
12020,
2 
],
[
 "470_upd",
new Date(2014,6,1),
6000,
18020,
2 
],
[
 "470_upd",
new Date(2014,7,1),
3500,
21520,
2 
],
[
 "470_upd",
new Date(2014,8,1),
3000,
24520,
2 
],
[
 "470_upd",
new Date(2014,9,1),
3600,
28120,
2 
],
[
 "470_upd",
new Date(2014,10,1),
3880,
32000,
2 
],
[
 "470_upd",
new Date(2014,11,1),
3000,
35000,
2 
],
[
 "498_base",
new Date(2014,9,1),
20,
20,
0 
],
[
 "498_upd",
new Date(2014,9,1),
20,
20,
2 
],
[
 "510_act",
new Date(2014,5,1),
-2011,
-2011,
1 
],
[
 "512_act",
new Date(2014,1,1),
1857,
1857,
1 
],
[
 "512_act",
new Date(2014,2,1),
1378,
3235,
1 
],
[
 "512_act",
new Date(2014,3,1),
1554,
4789,
1 
],
[
 "512_act",
new Date(2014,4,1),
1019,
5808,
1 
],
[
 "512_act",
new Date(2014,5,1),
1219,
7026,
1 
],
[
 "512_base",
new Date(2014,1,1),
1100,
1100,
0 
],
[
 "512_base",
new Date(2014,2,1),
1100,
2200,
0 
],
[
 "512_base",
new Date(2014,3,1),
1500,
3700,
0 
],
[
 "512_base",
new Date(2014,4,1),
1600,
5300,
0 
],
[
 "512_base",
new Date(2014,5,1),
1900,
7200,
0 
],
[
 "512_base",
new Date(2014,6,1),
2000,
9200,
0 
],
[
 "512_base",
new Date(2014,7,1),
2000,
11200,
0 
],
[
 "512_base",
new Date(2014,8,1),
1900,
13100,
0 
],
[
 "512_base",
new Date(2014,9,1),
2200,
15300,
0 
],
[
 "512_base",
new Date(2014,10,1),
2200,
17500,
0 
],
[
 "512_base",
new Date(2014,11,1),
2450,
19950,
0 
],
[
 "512_upd",
new Date(2014,1,1),
1857,
1857,
1 
],
[
 "512_upd",
new Date(2014,2,1),
1378,
3235,
1 
],
[
 "512_upd",
new Date(2014,3,1),
950,
4185,
2 
],
[
 "512_upd",
new Date(2014,4,1),
1000,
5185,
2 
],
[
 "512_upd",
new Date(2014,5,1),
1100,
6285,
2 
],
[
 "512_upd",
new Date(2014,6,1),
1200,
7485,
2 
],
[
 "512_upd",
new Date(2014,7,1),
1200,
8685,
2 
],
[
 "512_upd",
new Date(2014,8,1),
1900,
10585,
2 
],
[
 "512_upd",
new Date(2014,9,1),
2200,
12785,
2 
],
[
 "512_upd",
new Date(2014,10,1),
2100,
14885,
2 
],
[
 "512_upd",
new Date(2014,11,1),
2086,
16971,
2 
],
[
 "533/1_base",
new Date(2014,3,1),
186,
186,
0 
],
[
 "533/1_upd",
new Date(2014,9,1),
186,
186,
2 
],
[
 "533_base",
new Date(2014,3,1),
269,
269,
0 
],
[
 "533_upd",
new Date(2014,9,1),
269,
269,
2 
],
[
 "535/1_base",
new Date(2014,2,1),
228,
228,
0 
],
[
 "535/1_base",
new Date(2014,3,1),
0,
228,
0 
],
[
 "535/1_base",
new Date(2014,4,1),
0,
228,
0 
],
[
 "535/1_base",
new Date(2014,5,1),
0,
228,
0 
],
[
 "535/1_base",
new Date(2014,6,1),
0,
228,
0 
],
[
 "535/1_base",
new Date(2014,7,1),
0,
228,
0 
],
[
 "535/1_base",
new Date(2014,8,1),
0,
228,
0 
],
[
 "535/1_base",
new Date(2014,9,1),
0,
228,
0 
],
[
 "535/1_base",
new Date(2014,10,1),
0,
228,
0 
],
[
 "535/1_base",
new Date(2014,11,1),
0,
228,
0 
],
[
 "535/1_upd",
new Date(2014,3,1),
0,
0,
2 
],
[
 "535/1_upd",
new Date(2014,4,1),
228,
228,
2 
],
[
 "535/1_upd",
new Date(2014,5,1),
0,
228,
2 
],
[
 "535/1_upd",
new Date(2014,6,1),
0,
228,
2 
],
[
 "535/1_upd",
new Date(2014,7,1),
0,
228,
2 
],
[
 "535/1_upd",
new Date(2014,8,1),
0,
228,
2 
],
[
 "535/1_upd",
new Date(2014,9,1),
0,
228,
2 
],
[
 "535/1_upd",
new Date(2014,10,1),
0,
228,
2 
],
[
 "535/1_upd",
new Date(2014,11,1),
0,
228,
2 
],
[
 "535_act",
new Date(2014,3,1),
834,
834,
1 
],
[
 "535_base",
new Date(2014,2,1),
1401,
1401,
0 
],
[
 "535_base",
new Date(2014,3,1),
2000,
3401,
0 
],
[
 "535_base",
new Date(2014,4,1),
0,
3401,
0 
],
[
 "535_base",
new Date(2014,5,1),
0,
3401,
0 
],
[
 "535_base",
new Date(2014,6,1),
0,
3401,
0 
],
[
 "535_base",
new Date(2014,7,1),
0,
3401,
0 
],
[
 "535_base",
new Date(2014,8,1),
0,
3401,
0 
],
[
 "535_base",
new Date(2014,9,1),
0,
3401,
0 
],
[
 "535_base",
new Date(2014,10,1),
0,
3401,
0 
],
[
 "535_base",
new Date(2014,11,1),
0,
3401,
0 
],
[
 "535_upd",
new Date(2014,3,1),
834,
834,
2 
],
[
 "535_upd",
new Date(2014,4,1),
400,
1234,
2 
],
[
 "535_upd",
new Date(2014,5,1),
0,
1234,
2 
],
[
 "535_upd",
new Date(2014,6,1),
0,
1234,
2 
],
[
 "535_upd",
new Date(2014,7,1),
0,
1234,
2 
],
[
 "535_upd",
new Date(2014,8,1),
0,
1234,
2 
],
[
 "535_upd",
new Date(2014,9,1),
0,
1234,
2 
],
[
 "535_upd",
new Date(2014,10,1),
0,
1234,
2 
],
[
 "535_upd",
new Date(2014,11,1),
0,
1234,
2 
],
[
 "540_base",
new Date(2014,11,1),
165,
165,
0 
],
[
 "540_upd",
new Date(2014,11,1),
165,
165,
2 
],
[
 "541_act",
new Date(2014,0,1),
420,
420,
1 
],
[
 "541_act",
new Date(2014,1,1),
226,
646,
1 
],
[
 "541_act",
new Date(2014,2,1),
310,
956,
1 
],
[
 "541_act",
new Date(2014,3,1),
538,
1494,
1 
],
[
 "541_act",
new Date(2014,5,1),
859,
2353,
1 
],
[
 "541_base",
new Date(2014,0,1),
523,
523,
0 
],
[
 "541_base",
new Date(2014,1,1),
695,
1218,
0 
],
[
 "541_base",
new Date(2014,2,1),
2100,
3318,
0 
],
[
 "541_base",
new Date(2014,3,1),
2550,
5868,
0 
],
[
 "541_base",
new Date(2014,4,1),
3400,
9268,
0 
],
[
 "541_base",
new Date(2014,5,1),
3350,
12618,
0 
],
[
 "541_base",
new Date(2014,6,1),
3750,
16368,
0 
],
[
 "541_base",
new Date(2014,7,1),
4150,
20518,
0 
],
[
 "541_base",
new Date(2014,8,1),
2900,
23418,
0 
],
[
 "541_base",
new Date(2014,9,1),
1650,
25068,
0 
],
[
 "541_base",
new Date(2014,10,1),
1650,
26718,
0 
],
[
 "541_base",
new Date(2014,11,1),
900,
27618,
0 
],
[
 "541_upd",
new Date(2014,0,1),
420,
420,
1 
],
[
 "541_upd",
new Date(2014,1,1),
226,
646,
1 
],
[
 "541_upd",
new Date(2014,2,1),
310,
956,
1 
],
[
 "541_upd",
new Date(2014,3,1),
650,
1606,
2 
],
[
 "541_upd",
new Date(2014,4,1),
1500,
3106,
2 
],
[
 "541_upd",
new Date(2014,5,1),
3150,
6256,
2 
],
[
 "541_upd",
new Date(2014,6,1),
3550,
9806,
2 
],
[
 "541_upd",
new Date(2014,7,1),
4950,
14756,
2 
],
[
 "541_upd",
new Date(2014,8,1),
2700,
17456,
2 
],
[
 "541_upd",
new Date(2014,9,1),
3212,
20668,
2 
],
[
 "541_upd",
new Date(2014,10,1),
3100,
23768,
2 
],
[
 "541_upd",
new Date(2014,11,1),
3850,
27618,
2 
],
[
 "563_base",
new Date(2014,2,1),
500,
500,
0 
],
[
 "563_base",
new Date(2014,3,1),
0,
500,
0 
],
[
 "563_base",
new Date(2014,4,1),
1060,
1560,
0 
],
[
 "563_base",
new Date(2014,5,1),
0,
1560,
0 
],
[
 "563_base",
new Date(2014,6,1),
0,
1560,
0 
],
[
 "563_base",
new Date(2014,7,1),
0,
1560,
0 
],
[
 "563_base",
new Date(2014,8,1),
0,
1560,
0 
],
[
 "563_base",
new Date(2014,9,1),
0,
1560,
0 
],
[
 "563_base",
new Date(2014,10,1),
0,
1560,
0 
],
[
 "563_base",
new Date(2014,11,1),
0,
1560,
0 
],
[
 "563_upd",
new Date(2014,3,1),
0,
0,
2 
],
[
 "563_upd",
new Date(2014,4,1),
0,
0,
2 
],
[
 "563_upd",
new Date(2014,5,1),
0,
0,
2 
],
[
 "563_upd",
new Date(2014,6,1),
0,
0,
2 
],
[
 "563_upd",
new Date(2014,7,1),
0,
0,
2 
],
[
 "563_upd",
new Date(2014,8,1),
0,
0,
2 
],
[
 "563_upd",
new Date(2014,9,1),
500,
500,
2 
],
[
 "563_upd",
new Date(2014,10,1),
500,
1000,
2 
],
[
 "563_upd",
new Date(2014,11,1),
0,
1000,
2 
],
[
 "579_act",
new Date(2014,2,1),
1636,
1636,
1 
],
[
 "579_act",
new Date(2014,3,1),
2422,
4057,
1 
],
[
 "579_act",
new Date(2014,4,1),
2002,
6059,
1 
],
[
 "579_base",
new Date(2014,1,1),
1000,
1000,
0 
],
[
 "579_base",
new Date(2014,2,1),
2000,
3000,
0 
],
[
 "579_base",
new Date(2014,3,1),
2000,
5000,
0 
],
[
 "579_base",
new Date(2014,4,1),
3176,
8176,
0 
],
[
 "579_base",
new Date(2014,5,1),
3300,
11476,
0 
],
[
 "579_base",
new Date(2014,6,1),
6100,
17576,
0 
],
[
 "579_base",
new Date(2014,7,1),
6500,
24076,
0 
],
[
 "579_base",
new Date(2014,8,1),
8500,
32576,
0 
],
[
 "579_base",
new Date(2014,9,1),
9000,
41576,
0 
],
[
 "579_base",
new Date(2014,10,1),
8300,
49876,
0 
],
[
 "579_base",
new Date(2014,11,1),
8800,
58676,
0 
],
[
 "579_upd",
new Date(2014,2,1),
1636,
1636,
1 
],
[
 "579_upd",
new Date(2014,3,1),
2000,
3636,
2 
],
[
 "579_upd",
new Date(2014,4,1),
3000,
6636,
2 
],
[
 "579_upd",
new Date(2014,5,1),
4105,
10741,
2 
],
[
 "579_upd",
new Date(2014,6,1),
6100,
16841,
2 
],
[
 "579_upd",
new Date(2014,7,1),
6500,
23341,
2 
],
[
 "579_upd",
new Date(2014,8,1),
8500,
31841,
2 
],
[
 "579_upd",
new Date(2014,9,1),
9000,
40841,
2 
],
[
 "579_upd",
new Date(2014,10,1),
8300,
49141,
2 
],
[
 "579_upd",
new Date(2014,11,1),
9535,
58676,
2 
],
[
 "590_act",
new Date(2014,4,1),
194,
194,
1 
],
[
 "608_base",
new Date(2014,4,1),
200,
200,
0 
],
[
 "608_base",
new Date(2014,5,1),
0,
200,
0 
],
[
 "608_base",
new Date(2014,6,1),
0,
200,
0 
],
[
 "608_base",
new Date(2014,7,1),
0,
200,
0 
],
[
 "608_base",
new Date(2014,8,1),
0,
200,
0 
],
[
 "608_base",
new Date(2014,9,1),
0,
200,
0 
],
[
 "608_base",
new Date(2014,10,1),
0,
200,
0 
],
[
 "608_base",
new Date(2014,11,1),
232,
432,
0 
],
[
 "608_upd",
new Date(2014,4,1),
200,
200,
2 
],
[
 "608_upd",
new Date(2014,5,1),
0,
200,
2 
],
[
 "608_upd",
new Date(2014,6,1),
0,
200,
2 
],
[
 "608_upd",
new Date(2014,7,1),
0,
200,
2 
],
[
 "608_upd",
new Date(2014,8,1),
0,
200,
2 
],
[
 "608_upd",
new Date(2014,9,1),
0,
200,
2 
],
[
 "608_upd",
new Date(2014,10,1),
0,
200,
2 
],
[
 "608_upd",
new Date(2014,11,1),
232,
432,
2 
],
[
 "635_base",
new Date(2014,3,1),
10500,
10500,
0 
],
[
 "635_base",
new Date(2014,4,1),
10000,
20500,
0 
],
[
 "635_base",
new Date(2014,5,1),
10500,
31000,
0 
],
[
 "635_base",
new Date(2014,6,1),
10000,
41000,
0 
],
[
 "635_base",
new Date(2014,7,1),
10500,
51500,
0 
],
[
 "635_base",
new Date(2014,8,1),
10000,
61500,
0 
],
[
 "635_base",
new Date(2014,9,1),
10500,
72000,
0 
],
[
 "635_base",
new Date(2014,10,1),
10000,
82000,
0 
],
[
 "635_base",
new Date(2014,11,1),
11000,
93000,
0 
],
[
 "635_upd",
new Date(2014,3,1),
10500,
10500,
2 
],
[
 "635_upd",
new Date(2014,4,1),
10000,
20500,
2 
],
[
 "635_upd",
new Date(2014,5,1),
10500,
31000,
2 
],
[
 "635_upd",
new Date(2014,6,1),
10000,
41000,
2 
],
[
 "635_upd",
new Date(2014,7,1),
10500,
51500,
2 
],
[
 "635_upd",
new Date(2014,8,1),
10000,
61500,
2 
],
[
 "635_upd",
new Date(2014,9,1),
10500,
72000,
2 
],
[
 "635_upd",
new Date(2014,10,1),
10000,
82000,
2 
],
[
 "635_upd",
new Date(2014,11,1),
11000,
93000,
2 
],
[
 "698_base",
new Date(2014,11,1),
2000,
2000,
0 
],
[
 "698_upd",
new Date(2014,11,1),
2000,
2000,
2 
],
[
 "700_act",
new Date(2014,3,1),
1599,
1599,
1 
],
[
 "700_act",
new Date(2014,5,1),
1598,
3197,
1 
],
[
 "700_base",
new Date(2014,1,1),
3950,
3950,
0 
],
[
 "700_base",
new Date(2014,2,1),
5630,
9580,
0 
],
[
 "700_base",
new Date(2014,3,1),
550,
10130,
0 
],
[
 "700_base",
new Date(2014,4,1),
550,
10680,
0 
],
[
 "700_base",
new Date(2014,5,1),
600,
11280,
0 
],
[
 "700_base",
new Date(2014,6,1),
3000,
14280,
0 
],
[
 "700_base",
new Date(2014,7,1),
2300,
16580,
0 
],
[
 "700_base",
new Date(2014,8,1),
800,
17380,
0 
],
[
 "700_base",
new Date(2014,9,1),
500,
17880,
0 
],
[
 "700_base",
new Date(2014,10,1),
99,
17979,
0 
],
[
 "700_base",
new Date(2014,11,1),
0,
17979,
0 
],
[
 "700_upd",
new Date(2014,3,1),
4500,
4500,
2 
],
[
 "700_upd",
new Date(2014,4,1),
550,
5050,
2 
],
[
 "700_upd",
new Date(2014,5,1),
600,
5650,
2 
],
[
 "700_upd",
new Date(2014,6,1),
3000,
8650,
2 
],
[
 "700_upd",
new Date(2014,7,1),
2300,
10950,
2 
],
[
 "700_upd",
new Date(2014,8,1),
800,
11750,
2 
],
[
 "700_upd",
new Date(2014,9,1),
500,
12250,
2 
],
[
 "700_upd",
new Date(2014,10,1),
3000,
15250,
2 
],
[
 "700_upd",
new Date(2014,11,1),
2729,
17979,
2 
],
[
 "705_act",
new Date(2014,3,1),
123,
123,
1 
],
[
 "705_base",
new Date(2014,1,1),
132,
132,
0 
],
[
 "705_base",
new Date(2014,2,1),
220,
352,
0 
],
[
 "705_base",
new Date(2014,3,1),
220,
572,
0 
],
[
 "705_base",
new Date(2014,4,1),
220,
792,
0 
],
[
 "705_base",
new Date(2014,5,1),
88,
880,
0 
],
[
 "705_base",
new Date(2014,6,1),
176,
1056,
0 
],
[
 "705_base",
new Date(2014,7,1),
176,
1232,
0 
],
[
 "705_base",
new Date(2014,8,1),
176,
1408,
0 
],
[
 "705_base",
new Date(2014,9,1),
88,
1496,
0 
],
[
 "705_base",
new Date(2014,10,1),
88,
1584,
0 
],
[
 "705_base",
new Date(2014,11,1),
88,
1672,
0 
],
[
 "705_upd",
new Date(2014,3,1),
123,
123,
2 
],
[
 "705_upd",
new Date(2014,4,1),
0,
123,
2 
],
[
 "705_upd",
new Date(2014,5,1),
0,
123,
2 
],
[
 "705_upd",
new Date(2014,6,1),
200,
323,
2 
],
[
 "705_upd",
new Date(2014,7,1),
364,
687,
2 
],
[
 "705_upd",
new Date(2014,8,1),
300,
987,
2 
],
[
 "705_upd",
new Date(2014,9,1),
300,
1287,
2 
],
[
 "705_upd",
new Date(2014,10,1),
300,
1587,
2 
],
[
 "705_upd",
new Date(2014,11,1),
85,
1672,
2 
],
[
 "715_base",
new Date(2014,7,1),
3000,
3000,
0 
],
[
 "715_base",
new Date(2014,8,1),
5000,
8000,
0 
],
[
 "715_base",
new Date(2014,9,1),
5000,
13000,
0 
],
[
 "715_base",
new Date(2014,10,1),
6000,
19000,
0 
],
[
 "715_base",
new Date(2014,11,1),
6000,
25000,
0 
],
[
 "715_upd",
new Date(2014,8,1),
1500,
1500,
2 
],
[
 "715_upd",
new Date(2014,9,1),
4000,
5500,
2 
],
[
 "715_upd",
new Date(2014,10,1),
4000,
9500,
2 
],
[
 "715_upd",
new Date(2014,11,1),
4000,
13500,
2 
],
[
 "717_base",
new Date(2014,7,1),
5200,
5200,
0 
],
[
 "717_base",
new Date(2014,8,1),
0,
5200,
0 
],
[
 "717_base",
new Date(2014,9,1),
0,
5200,
0 
],
[
 "717_base",
new Date(2014,10,1),
0,
5200,
0 
],
[
 "717_base",
new Date(2014,11,1),
800,
6000,
0 
],
[
 "717_upd",
new Date(2014,7,1),
5200,
5200,
2 
],
[
 "717_upd",
new Date(2014,8,1),
0,
5200,
2 
],
[
 "717_upd",
new Date(2014,9,1),
0,
5200,
2 
],
[
 "717_upd",
new Date(2014,10,1),
0,
5200,
2 
],
[
 "717_upd",
new Date(2014,11,1),
800,
6000,
2 
],
[
 "724_base",
new Date(2014,6,1),
1000,
1000,
0 
],
[
 "724_upd",
new Date(2014,6,1),
1000,
1000,
2 
],
[
 "737_act",
new Date(2014,5,1),
65,
65,
1 
],
[
 "737_base",
new Date(2014,2,1),
71,
71,
0 
],
[
 "737_base",
new Date(2014,5,1),
71,
142,
0 
],
[
 "737_base",
new Date(2014,8,1),
71,
213,
0 
],
[
 "737_upd",
new Date(2014,3,1),
71,
71,
2 
],
[
 "737_upd",
new Date(2014,5,1),
71,
142,
2 
],
[
 "737_upd",
new Date(2014,8,1),
71,
213,
2 
],
[
 "740_base",
new Date(2014,2,1),
300,
300,
0 
],
[
 "740_base",
new Date(2014,3,1),
150,
450,
0 
],
[
 "740_base",
new Date(2014,4,1),
150,
600,
0 
],
[
 "740_base",
new Date(2014,5,1),
450,
1050,
0 
],
[
 "740_base",
new Date(2014,6,1),
700,
1750,
0 
],
[
 "740_base",
new Date(2014,7,1),
400,
2150,
0 
],
[
 "740_base",
new Date(2014,8,1),
350,
2500,
0 
],
[
 "740_base",
new Date(2014,9,1),
300,
2800,
0 
],
[
 "740_base",
new Date(2014,10,1),
0,
2800,
0 
],
[
 "740_base",
new Date(2014,11,1),
0,
2800,
0 
],
[
 "740_upd",
new Date(2014,3,1),
0,
0,
2 
],
[
 "740_upd",
new Date(2014,4,1),
200,
200,
2 
],
[
 "740_upd",
new Date(2014,5,1),
400,
600,
2 
],
[
 "740_upd",
new Date(2014,6,1),
700,
1300,
2 
],
[
 "740_upd",
new Date(2014,7,1),
600,
1900,
2 
],
[
 "740_upd",
new Date(2014,8,1),
500,
2400,
2 
],
[
 "740_upd",
new Date(2014,9,1),
400,
2800,
2 
],
[
 "740_upd",
new Date(2014,10,1),
0,
2800,
2 
],
[
 "740_upd",
new Date(2014,11,1),
0,
2800,
2 
] 
];
data.addColumn('string','symv');
data.addColumn('date','pist_date');
data.addColumn('number','�.�.�.μ�.�.ο�.ο�.�.');
data.addColumn('number','�.θ�..�.�.�.μ�.�.ο�.ο�.�.');
data.addColumn('number','�.�.�.�.�.μ�.');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartMotionChartID19474d0182() {
var data = gvisDataMotionChartID19474d0182();
var options = {};
options["width"] = 916.56;
options["height"] = 549.45;
options["displayAnnotations"] = false;
options["state"] = "{\"iconKeySettings\":[{\"key\":{\"dim0\":\".TOTAL_act\"}},{\"key\":{\"dim0\":\".TOTAL_base\"}},{\"key\":{\"dim0\":\".TOTAL_upd\"}}],\"iconType\":\"LINE\",\"colorOption\":\"4\",\"nonSelectedAlpha\":0};";
options["legendPosition"] = "newRow";
options["showChartButtons"] = true;

    var chart = new google.visualization.MotionChart(
    document.getElementById('MotionChartID19474d0182')
    );
    chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "motionchart";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartMotionChartID19474d0182);
})();
function displayChartMotionChartID19474d0182() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}
 
// jsFooter
</script>
 
<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartMotionChartID19474d0182"></script>
 
<!-- divChart -->
  
<div id="MotionChartID19474d0182"
  style="width: 916.564px; height: 549.45px;">
</div>

