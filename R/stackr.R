#' Pass Caught Errors to a Stackoverflow Query
#'
#' @param expr an object to be evaluated.
#' @param browse open web browser? Default is TRUE
#'
#' @export
#'
#' @examples
#' \dontrun{
#' stackr({
#'  1+1
#'  is.na(NA)
#'  plot(1,1)
#'  for(i in 1:3) print(b)
#' })
#' }

stackr <- function(expr, browse = TRUE){

  #if(missing(expr)){
  #  expr <- 0
    # code to gfo here to run interactivley on last error
  #  query <- sub(pattern = " ", replacement = "+", x = geterrmessage())
  #  url <- paste0("https://stackoverflow.com/search?q=",query,"+%5Br%5D+hasaccepted%3Ayes+score%3A3")
  #  if(browse == TRUE) utils::browseURL(url)
  #  invisible()
  #}

  tryCatch({
    expr
  }, warning = function(w) {
  }, error = function(e) {

    query <- sub(pattern = " ", replacement = "+", x = e$message)
    url <- paste0("https://stackoverflow.com/search?q=",query,"+%5Br%5D+hasaccepted%3Ayes+score%3A3")
    if(browse == TRUE) utils::browseURL(url)
    stop(e$message,call. = F)

  }, finally = {
    invisible()
  })
}
