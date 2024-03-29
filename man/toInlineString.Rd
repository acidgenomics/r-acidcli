% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/inline.R
\name{toInlineString}
\alias{toInlineString}
\title{Convert input to inline class string}
\usage{
toInlineString(x, n = 5L, class = "val")
}
\arguments{
\item{x}{\code{character}.}

\item{n}{\code{integer(1)} or \code{Inf}.
Maximum number of elements to include.}

\item{class}{\code{character(1)}.
Inline style class.}
}
\value{
\code{character(1)}.
}
\description{
Convert input to inline class string
}
\note{
Updated 2021-09-13.
}
\examples{
x <- c("aaa", "bbb", "ccc", "ddd")
x <- toInlineString(x, n = 3L)
x
}
