\alias{gtkBoxPackEndDefaults}
\name{gtkBoxPackEndDefaults}
\title{gtkBoxPackEndDefaults}
\description{Adds \code{widget} to \code{box}, packed with reference to the end of \code{box}.  The
child is packed after (away from end of) any other child packed with
reference to the end of \code{box}.}
\usage{gtkBoxPackEndDefaults(object, widget)}
\arguments{
\item{\code{object}}{[\code{\link{GtkBox}}] a \code{\link{GtkBox}}.}
\item{\code{widget}}{[\code{\link{GtkWidget}}] the \code{\link{GtkWidget}} to be added to \code{box}.}
}
\details{Parameters for how to pack the child \code{widget},
\code{expand}, \code{fill},
and \code{padding} in \code{\link{GtkBoxChild}}, are given their default
values, \code{TRUE}, \code{TRUE}, and 0, respectively.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
