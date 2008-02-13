\alias{gtkPrintSettingsNewFromFile}
\name{gtkPrintSettingsNewFromFile}
\title{gtkPrintSettingsNewFromFile}
\description{Reads the print settings from \code{filename}. Returns a new \code{\link{GtkPrintSettings}}
object with the restored settings, or \code{NULL} if an error occurred.
See \code{\link{gtkPrintSettingsToFile}}.}
\usage{gtkPrintSettingsNewFromFile(file.name, .errwarn = TRUE)}
\arguments{
\item{\code{file.name}}{[character]  the filename to read the settings from}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{  Since  2.12}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GtkPrintSettings}}]  the restored \code{\link{GtkPrintSettings}}}
\item{\code{error}}{[\code{\link{GError}}]  return location for errors, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
