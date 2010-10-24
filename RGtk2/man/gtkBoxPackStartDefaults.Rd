\alias{gtkBoxPackStartDefaults}
\name{gtkBoxPackStartDefaults}
\title{gtkBoxPackStartDefaults}
\description{
Adds \code{widget} to \code{box}, packed with reference to the start of \code{box}.
The child is packed after any other child packed with reference 
to the start of \code{box}. 
\strong{WARNING: \code{gtk_box_pack_start_defaults} has been deprecated since version 2.14 and should not be used in newly-written code. Use \code{\link{gtkBoxPackStart}}}
}
\usage{gtkBoxPackStartDefaults(object, widget)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkBox}}}
\item{\verb{widget}}{the \code{\link{GtkWidget}} to be added to \code{box}}
}
\details{Parameters for how to pack the child \code{widget}, \verb{"expand"}, 
\verb{"fill"} and \verb{"padding"}, are given their default
values, \code{TRUE}, \code{TRUE}, and 0, respectively.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
