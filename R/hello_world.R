#' Hello world - example function
#'
#' @param .name the name used to greet
#'
#' @return a greeting string
#' @export
#'
#' @examples
#' hello_world("Rainer")
#'
hello_world <- function(.name){
  # testing
  if (!is.character(.name)) stop("Variable .name must be a character!")

  grt <- paste0("Hello " , .name )
  return(grt)
}
