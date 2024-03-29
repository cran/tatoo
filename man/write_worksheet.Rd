% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/as_workbook.R
\name{write_worksheet}
\alias{write_worksheet}
\alias{write_worksheet.Tagged_table}
\alias{write_worksheet.Composite_table}
\alias{write_worksheet.Mashed_table}
\alias{write_worksheet.Stacked_table}
\title{Write Data to an openxlsx Worksheet}
\usage{
write_worksheet(
  x,
  wb,
  sheet,
  append = FALSE,
  start_row = 1L,
  ...,
  named_regions = TRUE,
  named_regions_prefix = NA_character_
)

\method{write_worksheet}{Tagged_table}(
  x,
  wb,
  sheet = sanitize_excel_sheet_names(attr(x, "meta")$table_id),
  append = FALSE,
  start_row = 1L,
  ...,
  print_table_id = attr(x, "meta")[[".print_table_id"]],
  named_regions = TRUE,
  named_regions_prefix = NA_character_
)

\method{write_worksheet}{Composite_table}(
  x,
  wb,
  sheet,
  append = FALSE,
  start_row = 1L,
  ...,
  named_regions = TRUE,
  named_regions_prefix = NA_character_
)

\method{write_worksheet}{Mashed_table}(
  x,
  wb,
  sheet,
  append = FALSE,
  start_row = 1L,
  mash_method = attr(x, "mash_method"),
  id_vars = attr(x, "id_vars"),
  insert_blank_row = attr(x, "insert_blank_row"),
  sep_height = attr(x, "sep_height"),
  ...,
  named_regions = TRUE,
  named_regions_prefix = NA_character_
)

\method{write_worksheet}{Stacked_table}(
  x,
  wb,
  sheet,
  append = FALSE,
  start_row = 1L,
  spacing = attr(x, "spacing"),
  ...,
  named_regions = TRUE,
  named_regions_prefix = NA_character_
)
}
\arguments{
\item{x}{A \code{Tatoo_table}.}

\item{wb}{An \link{openxlsx} \code{Workbook} object}

\item{sheet}{The worksheet to write to. Can be the worksheet index or name.}

\item{append}{\code{logical} Whether or not to append to an existing worksheet or
create a new one}

\item{start_row}{A scalar integer specifying the starting row to write to.}

\item{...}{Additional arguments passed on to methods for overriding the
styling attributes of the \code{Tatoo_tables} you want to export.}

\item{named_regions}{\code{logical}. If \code{TRUE} (default) named regions are created
in the target excel file to identify different parts of the tables
(header, body, column names, etc...). These named regions can, for example,
be used for applying formats. Creating named regions can be switched of
as this might impact performance of the excel conversion and writing of
excel files for workbooks with large numbers of tables.}

\item{named_regions_prefix}{\code{character} scalar. Prefix to write in front
of all named regions created by \code{write_worksheet}}

\item{print_table_id}{\code{logical} vector. Whether or not \code{table_id} should be
added to the title of the table. It is recommended to use table_ids only
internally (i.e. for \code{\link[=walk_regions]{walk_regions()}}).}

\item{mash_method}{either \code{"row"} or \code{"col"}. Should the tables be mashed
together with alternating rows or with alternating columns?}

\item{id_vars}{If \code{id_vars} is specified, the tables will be combined
using \code{\link[=merge]{merge()}} on the columns specified in \code{id_vars}, otherwise
the tables will be combined with \code{\link[=cbind]{cbind()}}.}

\item{insert_blank_row}{Only if mashing rows: logical. Whether to insert
blank rows between mash-groups. \emph{Warning: this converts all columns to
character.} Use with care.}

\item{sep_height}{Only has an effect when exporting to \code{xlsx}. if
\code{insert_blank_row == TRUE}, height of the inserted row, else height of the
top row of each mash-group.}

\item{spacing}{Number of lineskips between the tables when exporting to
xlsx}
}
\value{
an \link{openxlsx} Workbook object
}
\description{
This function is similar to \code{\link[openxlsx:writeData]{openxlsx::writeData()}} from the
package, but rather than just writing \code{data.frames},
\code{write_worksheet()} supports specialized methods for the various
\code{\link{Tatoo_table}} subclasses.
}
\seealso{
Other xlsx exporters: 
\code{\link{as_workbook}()}
}
\concept{xlsx exporters}
