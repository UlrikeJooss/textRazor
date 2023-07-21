#' Functions for textRazor Package

#' Number of Words: function count_words()
#' This function counts the number of words in the given text.
#'
#' @param text A character vector or string containing the text to be counted.
#'
#' @return The number of words in the text.
#'
#' @examples
#' count_words("Hello, how are you?") # Output: 4
#' count_words("textRazor is a powerful R package designed for efficient
#' and precise text analysis. With user-friendly functions,
#' it provides features like word counting, character counting,
#' and space counting. Seamlessly handle text data and gain
#' valuable insights with textRazor, your ultimate tool for
#' text exploration and understanding.") # Output: 45
#'
#' @export
count_words <- function(text) {
  if (!is.character(text)) {
    stop("Input 'text' must be a character vector or a string.")
  }

  # Remove spaces and count words
  words <- strsplit(text, "\\s+")
  num_words <- length(words[[1]])

  return(num_words)
}


#' Number of characters: function count_char()
#' This function counts the number of characters (including spaces) in the given text.
#'
#' @param text A character vector or string containing the text to be counted.
#'
#' @return The number of characters in the text.
#'
#' @examples
#' count_characters("Hello, how are you?") # Output: 19
#' count_characters("R is an amazing programming language.") # Output: 37
#'
#' @export
count_char <- function(text) {
  if (!is.character(text)) {
    stop("Input 'text' must be a character vector or a string.")
  }

  num_characters <- nchar(text)

  return(num_characters)
}


#' Word Frequency: function word_freq()
#'
#' This function takes a text as input and returns a data frame with word frequencies.
#' It counts the frequency of each word in the text.
#'
#' @param text A character vector containing the input text.
#'
#' @return A data frame with two columns: "Word" and "Frequency".
#' @export
#'
#' @examples
#' word_freq("This is a simple example. This is a simple text.")
#' output:      Word Frequency
#'       1       a         2
#'       2      is         2
#'       3  simple         2
#'       4    this         2
#'       5 example         1
#'       6    text         1
#'
word_freq <- function(text) {
  # Check if the input is a character vector
  if (!is.character(text)) {
    stop("Input 'text' must be a character vector.")
  }

  # Convert the text to lowercase
  text <- tolower(text)

  # Tokenize the text into words
  words <- strsplit(text, "\\W+")

  # Count word frequencies
  word_freq_table <- table(unlist(words))

  # Create a data frame with word frequencies
  result <- data.frame(Word = names(word_freq_table),
                       Frequency = as.numeric(word_freq_table))

  # Sort the data frame in descending order of frequency
  result <- result[order(-result$Frequency), ]
  rownames(result) <- NULL

  return(result)
}



#' Count Spaces
#'
#' This function takes a text as input and returns the number of spaces in the text.
#'
#' @param text A character vector containing the input text.
#'
#' @return An integer representing the number of spaces in the text.
#' @export
#'
#' @examples
#' text <- "This is a simple example. This is a simple text."
#' count_spaces(text) output: 9
#'
count_spaces <- function(text) {
  # Check if the input is a character vector
  if (!is.character(text)) {
    stop("Input 'text' must be a character vector.")
  }

  # Count spaces in the text
  num_spaces <- sum(strsplit(text, "")[[1]] == " ")

  return(num_spaces)
}


#' Count Special Characters: count_specs()
#'
#' This function takes a text as input and returns the number of special characters in the text.
#' Special characters are any non-alphabetic and non-numeric characters.
#'
#' @param text A character vector containing the input text.
#'
#' @return An integer representing the number of special characters in the text.
#' @export
#'
#' @examples
#' text <- "?? This is a simple example!! %% This is a simple text.&$"
#' count_specs(text) output: 20
#'
count_specs <- function(text) {
  # Check if the input is a character vector
  if (!is.character(text)) {
    stop("Input 'text' must be a character vector.")
  }

  # Count special characters in the text
  num_special_chars <- sum(!grepl("[A-Za-z0-9]", strsplit(text, "")[[1]]))

  return(num_special_chars)
}



