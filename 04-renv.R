library(renv)

status()

# コメントを外して renv::status()、renv::snapshot() を実行
# (パッケージをインストールしないとコメントアウトされた箇所のコードは実行できない)

status()

snapshot()
## 選択肢の入力を求められたら 2 を入力し実行する
## renv.lockファイルの更新も Y で行う
#
# library(jmastats)
# library(dplyr)
# library(mapview)
# library(sf)
# stations |>
#   mapview::mapview()
# stations |>
#   filter(station_name == "徳島") |>
#   pull(block_no) |>
#   unique()
# jma_collect(item = "hourly",
#             block_no = "47895",
#             year = 2024,
#             month = 8,
#             day = 29,
#             cache = FALSE)
