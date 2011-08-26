\alias{gtkAccelGroupFromAccelClosure}
\name{gtkAccelGroupFromAccelClosure}
\title{gtkAccelGroupFromAccelClosure}
\description{Finds the \code{\link{GtkAccelGroup}} to which \code{closure} is connected; 
see \code{\link{gtkAccelGroupConnect}}.}
\usage{gtkAccelGroupFromAccelClosure(closure)}
\arguments{\item{\verb{closure}}{a \code{\link{GClosure}}}}
\value{[\code{\link{GtkAccelGroup}}] the \code{\link{GtkAccelGroup}} to which \code{closure} is connected, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
