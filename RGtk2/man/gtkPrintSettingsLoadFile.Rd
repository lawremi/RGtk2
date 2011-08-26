\alias{gtkPrintSettingsLoadFile}
\name{gtkPrintSettingsLoadFile}
\title{gtkPrintSettingsLoadFile}
\description{Reads the print settings from \code{file.name}. If the file could not be loaded
then error is set to either a \code{\link{GFileError}} or \verb{GKeyFileError}.
See \code{\link{gtkPrintSettingsToFile}}.}
\usage{gtkPrintSettingsLoadFile(object, file.name, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkPrintSettings}}}
\item{\verb{file.name}}{the filename to read the settings from}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Since 2.14}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} on success}
\item{\verb{error}}{return location for errors, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
