library(renv)

status()

# コメントを外して renv::status()、renv::snapshot() を実行

status()

snapshot()

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
# 
