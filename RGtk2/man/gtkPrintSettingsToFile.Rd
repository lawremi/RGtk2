\alias{gtkPrintSettingsToFile}
\name{gtkPrintSettingsToFile}
\title{gtkPrintSettingsToFile}
\description{This function saves the print settings from \code{settings} to \code{file.name}.}
\usage{gtkPrintSettingsToFile(object, file.name, .errwarn = TRUE)}
\arguments{
\item{\code{object}}{[\code{\link{GtkPrintSettings}}]  a \code{\link{GtkPrintSettings}}}
\item{\code{file.name}}{[character]  the file to save to}
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
