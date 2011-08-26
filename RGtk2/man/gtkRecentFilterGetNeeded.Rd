\alias{gtkRecentFilterGetNeeded}
\name{gtkRecentFilterGetNeeded}
\title{gtkRecentFilterGetNeeded}
\description{Gets the fields that need to be filled in for the structure
passed to \code{\link{gtkRecentFilterFilter}}}
\usage{gtkRecentFilterGetNeeded(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkRecentFilter}}}}
\details{This function will not typically be used by applications; it
is intended principally for use in the implementation of
\code{\link{GtkRecentChooser}}.
  Since 2.10}
\value{[\code{\link{GtkRecentFilterFlags}}] bitfield of flags indicating needed fields when
calling \code{\link{gtkRecentFilterFilter}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
