context("test-np")

test_that("preserves existing groups", {
  x <- group_by(mtcars, am)
  out <- np(x, vs)
  expect_equal(groups(out), groups(x))
})

test_that("honours existing groups", {
  expect_equal(np(group_by(mtcars, am), vs), np(mtcars, vs, am))
})
