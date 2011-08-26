\alias{gtkPrintSettingsNewFromFile}
\name{gtkPrintSettingsNewFromFile}
\title{gtkPrintSettingsNewFromFile}
\description{Reads the print settings from \code{file.name}. Returns a new \code{\link{GtkPrintSettings}}
object with the restored settings, or \code{NULL} if an error occurred. If the
file could not be loaded then error is set to either a \code{\link{GFileError}} or
\verb{GKeyFileError}.  See \code{\link{gtkPrintSettingsToFile}}.}
\usage{gtkPrintSettingsNewFromFile(file.name, .errwarn = TRUE)}
\arguments{
\item{\verb{file.name}}{the filename to read the settings from}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Since 2.12}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GtkPrintSettings}}] the restored \code{\link{GtkPrintSettings}}}
\item{\verb{error}}{return location for errors, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
