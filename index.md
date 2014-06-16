---
title       : Cost Escalation estimation 
subtitle    : for construction projects
author      : hwhd
job         : data products developer
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax, bootstrap, shiny, interactive]            # {mathjax, quiz, bootstrap}
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
> - A new composite variable **$(TP)$** can be generated, as the product of $T$ and $P$.
> - Fitting a simple linear regression model, of the form:
$$lm(A \sim TP)$$
can give us an estimate of the unknown parameter $p$.


--- 

## A Shiny app to estimate the additional project cost

- A construction management company has at its disposal historical data for the variables **A**, **T** and **P**. The [Shiny application](http://hwhd.shinyapps.io/pr_cost_esc) that has been created, fits a <span class="description">segmented simple linear regression model</span> (without intercept) to that data. The resulting model has the following form ^*:


$$\hat{A} = \begin{cases}
  2.915\% \cdot T_{years} \cdot P_{MEURO} & \text{for $T_{years} \cdot P_{MEURO} \le 130.12$} \\
  1.52 + 1.75\% \cdot T_{years} \cdot P_{MEURO} & \text{for $T_{years} \cdot P_{MEURO} > 130.12$}
\end{cases}$$
> - On the sidebar panel, users can input values for the predictor variables, (total project duration, **T** and original budgeted amount, **P**), and obtain predictions for the additional project cost (**A**) on the **Results** tabPanel. The fitted value is shown both on the statterplot y axis and in a table on the bottom of the screen.   
> - Additionaly, there is a list input control on the sidebar, where users can select the confidence level of the generated prediction, among the values 80%, 90% and 95%. Accordingly, a prediction interval is indicated, along with the fitted value on the scatterplot. The Upper and Lower confidence limits appear also in the table at the bottom. 

<span class="footnote">^* contains embedded R code that gets run when slidifying the document</span>


--- bg:#EEE

## Slide 2

<div class="alert alert-info">
<p>A warning message appears on the screen, when the given values are forcing the model to extrapolate beyond the range of the original data.</p>
</div>

The application contains two additional tabs with

> - The model summary and its plot



---

## Thank You

 Slidify is Awesome
<br><br><br><br><br><br>
<div style='text-align: right;'>
    <img height='20' src='assets/img/kraft3.bmp' />
</div>


