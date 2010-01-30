\alias{gtkWidgetIsAncestor}
\name{gtkWidgetIsAncestor}
\title{gtkWidgetIsAncestor}
\description{Determines whether \code{widget} is somewhere inside \code{ancestor}, possibly with
intermediate containers.}
\usage{gtkWidgetIsAncestor(object, ancestor)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkWidget}}]  a \verb{\link{GtkWidget}}}
\item{\verb{ancestor}}{[\verb{\link{GtkWidget}}]  another \verb{\link{GtkWidget}}}
}
\value{[logical] \code{TRUE} if \code{ancestor} contains \code{widget} as a child, 
   grandchild, great grandchild, etc.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
