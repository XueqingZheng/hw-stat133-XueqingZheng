context("Check for binomial")

test_that("bin_choose returns the correct result", {
  expect_equal(bin_choose(5, 2),10)
  expect_equal(as.numeric(bin_choose(5, 1:3)),as.numeric(c(5,10,10)))
  expect_error(bin_choose(5, 10))
})

test_that("bin_probability returns the correct result", {
  expect_equal(bin_probability(2, 5, 0.5), 0.3125)
  expect_equal(bin_probability(1:3, 10, 0.3), c(0.1210608, 0.2334744, 0.2668279), tolerance = 1e-5)
  expect_error(bin_probability(10, 5, 1.5))
})

test_that("bin_distribution returns the correct result", {
  expect_equal(class(bin_distribution(5,0.5)), c("bindis", "data.frame"))
  expect_equal(bin_distribution(5,0.5)$probability, c(0.03125, 0.15625, 0.31250, 0.31250, 0.15625, 0.03125))
  expect_equal(length(bin_distribution(5, 0.5)$success), 6)
  expect_equal(ncol(bin_distribution(5, 0.5)), 2)
})

test_that("bin_cumulative returns the correct result", {
  expect_equal(class(bin_cumulative(5,0.5)), c("bincum", "data.frame"))
  expect_equal(bin_cumulative(5,0.5)$probability, c(0.03125, 0.15625, 0.31250, 0.31250, 0.15625, 0.03125))
  expect_equal(bin_cumulative(5,0.5)$cumulative, c(0.03125, 0.18750, 0.50000, 0.81250, 0.96875, 1.00000))
  expect_equal(length(bin_cumulative(5, 0.5)$success), 6)
  expect_equal(ncol(bin_cumulative(5, 0.5)), 3)
})
