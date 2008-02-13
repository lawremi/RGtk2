\alias{gtkBuilderGetObjects}
\name{gtkBuilderGetObjects}
\title{gtkBuilderGetObjects}
\description{Gets all objects that have been constructed by \code{builder}. Note that 
this function does not increment the reference counts of the returned
objects.}
\usage{gtkBuilderGetObjects(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkBuilder}}]  a \code{\link{GtkBuilder}}}}
\details{  Since  2.12}
\value{[list]  a newly-allocated \code{list} containing all the objects
  constructed by the \code{\link{GtkBuilder}} instance}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
