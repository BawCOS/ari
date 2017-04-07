is_Wave <- function(x){
  identical(suppressWarnings(as.character(class(x))), "Wave")
}

# get random string
grs <- function(){
  paste(sample(c(1:10, letters, LETTERS), size = 12, replace = TRUE), collapse = "")
}

# how long is a wav?
duration <- function(wav){
  stopifnot(is_Wave(wav))
  length(wav@left) / wav@samp.rate
}

# get from list
# list, name of element, default
gfl <- function(l, n, d){
  if(is.null(l[[n]])){
    d
  } else {
    l[[n]]
  }
}