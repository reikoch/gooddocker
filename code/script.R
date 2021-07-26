# read from ./data,
# process and output under ./out

xy <- readRDS('data/xy.rds')
out <- summary(xy)
saveRDS(out, 'out/xy_summary.rds')
