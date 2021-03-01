#' Retrieve airport information from airport-data.com via API
#'
#' For successful API requests, make sure that the API page and/or your access
#' is configured. This is particularly important when accessing the internet
#' through a proxy server (e.g. at work).
#'
#' @param .icao ICAO location indicator
#'
#' @return tibble of airport information
#' @export
#'
#' @examples
#' \dontrun{
#' egll <- get_apt_info("EGLL")
#' egll
#' }
get_apt_info <- function(.icao){
  # check for ICAO location indicator
  if(!is.character(.icao)) stop("Variable .icao must be a character!")
  if(is.character(.icao) & nchar(.icao) != 4) stop("Variable .icao must be a 4-letter ICAO indicator!")

  # send GET request to web API
  request <- httr::GET("https://www.airport-data.com/api/ap_info.json", query = list(icao=.icao))

  # extract content from json response
  payload <- jsonlite::fromJSON(rawToChar(request$content))
  payload <- tibble::as_tibble(payload)

  return(payload)
  }
