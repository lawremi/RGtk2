\alias{gtkCListSetColumnMaxWidth}
\name{gtkCListSetColumnMaxWidth}
\title{gtkCListSetColumnMaxWidth}
\description{
Causes the column specified to have a maximum width, preventing
the user from resizing it larger than that specified.
\strong{WARNING: \code{gtk_clist_set_column_max_width} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCListSetColumnMaxWidth(object, column, max.width)}
\arguments{
\item{\code{object}}{[\code{\link{GtkCList}}] The \code{\link{GtkCList}} to affect.}
\item{\code{column}}{[integer] The column to set the maximum width.}
\item{\code{max.width}}{[integer] The width, in pixels.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
