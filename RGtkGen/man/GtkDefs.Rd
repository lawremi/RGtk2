\name{GtkDefs}
\alias{GtkDefs}
\non_function{}
\title{Symbolic definitions of the base Gtk classes, routines,
  enumerations, etc.}
\description{
  This is an R object representing the definitions
  of Gtk classes, routines, enumerations, etc.
  These are used to programmatically create an interface to the
  C routines and data structures from S.
}
\usage{data(GtkDefs)}
\format{
  This is a list with 5 elements:
  \item{functions}{the definitions for the C routines in the library.}
  \item{enums}{the definitions for the enumerations in the library}
  \item{flags}{the definitions for the flags in the library}
  \item{classes}{the definitions of the different classes defined within
  this library.}
  \item{boxes}{the box-type data structures in this library.}
}
\source{
  This is computed from the .defs files
  in the \code{RGtk} package: and 
  gtk.defs, gdk.defs and gnome.defs and the included .defs files.
  The R object is generated via a call to \code{\link{getDefs}}.
  That uses the \code{RSPython} package the \code{generate}
  Python module which is part of \url{pygtk}.
}
\references{
 \url{http://www.omegahat.net/RGtk/}
}
\examples{
data(GtkDefs)
}
\keyword{datasets}
