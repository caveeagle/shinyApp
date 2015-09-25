
## How random is your password?

When I needed to calculate the randomness of strings set (for data security tasks), I could not find suitable functions in R, calculating the entropy of string. So I created an R package and application that calculates the entropy [(a measure of information)](https://en.wikipedia.org/wiki/Entropy_%28information_theory%29), based on the analysis of the frequency of occurrence of characters in a block of text.

Application usage:

- Know how random is your password
- Calculate the amount of information contained in the text
- See what is the Shannon entropy like and how it changes when we change the frequency of characters in a string

