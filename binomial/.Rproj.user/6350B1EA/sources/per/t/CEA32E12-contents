context("Check for summary measures")

test_that("aux_mean returns the correct result", {
  expect_equal(aux_mean(10, 0.3), 3)
  expect_equal(aux_mean(15, 0.5), 7.5)
  expect_equal(aux_mean(30, 0.8), 24)
})

test_that("aux_variance returns the correct result", {
  expect_equal(aux_variance(10, 0.3), 2.1)
  expect_equal(aux_variance(15, 0.5), 3.75)
  expect_equal(aux_variance(30, 0.8), 4.8)
})

test_that("aux_mode returns the correct result", {
  expect_equal(aux_mode(10, 0.3), 3)
  expect_equal(aux_mode(15, 0.5), c(8, 7))
  expect_equal(aux_mode(30, 0.8), 24)
})

test_that("aux_skewness returns the correct result", {
  expect_equal(aux_skewness(10, 0.3), 0.2760262, tolerance = 1e-5)
  expect_equal(aux_skewness(15, 0.5), 0)
  expect_equal(aux_skewness(30, 0.8), -0.2738613, tolerance = 1e-5)
})

test_that("aux_kurtosis returns the correct result", {
  expect_equal(aux_kurtosis(10, 0.3), -0.1238095, tolerance = 1e-5)
  expect_equal(aux_kurtosis(15, 0.5), -0.1333333, tolerance = 1e-5)
  expect_equal(aux_kurtosis(30, 0.8), 0.008333333, tolerance = 1e-5)
})
