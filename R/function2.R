#' A Webscraper for collecting data on debates in the Parliament of India
#'
#' Collects data from searches on the Parliament of India's digital repository
#' \url{https://eparlib.nic.in}. When the search is filtered by type "Part 2
#' Other than Questions and Answers", it returns a data frame with details
#' including the link to the pdf document in each search result.
#'
#' @param y Character, String vectors.
#'
#' @import dplyr
#' @import purrr
#' @import rvest
#' @import stringr
#'
#' @return A tibble stored as a vector in the Global Environment.
#' @export

scrape_nonqna <- function(y) {

  y <- read_html(y)

  y <- html_nodes(y, ".table-hover a") %>%
    html_attr("href")

  prefix <- c("http://eparlib.nic.in")

  y <- str_c(prefix, y)

  y <- str_split(y, pattern = " ")

  date <- y %>%
    map(read_html) %>%
    map(html_element, "tr:nth-child(3) .metadataFieldValue") %>%
    map_chr(html_text)

  type <- y %>%
    map(read_html) %>%
    map(html_element, "tr:nth-child(2) .metadataFieldValue") %>%
    map_chr(html_text)

  title <- y %>%
    map(read_html) %>%
    map(html_element, "tr:nth-child(1) .metadataFieldValue") %>%
    map_chr(html_text)

  debate <- y %>%
    map(read_html) %>%
    map(html_element, "tr:nth-child(7) .metadataFieldValue") %>%
    map_chr(html_text)

  MP <- y %>%
    map(read_html) %>%
    map(html_element, "tr:nth-child(4) .metadataFieldValue") %>%
    map_chr(html_text)

  LS <- y %>%
    map(read_html) %>%
    map(html_element, "tr:nth-child(5) .metadataFieldValue") %>%
    map_chr(html_text)

  LS_session <- y %>%
    map(read_html) %>%
    map(html_element, "tr:nth-child(6) .metadataFieldValue") %>%
    map_chr(html_text)

  pdf <- y %>%
    map(read_html) %>%
    map(html_element, ".btn-primary") %>%
    map_chr(html_attr, "href")

  pdf_link <- str_c(prefix, pdf)

  z <- tibble(
    "Date" = date,
    "Type" = type,
    "Title" = title,
    "Debate" = debate,
    "MP" = MP,
    "LS" = LS,
    "LS_session" = LS_session,
    "PDF_Link" = pdf_link
  )

  return(.GlobalEnv$non_qna <- z)

}
