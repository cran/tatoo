% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Mashed_table.R
\name{rmash}
\alias{rmash}
\alias{cmash}
\title{Mash R objects by Rows or Columns}
\usage{
rmash(..., rem_ext = NULL, insert_blank_row = FALSE, meta = NULL)

cmash(
  ...,
  rem_ext = NULL,
  id_vars = NULL,
  suffixes = names(list(...)),
  meta = NULL
)
}
\arguments{
\item{...}{either several \code{data.frames}, \code{data.table}s or a single
\link{Mashed_table}. All \code{data.frames} must have the same number of columns.}

\item{rem_ext}{\code{character}. For \code{mash_table} to work, the column names of all
elements of \code{dat} must be identical. Sometimes you will have the situation
that column names are identical except for a suffix, such as \code{length} and
\code{lenght.sd}. The \code{rem_ext} option can be used to remove such suffixes.}

\item{insert_blank_row}{Only if mashing rows: logical. Whether to insert
blank rows between mash-groups. \emph{Warning: this converts all columns to
character.} Use with care.}

\item{meta}{A  \link{TT_meta} object. if supplied, output will also be a
\link{Tagged_table}.}

\item{id_vars}{Only if mashing columns: one ore more colnames of the tables
to be mashed. If supplied, columns of both input tables are combined with
\code{\link[=merge]{merge()}}, otherwise \code{\link[=cbind]{cbind()}} is used.}

\item{suffixes}{a character vector of length 2 specifying the suffixes to be
used for making unique the names of columns.}
}
\value{
A \link{data.table} if
any element of \code{(...)} is a data.table
or \link{Tatoo_table},
or if \code{meta} is supplied;
else a \code{data.frame}.
}
\description{
\code{rmash()} and \code{cmash()} are convenience function to mash \code{data.frames} together
with a single command. They behave similar to \code{\link[=cbind]{cbind()}} and
\code{\link[=rbind]{rbind()}}, just that the result will have have alternating rows/columns.
}
\examples{

dat1 <- data.frame(
  x = 1:3,
  y = 4:6
)

dat2 <- data.frame(
  x = letters[1:3],
  y = letters[4:6]
)

rmash(dat1, dat2)

#    x y
# 1: 1 4
# 2: a d
# 3: 2 5
# 4: b e
# 5: 3 6
# 6: c f

cmash(dat1, dat2)

#    x x y y
# 1: 1 a 4 d
# 2: 2 b 5 e
# 3: 3 c 6 f


}
\seealso{
\link{Mashed_table}
}
