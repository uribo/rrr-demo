library(reprex)
reprex({
  set.seed(123)
  rnorm(n = 1)
})

# session_info = TRUEを指定すると、セッション情報も出力される。
# wd引数で作業ディレクトリを指定する。ここでは現在の作業ディレクトリを指定し、実行コードと結果が外部ファイルに保存するようにした。
reprex({
  print("hello")
}, session_info = TRUE, wd = ".")

reprex({
  library(tidyverse)
})

reprex({
  library(tidyverse)
},tidyverse_quiet = TRUE)
