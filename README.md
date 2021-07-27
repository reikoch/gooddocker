# gooddocker
good way to compute with docker containers

for development:
`docker run -it --rm -v $PWD/code:/code:ro -v $PWD/data:/data:ro -v $PWD/out:/out -u=$(id -u) rocker/r-ver ...`
