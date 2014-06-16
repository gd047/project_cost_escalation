---
title       : Cost Escalation estimation 
subtitle    : for construction projects
author      : hwhd
job         : data products developer
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax, bootstrap]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
logo        : kraft2.jpg
---

## Project  cost growth 

The fraction of the additional project cost, per year of project duration, is given by the following formula:
  $$p = \frac{A}{T \cdot P},$$ 
where **$A$** is the *additional amount* of money (mostly due to inflation), that was spent during the *total project duration* **$(T)$** in years, and **$P$** denotes the *original budgeted amount* (MEURO). 

> - Rearranging terms we get: $A = p \cdot (T \cdot P).$
> - A new composite variable **$(TP)$** can be generated, as the product of $T$ and $P$.
> - Fitting a simple linear regression model, of the form:
$$lm(A \sim TP)$$
can give us an estimate of the unknown parameter $p$.


<style>
strong {
  font-weight: bold;
}
em {
  font-style: italic;
}
</style>

--- 

## Slide 1

A construction management company has at its disposal historical data for the variables A, D and F.

Column X | Column Y
---------|---------
Row 1    |  Row 1
Row 2    |  Row 2


--- bg:#EEE

## Slide 2

<div class="alert alert-info">
<p>Finaly, a warning message appears in the screen when the given values are forcing the model to extrapolate beyond the range of the original data.</p>
</div>


--- .cover .w #FitToWidth

## Thank You

 Slidify is Awesome
<br><br><br><br><br><br>
<div style='text-align: right;'>
    <img height='50' src='assets/img/kraft3.bmp' />
</div>
