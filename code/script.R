# ..in in global environment shows location of input
# ..out in global environment shows output location

rnorm(1)
write(.Random.seed, file.path(..out, 'random.txt'))

xy <- readRDS(file.path(..in, 'xy.rds'))
out <- summary(xy)
saveRDS(out, file.path(..out, 'xy_summary.rds'))
