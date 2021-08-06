# gooddocker
good way to compute with docker containers

for development:
`docker run -it --rm -v $PWD/in:/in:ro -v $PWD/out:/out -u=$(id -u) -w / rocker/r-ver:4.0.5 Rscript --vanilla -e 'source("in/.Rprofile")' JOB TASK`
