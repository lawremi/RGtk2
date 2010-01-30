\alias{gtkFileFilterFilter}
\name{gtkFileFilterFilter}
\title{gtkFileFilterFilter}
\description{Tests whether a file should be displayed according to \code{filter}.
The \verb{\link{GtkFileFilterInfo}} structure \code{filter.info} should include
the fields returned from \code{\link{gtkFileFilterGetNeeded}}.}
\usage{gtkFileFilterFilter(object, filter.info)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkFileFilter}}]  a \verb{\link{GtkFileFilter}}}
\item{\verb{filter.info}}{[\verb{\link{GtkFileFilterInfo}}]  a \verb{\link{GtkFileFilterInfo}} structure containing information
 about a file.}
}
\details{This function will not typically be used by applications; it
is intended principally for use in the implementation of
\verb{\link{GtkFileChooser}}.  

  Since  2.4}
\value{[logical] \code{TRUE} if the file should be displayed}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
