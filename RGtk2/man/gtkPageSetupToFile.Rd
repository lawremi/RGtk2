\alias{gtkPageSetupToFile}
\name{gtkPageSetupToFile}
\title{gtkPageSetupToFile}
\description{This function saves the information from \code{setup} to \code{file.name}.}
\usage{gtkPageSetupToFile(object, file.name, .errwarn = TRUE)}
\arguments{
\item{\code{object}}{[\code{\link{GtkPageSetup}}]  a \code{\link{GtkPageSetup}}}
\item{\code{file.name}}{[char]  the file to save to}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{  Since  2.12}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} on success}
\item{\code{error}}{[\code{\link{GError}}]  return location for errors, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
