get_data_out <- function() {
  xx <- commandArgs(trailingOnly=TRUE)

  file.path(if(is.na(xx[1])) '.' else xx[1],
            if(is.na(xx[2])) '.' else xx[2],
            c('data', 'out')
            )
}
