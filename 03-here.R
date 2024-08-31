library(here)

file.exists("src/functions.R") # macOS, Linux
file.exists("src\\functions.R") # Windows


here("src/functions.R")
here("src", "functions.R")
here("src", c("functions.R", "dependencies.R"))

source(here("src/functions.R"))

library(fs)

fs::dir_ls()
fs::dir_ls(regexp = "^[0-9]{2}-.+.R$")
