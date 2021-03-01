# get_apt_info -> API call of airport-data.com

test_that("No valid input", {
  expect_error(get_apt_info(42), "Variable .icao must be a character!")
})
