#----------------------------------------------------------#
#
#
#                       Project name
#
#                       Config file
#                 
#
#                         Names 
#                         Year
#
#----------------------------------------------------------#

# Configuration script with the variables that should be consistence during 
#   the whole repo. It should load packages, define important variables, 
#   authorise the user.


#----------------------------------------------------------#
# 1. Load packages -----
#----------------------------------------------------------#

# define packages
package_list <- 
  c("tidyverse", "devtools", "rmarkdown", "neotoma", "Bchron", "rgdal",
    "maps", "pangaear", "raster", "rgeos",  "parallel", "furrr","assertthat",
    "janitor", "roxygen2", "usethis", "lubridate", "renv", "here")

# load all packages
sapply(package_list, library, character.only = TRUE)

# save snapshot of package versions
# renv::snapshot(lockfile =  "renv/library_list.lock")  # do only for update

# synchronise the package versions
renv::restore(lockfile =  "renv/library_list.lock")


#----------------------------------------------------------#
# 2. Authorise the user -----
#----------------------------------------------------------#


#----------------------------------------------------------#
# 3. Load functions -----
#----------------------------------------------------------#

fun_list <- list.files("R/Functions/", recursive = TRUE)
sapply(paste0("R/functions/", fun_list, sep =""), source)


#----------------------------------------------------------#
# 4. Define Variables -----
#----------------------------------------------------------#

current_date <- Sys.Date()

project_dir <- here::here()

