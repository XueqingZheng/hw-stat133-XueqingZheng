context("Check for checkers")

test_that("check_prob works with valid input", {
  expect_true(check_prob(0))
  expect_true(check_prob(1))
  expect_true(check_prob(0.5))
})

test_that("check_prob works with invalid input", {
  #expect_error(check_prob(c(1:5)))
  expect_error(check_prob(o))
  expect_error(check_prob(-0.3))
  expect_error(check_prob(1.3))
})

test_that("check_trials works with valid input", {
  expect_true(check_trials(0))
  expect_true(check_trials(9))
  expect_true(check_trials(4))
})

test_that("check_trials works with invalid input", {
  expect_error(check_trials(1.3))
  expect_error(check_trials(-10))
  expect_error(check_trials(u))
})

test_that("check_success works with valid input",{
  expect_true(check_success(0, 0))
  expect_true(check_success(5, 10))
  expect_true(check_success(c(1:4), 4))
})

test_that("check_success works with invalid input",{
  expect_error(check_success(1, 0))
  expect_error(check_success(1.8, 6))
  expect_error(check_success(c(1:7), 4))
})
