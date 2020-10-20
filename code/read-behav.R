stroop <- data.table::fread(here::here("in", "multiparc_stroop_behav-events.csv"))
axcpt <- data.table::fread(here::here("in", "multiparc_axcpt__behav-events.csv"))
cuedts <- data.table::fread(here::here("in", "multiparc_cuedts_behav-events.csv"))
stern <- data.table::fread(here::here("in", "multiparc_stern_behav-events.csv"))
subjs <- data.table::fread(here::here("in", "multiparc_subjects.txt"))[[1]]
