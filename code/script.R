# ..in in global environment shows location of input
# ..out in global environment shows output location
set_inout()
print(paste('input from', ..in, 'output to', ..out))

rnorm(1)
write(.Random.seed, file.path(..out, 'random.txt'))

xy <- readRDS(file.path(..in, 'data.rds'))
out <- summary(xy)
saveRDS(out, file.path(..out, 'xy_summary.rds'))
