# read from ./data,
# process and output under ./out

rnorm(1)
write(.Random.seed, 'out/random.txt')

xy <- readRDS('data/xy.rds')
out <- summary(xy)
saveRDS(out, 'out/xy_summary.rds')
