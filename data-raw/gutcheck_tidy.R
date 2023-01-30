#--- load packages -------------------------------------

if (!require("pacman")) install.packages("pacman")
pacman::p_load(tidyverse, here, usethis)


#--- load data -----------------------------------------

gutcheck_donut <- read_csv(here("data-raw", "gutcheck_donut.csv"))
gutcheck_hichew <- read_csv(here("data-raw", "gutcheck_hichew.csv"))
gutcheck_hostess <- read_csv(here("data-raw", "gutcheck_hostess.csv"))
gutcheck_icecream <- read_csv(here("data-raw", "gutcheck_icecream.csv"))
gutcheck_poptart <- read_csv(here("data-raw", "gutcheck_poptart.csv"))


#--- tidy data -----------------------------------------

# Calculate total scores for hi-chews. 
# Data recorder got lazy half way through.
gutcheck_hichew <- gutcheck_hichew %>% mutate(total_score = rhett_score + link_score)

# Combine into one grand data set.
gutcheck <- bind_rows(gutcheck_donut, gutcheck_hichew, gutcheck_hostess, gutcheck_icecream, gutcheck_poptart) %>% 
  arrange(date, order)

# Make sure there are no duplicates.
# Sometimes Link changes his mind, but data should have only his final score.
# Warning: a food can have duplicates flavors, but in different categories.
#      ex: gutcheck_hostess has multiple chocolate flavors.
gutcheck %>% count(food, category, flavor) %>% filter(n > 1)

# Make sure every row has a total score.
gutcheck %>% count(is.na(total_score))


# Convert some variables to factors.
# Rows should be in the correct order when data is loaded in.
gutcheck_donut <- gutcheck_donut %>% mutate(category = as_factor(category), flavor = as_factor(flavor))
gutcheck_hichew <- gutcheck_hichew %>% mutate(category = as_factor(category), flavor = as_factor(flavor))
gutcheck_hostess <- gutcheck_hostess %>% mutate(category = as_factor(category), flavor = as_factor(flavor))
gutcheck_icecream <- gutcheck_icecream %>% mutate(category = as_factor(category), flavor = as_factor(flavor))
gutcheck_poptart <- gutcheck_poptart %>% mutate(category = as_factor(category), flavor = as_factor(flavor))

gutcheck <- gutcheck %>% 
  mutate(category = as_factor(category), 
         flavor = as_factor(flavor),
         episode = as_factor(episode))

#write_csv(gutcheck, "gutcheck.csv")

#--- export data ---------------------------------------

use_data(gutcheck_donut, overwrite = TRUE)
use_data(gutcheck_hichew, overwrite = TRUE)
use_data(gutcheck_hostess, overwrite = TRUE)
use_data(gutcheck_icecream, overwrite = TRUE)
use_data(gutcheck_poptart, overwrite = TRUE)

use_data(gutcheck, overwrite = TRUE)
