mtcars_mod <- 
  mtcars |> 
  tibble::rowid_to_column(var = "car") |> 
  tibble::as_tibble()

fit <- 
  lm(mpg ~ wt, data = mtcars_mod)

predict(fit) |> 
  tibble::as_tibble() |> 
  tibble::add_column(mpg = mtcars_mod$mpg) |> 
  dplyr::select(mpg, predict = value) |> 
  readr::write_csv("data/predictions.csv")
