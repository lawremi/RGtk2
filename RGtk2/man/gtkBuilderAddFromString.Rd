\alias{gtkBuilderAddFromString}
\name{gtkBuilderAddFromString}
\title{gtkBuilderAddFromString}
\description{Parses a string containing a GtkBuilder 
UI definition and merges it with the current contents of \code{builder}.}
\usage{gtkBuilderAddFromString(object, buffer, length, .errwarn = TRUE)}
\arguments{
\item{\code{object}}{[\code{\link{GtkBuilder}}]  a \code{\link{GtkBuilder}}}
\item{\code{buffer}}{[character]  the string to parse}
\item{\code{length}}{[numeric]  the length of \code{buffer} (may be -1 if \code{buffer} is nul-terminated)}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{  Since  2.12}
\value{
A list containing the following elements:
\item{retval}{[numeric]  A positive value on success, 0 if an error occurred}
\item{\code{error}}{[\code{\link{GError}}]  return location for an error, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
