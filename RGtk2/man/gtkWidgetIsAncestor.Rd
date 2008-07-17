\alias{gtkWidgetIsAncestor}
\name{gtkWidgetIsAncestor}
\title{gtkWidgetIsAncestor}
\description{Determines whether \code{widget} is somewhere inside \code{ancestor}, possibly with
intermediate containers.}
\usage{gtkWidgetIsAncestor(object, ancestor)}
\arguments{
\item{\code{object}}{[\code{\link{GtkWidget}}]  a \code{\link{GtkWidget}}}
\item{\code{ancestor}}{[\code{\link{GtkWidget}}]  another \code{\link{GtkWidget}}}
}
\value{[logical] \code{TRUE} if \code{ancestor} contains \code{widget} as a child, 
   grandchild, great grandchild, etc.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
