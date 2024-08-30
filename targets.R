library(targets)
library(visNetwork)

tar_make()

tar_load(mtcars_mod)

tar_visnetwork()

tar_load(mtcars_mod)

tar_outdated()
