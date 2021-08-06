# prepare batch job

# assumption: EFS bq mounted under /mnt/efs/sim/bq
bq <- '/mnt/efs/sim/bq'
jobname <- 'test0'  # uuid::UUIDgenerate() better?
N <- 10L

# in and out locations
in_locations <- file.path(bq, 'in', jobname, seq_len(N))
out_locations <- file.path(bq, 'out', jobname, seq_len(N))
for (x in c(in_locations, out_locations)) dir.create(x, recursive=TRUE, showWarnings=FALSE)

# input data
data <- lapply(seq_len(N), rnorm, n=25)
# write data out to tasks
delete_me <- mapply(saveRDS, data, file.path(in_locations, 'data.rds'))
# send in the script
file.copy('script.R', file.path(bq,'in', jobname), overwrite = TRUE)
