eparlibscrapR <img src='man/figures/logo.png' align="right" height="139" />

### Introduction

This is a simple web scraper built on [`rvest`](https://rvest.tidyverse.org/) to collect and organise metadata from searches on the Parliament of India's Digital Library which can be accessed at www[dot]eparlib[dot]nic[dot]in. It returns a data frame with details including the pdf link of each search result.


### Functions

At present, this package offers two functions, and each takes a different search filter as input:

1. `scrape_qna`: For searches filtered by type "Part 1(Questions and Answers)" which includes only questions asked in the Lok Sabha.

2. `scrape_nonqna`: For searches filtered by type "Part 2(Other Than Questions and Answers)", which includes Government Bills, Private Member's Bills, Parliamentary Committee Reports, etc.

This is to accommodate the differences in elements of the two search types.


### Future Steps

Development is underway to create:

1. A simpler function to work on search URLs with any or no filter.

2. A function to scrape, read, and tidy PDFs from the search results.


### Contribute

Spotted a bug? Report [here](https://github.com/avkarandikar/eparlibscrapR/issues). Want to contribute to code development? Open a pull request [here](https://github.com/avkarandikar/eparlibscrapR).



### Author's Declaration

1. `eparlibscrapR` (hereafter, "this Package") is neither affiliated with nor endorsed by the Parliament Digital Library (hereafter, "the Entity").

2. This Package is created for systematic collection of data available in the public domain in support of research and study.

3. All users of this Package are hereby advised to refer to these [webscraping guidelines](https://towardsdatascience.com/ethics-in-web-scraping-b96b18136f01) and make ethical use of this Package.

4. The development of this Package, or any use of this Package for any purpose, by itself or in combination with, or as the basis for other packages, or any analyses resultant thereof, does not in any way imply the official positions of, nor hold liable, the Entity.

5. All attempts have been made to comply with the Terms and Conditions and the Copyright Policy of the Entity, which can be accessed at www[dot]eparlib[dot]nic[dot]in/help/terms-conditions[dot]jsp and www[dot]eparlib[dot]nic[dot]in/help/copyright-policy.jsp respectively.

6. The Author of this Package is neither responsible nor liable for any misuse or non-compliance with the said Terms and/or Policies by any third party. Persons using this package are responsible for ensuring they comply with the same.

7. Any person interested in using this Package should do so on the understanding that any third party use of this Package for any purpose, by itself or in combination with, or as the basis for other packages, or any analyses resultant thereof, does not amount to an endorsement by, imply the positions of, or hold liable, the Author of this Package.

8. This Package has been licensed under the [GNU General Public License v3.0](https://github.com/avkarandikar/eparlibscrapR/blob/main/LICENSE.md).

9. Any subsequent work which uses this Package must also be made available under the same license, as per the terms of using material licensed under the [GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.en.html).

10. The Author of this Package is not responsible for changes in availability of information or non-availability of the same on any of the above websites.


#### About Logo

The logo is adapted from [this image](https://commons.wikimedia.org/wiki/File:Indian_Parliament.svg) sourced from Wikimedia Commons with a [CC BY-SA 4.0 license](https://creativecommons.org/licenses/by-sa/4.0/deed.en), which requires that any reuse or adaptation of work licensed under the same be made available under the same or compatible licence, and be attributed to the original author. The R package [`eparlibscrapR`](https://github.com/avkarandikar/eparlibscrapR) which uses [this image](https://commons.wikimedia.org/wiki/File:Indian_Parliament.svg) as the basis for its logo is made available on [GitHub](https://github.com/avkarandikar/eparlibscrapR) with a [GPL-3.0 License](https://www.gnu.org/licenses/gpl-3.0.html), declared as a [compatible license to CC BY-SA 4.0](https://creativecommons.org/share-your-work/licensing-considerations/compatible-licenses).

Original file: https://commons.wikimedia.org/wiki/File:Indian_Parliament.svg \
Attribution: Suthir, [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0), via Wikimedia Commons.
