set_inout <- function() {
  xx <- commandArgs(trailingOnly=TRUE)
  workpath <- file.path(if(is.na(xx[1])) '.' else xx[1],
                        if(is.na(xx[2])) '.' else xx[2])

  assign('..in', file.path(workpath, 'in'), pos=1)
  assign('..out', file.path(workpath, 'out'), pos=1)
}
set_inout()
# ..in in global environment shows location of input
# ..out in global environment shows output location

rnorm(1)
write(.Random.seed, file.path(..out, 'random.txt'))

xy <- readRDS(file.path(..in, 'xy.rds'))
out <- summary(xy)
saveRDS(out, file.path(..out, 'xy_summary.rds'))
