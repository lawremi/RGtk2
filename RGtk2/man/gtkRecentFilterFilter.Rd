\alias{gtkRecentFilterFilter}
\name{gtkRecentFilterFilter}
\title{gtkRecentFilterFilter}
\description{Tests whether a file should be displayed according to \code{filter}.
The \code{\link{GtkRecentFilterInfo}} structure \code{filter.info} should include
the fields returned from \code{\link{gtkRecentFilterGetNeeded}}.}
\usage{gtkRecentFilterFilter(object, filter.info)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkRecentFilter}}}
\item{\verb{filter.info}}{a \code{\link{GtkRecentFilterInfo}} structure containing information
about a recently used resource}
}
\details{This function will not typically be used by applications; it
is intended principally for use in the implementation of
\code{\link{GtkRecentChooser}}.
  Since 2.10}
\value{[logical] \code{TRUE} if the file should be displayed}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
