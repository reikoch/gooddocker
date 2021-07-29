# prepare batch job

# assumption: EFS bq mounted under /mnt/efs/sim/bq
bq <- '/mnt/efs/sim/bq'
jobname <- 'test0'  # uuid::UUIDgenerate() better?
N <- 10L

# input data
data <- lapply(seq_len(N), rnorm, n=25)

jobroot <- file.path(bq, jobname)
dir.create(jobroot, recursive = TRUE)
for (x in seq_len(N)) {
  dir.create(file.path(jobroot, x, 'out'), recursive = TRUE)
  dir.create(file.path(jobroot, x, 'data'))
  saveRDS(data[[x]], file=file.path(jobroot, x, 'data', 'data.rds'))
}
