# Shiny_Complex_Data_Dashboard

This project consists of a working prototype of a comprehensive dashboard for serving complex data to researchers.

The project uses the [*R Language*](https://www.r-project.org) and the [*Shiny*](https://shiny.rstudio.com) framework.

It produces an efficient web-based GUI for querying different facets of the included dataset.

The project includes other deployment options.

The project’s first phase is exploratory. Its second phase readies and puts the exploratory phase into production.

In the **exploratory phase** we —

* creates a reproducible environment for such an exploratory data project using [*renv*](https://rstudio.github.io/renv/articles/renv.html) dependency management in an isolated project environment;

* work with cancer genomic data analyzed with the [*maftools*](https://bioconductor.org/packages/release/bioc/html/maftools.html) "Mutation Annotation Format";  

* manipulate tabular data with [*dplyr*](https://dplyr.tidyverse.org) and [*tidyr*](https://tidyr.tidyverse.org);  

* produce standard cancer data diagnostic plots with the [*ggplot2*](https://ggplot2.tidyverse.org) general-purpose plotting library, as well as domain-specific cancer genomics plots with [*maftools*](https://bioconductor.org/packages/release/bioc/html/maftools.html).  

While creating the dashboard for serving complex data to researchers in the **production phase**, the project creates an R dashboard package with —   

* the R package development tools [*devtools*](https://devtools.r-lib.org);  

* an interactive dashboard web application with [*Shiny*](https://shiny.rstudio.com);  

* a JavaScript-based library for interactive plots with [*plotly*](https://plotly.com).  

The project then deploys an R dashboard application with the framework for building and deploying Shiny apps, [*golem*](https://golemverse.org); and other optional deployment  versions of the project with [*Docker*](https://www.docker.com).
