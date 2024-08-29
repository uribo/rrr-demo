# 乱数生成アルゴリズムを利用する関数では、実行の度に出力が変化する。
rnorm(n = 1)

rnorm(n = 1)

# セッションを再起動し、再度乱数を生成する。
# その際、乱数生成アルゴリズムの seed を固定することで、再現性を確保する。
if (interactive() & !identical(Sys.getenv("RSTUDIO"), "")) {
  rstudioapi::restartSession()
  
  # Note: RStudioを使用していない場合は手動での再起動を行い、以下のコードを実行する。
  
  # 乱数生成アルゴリズムの seed を固定する。
  set.seed(123)
  
  # 期待される出力が得られるか（再現可能か）を確認する。
  all.equal(rnorm(n = 1),
            -0.5604756,
            tolerance = 0.000001)
  
  all.equal(rnorm(n = 1),
            -0.2301775,
            tolerance = 0.000001)
}
