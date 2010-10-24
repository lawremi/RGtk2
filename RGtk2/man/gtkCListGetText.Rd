\alias{gtkCListGetText}
\name{gtkCListGetText}
\title{gtkCListGetText}
\description{
Gets the text for the specified cell.
\strong{WARNING: \code{gtk_clist_get_text} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCListGetText(w, row, cols, zeroBased = TRUE)}
\arguments{\item{\verb{row}}{The row to query.}}
\value{
A list containing the following elements:
\item{retval}{[integer] 1 if the cell's text could be retrieved, 0 otherwise.}
\item{\verb{text}}{A pointer to a pointer to store the text.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
