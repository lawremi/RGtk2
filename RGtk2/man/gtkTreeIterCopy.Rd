\alias{gtkTreeIterCopy}
\name{gtkTreeIterCopy}
\title{gtkTreeIterCopy}
\description{Creates a dynamically allocated tree iterator as a copy of \code{iter}.  This
function is not intended for use in applications, because you can just copy
the structs by value (\code{GtkTreeIter new_iter = iter;}).}
\usage{gtkTreeIterCopy(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkTreeIter}}]  A \verb{\link{GtkTreeIter}}.}}
\value{[\verb{\link{GtkTreeIter}}]  a newly-allocated copy of \code{iter}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
