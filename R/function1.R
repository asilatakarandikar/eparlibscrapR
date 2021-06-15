#' A Web Scraper for Collecting Metadata on Questions asked in the Parliament of
#' India
#'
#' When the search is filtered by type "Part 1(Questions and Answers)", this
#' function returns a data frame with details including the link to the pdf
#' document in each search result.
#'
#' @param x Character, String vectors.
#'
#' @import dplyr
#' @import purrr
#' @import rvest
#' @import stringr
#'
#' @return A tibble stored as a vector in the Global Environment.
#' @export

scrape_qna <- function(x) {

  x <- read_html(x)

  x <- html_nodes(x, ".table-hover a") %>%
    html_attr("href")

  prefix <- c("http://eparlib.nic.in")

  x <- str_c(prefix, x)

  x <- str_split(x, pattern = " ")

  date <- x %>%
    map(read_html) %>%
    map(html_element, "tr:nth-child(3) .metadataFieldValue") %>%
    map_chr(html_text)

  type <- x %>%
    map(read_html) %>%
    map(html_element, "tr:nth-child(2) .metadataFieldValue") %>%
    map_chr(html_text)

  title <- x %>%
    map(read_html) %>%
    map(html_element, "tr:nth-child(1) .metadataFieldValue") %>%
    map_chr(html_text)

  ministry <- x %>%
    map(read_html) %>%
    map(html_element, "tr:nth-child(4) .metadataFieldValue") %>%
    map_chr(html_text)

  q_type <- x %>%
    map(read_html) %>%
    map(html_element, "tr:nth-child(5) .metadataFieldValue") %>%
    map_chr(html_text)

  q_no <- x %>%
    map(read_html) %>%
    map(html_element, "tr:nth-child(6) .metadataFieldValue") %>%
    map_chr(html_text)

  MP <- x %>%
    map(read_html) %>%
    map(html_element, "tr:nth-child(7) .metadataFieldValue") %>%
    map_chr(html_text)

  LS <- x %>%
    map(read_html) %>%
    map(html_element, "tr:nth-child(8) .metadataFieldValue") %>%
    map_chr(html_text)

  LS_session <- x %>%
    map(read_html) %>%
    map(html_element, "tr:nth-child(9) .metadataFieldValue") %>%
    map_chr(html_text)

  pdf <- x %>%
    map(read_html) %>%
    map(html_element, ".btn-primary") %>%
    map_chr(html_attr, "href")

  pdf_link <- str_c(prefix, pdf)

  y <- tibble(
    "Date" = date,
    "Type" = type,
    "Title" = title,
    "Ministry" = ministry,
    "Q_Type" = q_type,
    "Q_No" = q_no,
    "MP" = MP,
    "LS" = LS,
    "LS_session" = LS_session,
    "PDF_Link" = pdf_link
    )

  return(.GlobalEnv$qna <- y)

  }
