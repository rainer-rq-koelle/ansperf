# test - hello_world.R

test_that("No valid input", {
  expect_error(hello_world(16), "Variable .name must be a character!")
})
