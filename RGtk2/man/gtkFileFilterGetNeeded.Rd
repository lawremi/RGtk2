\alias{gtkFileFilterGetNeeded}
\name{gtkFileFilterGetNeeded}
\title{gtkFileFilterGetNeeded}
\description{Gets the fields that need to be filled in for the structure
passed to \code{\link{gtkFileFilterFilter}}}
\usage{gtkFileFilterGetNeeded(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkFileFilter}}]  a \verb{\link{GtkFileFilter}}}}
\details{This function will not typically be used by applications; it
is intended principally for use in the implementation of
\verb{\link{GtkFileChooser}}.  

  Since  2.4}
\value{[\code{\link{GtkFileFilterFlags}}]  bitfield of flags indicating needed fields when
  calling \code{\link{gtkFileFilterFilter}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
