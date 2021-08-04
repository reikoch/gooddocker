set_inout <- function() {
  xx <- commandArgs(trailingOnly=TRUE)
  workpath <- file.path(if(is.na(xx[1])) '.' else xx[1],
                        if(is.na(xx[2])) '.' else xx[2])

  assign('..in', file.path(workpath, 'in'), pos=1)
  assign('..out', file.path(workpath, 'out'), pos=1)
}
