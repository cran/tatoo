% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/as_latex.R
\name{as_latex.data.frame}
\alias{as_latex.data.frame}
\title{Convert a Data Frame to Latex Code}
\usage{
\method{as_latex}{data.frame}(x, ..., kable_options = default_kable_options())
}
\arguments{
\item{x}{a \code{\link{Tatoo_table}}, \code{data.frame} or a list of \code{data.frame}s}

\item{...}{passed on to methods}

\item{kable_options}{\code{list}. Options passed on to \code{\link[knitr:kable]{knitr::kable()}}. See
\code{\link[=default_kable_options]{default_kable_options()}} for details.}
}
\value{
\code{as_latex()}returns a \code{character} scalar of Latex code

\code{save_pdf()} returns a the path to the saved file as \code{character}
scalar.

\code{view_pdf()} returns \code{NULL} (invisibly)
}
\description{
Convert a Data Frame to Latex Code
}
\seealso{
Other as_latex methods: 
\code{\link{as_latex.Composite_table}()},
\code{\link{as_latex.Mashed_table}()},
\code{\link{as_latex.Tagged_table}()},
\code{\link{as_latex.Tatoo_report}()},
\code{\link{as_latex}()}
}
\concept{as_latex methods}
