#!/bin/bash

/opt/R/4.1.2/bin/R -q -e 'install.packages(c("renv","rJava"),repos="https://packagemanager.rstudio.com/cran/latest")'

git clone https://github.com/michaelmayer2/r-benchmarks.git

cd r-benchmarks/R-benchmark-25

/opt/R/4.1.2/bin/R -q -e 'renv::restore(); source("R-benchmark-25.R"); sessionInfo()'
