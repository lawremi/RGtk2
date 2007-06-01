\alias{gtkUIManagerAddUiFromFile}
\name{gtkUIManagerAddUiFromFile}
\title{gtkUIManagerAddUiFromFile}
\description{Parses a file containing a UI definition and 
merges it with the current contents of \code{self}.}
\usage{gtkUIManagerAddUiFromFile(object, filename, .errwarn = TRUE)}
\arguments{
\item{\code{object}}{[\code{\link{GtkUIManager}}]  a \code{\link{GtkUIManager}} object}
\item{\code{filename}}{[character]  the name of the file to parse }
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{  Since  2.4}
\value{
A list containing the following elements:
\item{retval}{[numeric]  The merge id for the merged UI. The merge id can be used
  to unmerge the UI with \code{\link{gtkUIManagerRemoveUi}}. If an error occurred,
  the return value is 0.}
\item{\code{error}}{[\code{\link{GError}}]  return location for an error}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
