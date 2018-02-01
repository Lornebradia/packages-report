## deja vu from yesterday!

## create a data frame of your installed packages

library(magrittr)
library(readr)
library(tidyverse)

installed.packages() %>%
  as.tibble() %>%
  select(Package, LibPath, Version, Priority, Built) %T>%
  write_csv(path = "data/installed-packages.csv")


## keep the variables
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built

## write it to data/installed-packages.csv
## YES overwrite the file that is there now
## that came from me (Jenny)
## it an example of what yours should look like

## when this script works, stage & commit it and the csv file
## PUSH!
