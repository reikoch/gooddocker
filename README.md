# gooddocker
good way to compute with docker containers

for development:
`docker run --rm -e R_PROFILE_USER=/in/.Rprofile -v $PWD/code:/code:ro -v $PWD/in:/in:ro -v $PWD/out:/out -u=$(id -u) -w / rocker/r-ver:4.0.5 Rscript --no-save /code/script.R JOB TASK`
