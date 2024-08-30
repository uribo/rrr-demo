library(pointblank)
library(ggforce) # scan_data() のため
library(readr)# # scan_data() のため

mtcars_mod <- 
  mtcars |> 
  tibble::rownames_to_column(var = "car") |> 
  tibble::as_tibble()


# データ検査の基本 ----------------------------------------------------------------
mtcars_mod |> 
  row_count_match(32L)

# Error
mtcars_mod |> 
  col_vals_between(vars(disp), 75, 470)

range(mtcars_mod$disp)

mtcars_mod |> 
  col_vals_between(vars(disp), 71, 472)

mtcars_mod |> 
  row_count_match(32L) |> 
  col_vals_between(vars(disp), 75, 470)

# warn_on_fail()関数でも同様
al <- 
  action_levels(warn_at = 1)

# 検査は失敗するが、エラーではなく警告として処理される。
mtcars_mod |> 
  col_vals_between(vars(disp), 75, 470, actions = al)


# エージェントによる検査とレポートの作成 -----------------------------------------------------
al <- action_levels(warn_at = 0.1, stop_at = 0.2)

agent <- 
  create_agent(mtcars_mod,
               label = "pointblankによるデータ品質検査",
               actions = al) |> 
  col_vals_not_null(vars(mpg)) |>
  col_vals_in_set(car, set = c("Merc 450SL")) |> 
  col_is_numeric(vars(cyl, vs, am, gear)) |> 
  col_is_factor(vars(carb)) |> 
  col_exists(price)

interrogate(agent)


# データのスキャン ----------------------------------------------------------------
scan_data(mtcars_mod)

scan_data(mtcars_mod, sections = "OV")
