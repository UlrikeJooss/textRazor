# textRazor R Package

[![GitHub License](https://img.shields.io/github/license/UlrikeJooss/textRazor)](https://github.com/UlrikeJooss/textRazor/blob/master/LICENSE)

## Overview

The `textRazor` R package is a lightweight tool for basic text analysis. 
It provides simple functions to count words, calculate word frequency, 
count spaces, and count characters and only special characters in a given text.

## Features
- count_words(): Count the number of words in a text.
- word_freq(): Calculate the frequency of each word in a text.
- count_spaces(): Count the number of spaces in a text.
- count_char(): Count the number of characters (including spaces) in a text.
- count_specs(): Count the number of special characters in a text.

## Examples

```R
library(textRazor)

# Count words in a text
count_words("Hello, how are you?") # Output: 4
count_words("textRazor is a powerful R package designed for efficient
and precise text analysis. With user-friendly functions,
it provides features like word counting, character counting,
and space counting. Seamlessly handle text data and gain
valuable insights with textRazor, your ultimate tool for
text exploration and understanding.") # Output: 45

# Calculate word frequency
word_freq("This is a simple example. This is a simple text.")
# output:      Word Frequency
#      1       a         2
#      2      is         2
#      3  simple         2
#      4    this         2
#      5 example         1
#      6    text         1

# Count spaces
text <- "This is a simple example. This is a simple text."
count_spaces(text) # output: 9

# Count special characters
text <- "?? This is a simple example!! \%\% This is a simple text.&$"
count_specs(text) # output: 20
```

## Installation

You can install the latest version of `textRazor` from GitHub using the `remotes` package:
  
  ```R
remotes::install_github("UlrikeJooss/textRazor")
 ```
