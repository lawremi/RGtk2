\alias{gtkTreeIterCopy}
\name{gtkTreeIterCopy}
\title{gtkTreeIterCopy}
\description{Creates a dynamically allocated tree iterator as a copy of \code{iter}.  
This function is not intended for use in applications, because you 
can just copy the structs by value 
(\code{GtkTreeIter new_iter = iter;}).}
\usage{gtkTreeIterCopy(object)}
\arguments{\item{\verb{object}}{A \code{\link{GtkTreeIter}}.}}
\value{[\code{\link{GtkTreeIter}}] a newly-allocated copy of \code{iter}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
