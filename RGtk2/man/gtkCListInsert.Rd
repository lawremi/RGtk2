\alias{gtkCListInsert}
\name{gtkCListInsert}
\title{gtkCListInsert}
\description{
Adds a row of text to the CList at the specified position.
\strong{WARNING: \code{gtk_clist_insert} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCListInsert(object, row, text)}
\arguments{
\item{\verb{object}}{The \code{\link{GtkCList}} to affect.}
\item{\verb{row}}{The row where the text should be inserted.}
\item{\verb{text}}{An list of string to add.}
}
\value{[integer] The number of the row added.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
