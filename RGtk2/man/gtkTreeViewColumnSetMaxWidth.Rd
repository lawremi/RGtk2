\alias{gtkTreeViewColumnSetMaxWidth}
\name{gtkTreeViewColumnSetMaxWidth}
\title{gtkTreeViewColumnSetMaxWidth}
\description{Sets the maximum width of the \code{tree.column}.  If \code{max.width} is -1, then the
maximum width is unset.  Note, the column can actually be wider than max
width if it's the last column in a view.  In this case, the column expands to
fill any extra space.}
\usage{gtkTreeViewColumnSetMaxWidth(object, max.width)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTreeViewColumn}}.}
\item{\verb{max.width}}{The maximum width of the column in pixels, or -1.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
