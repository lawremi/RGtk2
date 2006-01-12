\alias{gtkCListSetColumnMinWidth}
\name{gtkCListSetColumnMinWidth}
\title{gtkCListSetColumnMinWidth}
\description{
Causes the column specified to have a minimum width, preventing
the user from resizing it smaller than that specified.
\strong{WARNING: \code{gtk_clist_set_column_min_width} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCListSetColumnMinWidth(object, column, min.width)}
\arguments{
\item{\code{object}}{[\code{\link{GtkCList}}] The \code{\link{GtkCList}} to affect.}
\item{\code{column}}{[integer] The column to set the minimum width.}
\item{\code{min.width}}{[integer] The width, in pixels.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
