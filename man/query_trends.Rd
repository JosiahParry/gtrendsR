% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/query_trends.R
\name{query_trends}
\alias{query_trends}
\title{Google Trends Search}
\usage{
query_trends(search_terms, from = NA, to = NA, ...)
}
\arguments{
\item{search_terms}{A character vector containing the search terms of interest}

\item{from}{The beginning date of the query}

\item{to}{The end date of the query}

\item{...}{arguments passed to \code{gtrends()}. See ?gtrends for more information including geography, language, and time-zone.}
}
\value{
An object of class `gtrends`
}
\description{
Search Google Trends to retrieve relative hits and popularity. This supports comparison of up to 5 search terms. Anything more than that will be searched individually.
}
\examples{
\dontrun{
query_trends("RStudio 1.2")
}

}
