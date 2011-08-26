\alias{gtkBuilderGetObjects}
\name{gtkBuilderGetObjects}
\title{gtkBuilderGetObjects}
\description{Gets all objects that have been constructed by \code{builder}. Note that 
this function does not increment the reference counts of the returned
objects.}
\usage{gtkBuilderGetObjects(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkBuilder}}}}
\details{Since 2.12}
\value{[list] a newly-allocated \verb{list} containing all the objects
constructed by the \code{\link{GtkBuilder}} instance. \emph{[  \acronym{element-type}   GObject][  \acronym{transfer container}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
