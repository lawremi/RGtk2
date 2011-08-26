\alias{gtkFileFilterFilter}
\name{gtkFileFilterFilter}
\title{gtkFileFilterFilter}
\description{Tests whether a file should be displayed according to \code{filter}.
The \code{\link{GtkFileFilterInfo}} structure \code{filter.info} should include
the fields returned from \code{\link{gtkFileFilterGetNeeded}}.}
\usage{gtkFileFilterFilter(object, filter.info)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkFileFilter}}}
\item{\verb{filter.info}}{a \code{\link{GtkFileFilterInfo}} structure containing information
about a file.}
}
\details{This function will not typically be used by applications; it
is intended principally for use in the implementation of
\code{\link{GtkFileChooser}}.
  Since 2.4}
\value{[logical] \code{TRUE} if the file should be displayed}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
