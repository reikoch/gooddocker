set_inout <- function() {
  xx <- commandArgs(trailingOnly=TRUE)
  workpath <- file.path(if(is.na(xx[1])) '.' else xx[1],
                        if(is.na(xx[2])) '.' else xx[2])

  assign('..in', file.path('in', workpath), pos=1)
  assign('..out', file.path('out', workpath), pos=1)
}
set_inout()

# start with the standard script
source(file.path(..in, '..', 'script.R'))

