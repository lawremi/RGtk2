\alias{gtkCListSetPixmap}
\name{gtkCListSetPixmap}
\title{gtkCListSetPixmap}
\description{
Sets a pixmap for the specified cell.
\strong{WARNING: \code{gtk_clist_set_pixmap} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCListSetPixmap(object, row, column, pixmap, mask = NULL)}
\arguments{
\item{\verb{object}}{The \code{\link{GtkCList}} to affect.}
\item{\verb{row}}{The row of the cell.}
\item{\verb{column}}{The column of the cell.}
\item{\verb{pixmap}}{A pointer to a \code{\link{GdkPixmap}} to place in the cell.}
\item{\verb{mask}}{. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
