## create a data frame from data/installed-packages.csv
## with, e.g., readr::read_csv() or read.csv()

library(readr)
library(magrittr)

packages <- read_csv("Data/installed-packages.csv") %>%
## filter out packages in the default library
## keep variables Package and Built
## if you use dplyr, code like this will work:

  filter(LibPath == .libPaths()[1]) %>%
  select(Package, Built) %T>%
## write this new, smaller data frame to data/add-on-packages.csv
  write_csv("data/add-on-packages.csv")

## make a frequency table of package by the version in Built
## if you use dplyr, code like this will work:

packages_fqtable <- packages %>%
  count(Built) %>%
  mutate(prop = n / sum(n)) %T>%
  write_csv("Data/add-on-packages-freqtable.csv")

## write this data frame to data/add-on-packages-freqtable.csv
## YES overwrite the files that are there now
## they came from me (Jenny)
## they are just examples

## when this script works, stage & commit it and the csv files
## PUSH!
