---
title: "Summary of Results "
description: |
  Detailled Script.
author:
  - name: Tarik Benmarhnia
    url: https://profiles.ucsd.edu/tarik.benmarhnia
    affiliation: UCSD & Scripps Institute
    affiliation_url: https://benmarhniaresearch.ucsd.edu/
  - name: Marie-Abèle Bind 
    url: https://scholar.harvard.edu/marie-abele
    affiliation: Biostatistics Center, Massachusetts General Hospital
    affiliation_url: https://biostatistics.massgeneral.org/faculty/marie-abele-bind-phd/
  - name: Léo Zabrocki 
    url: https://lzabrocki.github.io/
    affiliation: Paris School of Economics
    affiliation_url: https://www.parisschoolofeconomics.eu/fr/zabrocki-leo/
date: "2021-11-25"
output: 
    distill::distill_article:
      keep_md: true
      toc: true
      toc_depth: 3
editor_options: 
  chunk_output_type: console
---



<style>
body {
text-align: justify}
</style>


In this document, we display the results of the three matching procedures we implemented. **Should you have any questions, need help to reproduce the analysis or find coding errors, please do not hesitate to contact us at leo.zabrocki@psemail.eu**

# Required Packages and Data Loading

To reproduce exactly the `7_summary_results.html` document, we first need to have installed:

* the [R](https://www.r-project.org/) programming language 
* [RStudio](https://rstudio.com/), an integrated development environment for R, which will allow you to knit the `7_summary_results.Rmd` file and interact with the R code chunks
* the [R Markdown](https://rmarkdown.rstudio.com/) package
* and the [Distill](https://rstudio.github.io/distill/) package which provides the template for this document. 

Once everything is set up, we load the following packages:

<div class="layout-chunk" data-layout="l-body-outset">
<div class="sourceCode"><pre class="sourceCode r"><code class="sourceCode r"><span class='co'># load required packages</span>
<span class='kw'><a href='https://rdrr.io/r/base/library.html'>library</a></span><span class='op'>(</span><span class='va'><a href='https://yihui.org/knitr/'>knitr</a></span><span class='op'>)</span> <span class='co'># for creating the R Markdown document</span>
<span class='kw'><a href='https://rdrr.io/r/base/library.html'>library</a></span><span class='op'>(</span><span class='va'><a href='https://here.r-lib.org/'>here</a></span><span class='op'>)</span> <span class='co'># for files paths organization</span>
<span class='kw'><a href='https://rdrr.io/r/base/library.html'>library</a></span><span class='op'>(</span><span class='va'><a href='https://tidyverse.tidyverse.org'>tidyverse</a></span><span class='op'>)</span> <span class='co'># for data manipulation and visualization</span>
</code></pre></div>

</div>


We load the results of the three matching procedures:

<div class="layout-chunk" data-layout="l-body-outset">
<div class="sourceCode"><pre class="sourceCode r"><code class="sourceCode r"><span class='co'># load and bind data</span>
<span class='va'>files</span> <span class='op'>&lt;-</span> <span class='fu'><a href='https://rdrr.io/r/base/list.files.html'>dir</a></span><span class='op'>(</span>
  path <span class='op'>=</span> <span class='fu'>here</span><span class='fu'>::</span><span class='fu'><a href='https://here.r-lib.org//reference/here.html'>here</a></span><span class='op'>(</span><span class='st'>"3.outputs"</span>,
                    <span class='st'>"1.data"</span>,
                    <span class='st'>"analysis_results"</span><span class='op'>)</span>,
  pattern <span class='op'>=</span> <span class='st'>"*.RDS"</span>,
  full.names <span class='op'>=</span> <span class='cn'>TRUE</span>
<span class='op'>)</span>

<span class='va'>data</span> <span class='op'>&lt;-</span> <span class='va'>files</span> <span class='op'>%&gt;%</span>
  <span class='fu'>map</span><span class='op'>(</span><span class='op'>~</span> <span class='fu'><a href='https://rdrr.io/r/base/readRDS.html'>readRDS</a></span><span class='op'>(</span><span class='va'>.</span><span class='op'>)</span><span class='op'>)</span><span class='op'>%&gt;%</span> 
  <span class='fu'>reduce</span><span class='op'>(</span><span class='va'>rbind</span><span class='op'>)</span>  
</code></pre></div>

</div>


# Summary Table

We display below the summary of results:

<div class="layout-chunk" data-layout="l-body-outset">

|Procedure                                                           | Sample Size | True Effect Size | Estimate |   95% CI   |
|:-------------------------------------------------------------------|:-----------:|:----------------:|:--------:|:----------:|
|Coarsened Matching without Covariates Adjustment                    |     94      |       271        |   252    | (180; 323) |
|Coarsened Matching with Covariates Adjustment                       |     94      |       271        |   271    | (183; 358) |
|Constrained Pair Matching                                           |     72      |       234        |   234    | (167; 300) |
|Propensity Score without Calliper                                   |     244     |       230        |   284    | (230; 338) |
|Propensity Score without Calliper and with Covariates Adjustment    |     244     |       230        |   252    | (225; 279) |
|Propensity Score with a 0.5 Calliper                                |     192     |       245        |   245    | (186; 303) |
|Propensity Score with a 0.5 Calipper and with Covariates Adjustment |     192     |       245        |   249    | (220; 278) |
|Outcome Regression Model without Covariates Adjustment              |    1376     |       230        |   416    | (378; 454) |
|Outcome Regression Model with Covariates Adjustment                 |    1376     |       230        |   293    | (279; 307) |

</div>




```{.r .distill-force-highlighting-css}
```
