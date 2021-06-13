## Introduction

This is a simple web scraper built on `rvest` to collect data from searches on the [Parliament of India's digital repository](https://eparlib.nic.in). It returns a data frame with details including the pdf link of each search result.


## Functions

At present, this package offers two functions and requires two different search filters as input:

1. `scrape_qna`: For searches filtered by type "Part 1(Questions and Answers)" which includes only questions asked on the floor of the Lok Sabha.

2. `scrape_nonqna`: For searches filtered by type "Part 2(Other Than Questions and Answers)", which includes Government Bills, Private Member's Bills, Committee Reports, etc.

This is to accommodate the differences in elements of the two search types.


## Future Steps

Development is underway to create:

1. A simpler function to work on search URLs with any or no filter.

2. A function to scrape, read, and tidy PDFs from the search results.


## Contribute

Spotted a bug? Want to contribute to code development? Open a pull request on [GitHub](https://github.com/avkarandikar/eparlibscrapR).