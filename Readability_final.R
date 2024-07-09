library(koRpus)
library(koRpus.lang.en)

setwd("your_working_directory")
new.dale.chall.wl = scan("dale-chall-3000-words.txt", character(), quote = "")

# INPUT CLINICAL NOTES

ii1.files <- list.files(path = "your_input_directory",
                        full.names = TRUE)
ii1.tagged <- lapply(ii1.files, tokenize, lang="en")
ii1.readability <- suppressWarnings(lapply(ii1.tagged, readability))          
ii1.readability[[1]]
dale.chall(ii1.tagged[[1]], word.list = new.dale.chall.wl)

# OUTPUT NOTES

# For GPT-3.5 and GPT-4
oo1.files <- list.files(path = "your_output_directory",
                        full.names = TRUE)
oo1.tagged <- lapply(oo1.files, tokenize, lang="en")
oo1.readability <- suppressWarnings(lapply(oo1.tagged, readability))          
oo1.readability[[1]]
dale.chall(oo2.tagged[[1]], word.list = new.dale.chall.wl)

# Exporting readability scores
# example
# ii.readability[[1]]@Flesch.Kincaid


