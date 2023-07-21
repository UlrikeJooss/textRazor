library(testthat)
library(textRazor)

# Testing count_words()

test_that("count_words returns the correct number of words", {
  text <- "This is a simple example of text analysis."
  result <- count_words(text)
  expect_equal(result, 8)
})

test_that("count_words returns 0 for an empty string", {
  text <- ""
  result <- count_words(text)
  expect_equal(result, 0)
})


# Testing count_spaces()

test_that("count_spaces returns 0 for an empty string", {
  text <- ""
  result <- count_spaces(text)
  expect_equal(result, 0)
})

test_that("count_spaces correctly counts the number of spaces", {
  text <- "This is a simple example of text analysis."
  result <- count_spaces(text)
  expect_equal(result, 7)
})


# Testing count_specs()

test_that("count_specs returns 0 for an empty string", {
  text <- ""
  result <- count_specs(text)
  expect_equal(result, 0)
})

test_that("count_specs correctly counts the number of special characters", {
  text <- "Hello! How are you?"
  result <- count_specs(text)
  expect_equal(result, 2)
})


# Testing count_char()

test_that("count_char returns 0 for an empty string", {
  text <- ""
  result <- count_char(text)
  expect_equal(result, 0)
})

test_that("count_char returns the correct number of characters for a non-empty string", {
  text <- "This is a simple example."
  result <- count_char(text)
  expect_equal(result, 25)
})

# Testing word<-freq()

test_that("word_freq throws an error for an empty input", {
  expect_error(word_freq(""))
})

test_that("word_freq correctly calculates word frequency for a non-empty string", {
  text <- "This is a simple example. This is a simple text."
  result <- word_freq(text)
  expected <- data.frame(
    Word = c("this", "is", "a", "simple", "example", "text"),
    Frequency = c(2, 2, 2, 2, 1, 1)
  )
  
  result <- result[order(result$Word), ]
  expected <- expected[order(expected$Word), ]
  
  expect_equal(nrow(result), nrow(expected))
  expect_equal(result$Word, expected$Word)
  expect_equal(result$Frequency, expected$Frequency)
})


# testthat::test_dir("tests")
