\alias{gtkBuilderAddFromFile}
\name{gtkBuilderAddFromFile}
\title{gtkBuilderAddFromFile}
\description{Parses a file containing a GtkBuilder 
UI definition and merges it with the current contents of \code{builder}.}
\usage{gtkBuilderAddFromFile(object, filename, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkBuilder}}]  a \verb{\link{GtkBuilder}}}
\item{\verb{filename}}{[character]  the name of the file to parse}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{  Since  2.12}
\value{
A list containing the following elements:
\item{retval}{[numeric]  A positive value on success, 0 if an error occurred}
\item{\verb{error}}{[\verb{\link{GError}}]  return location for an error, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
