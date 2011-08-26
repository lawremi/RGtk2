\alias{gtkWidgetIsAncestor}
\name{gtkWidgetIsAncestor}
\title{gtkWidgetIsAncestor}
\description{Determines whether \code{widget} is somewhere inside \code{ancestor}, possibly with
intermediate containers.}
\usage{gtkWidgetIsAncestor(object, ancestor)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{ancestor}}{another \code{\link{GtkWidget}}}
}
\value{[logical] \code{TRUE} if \code{ancestor} contains \code{widget} as a child,
grandchild, great grandchild, etc.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
