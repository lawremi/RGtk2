\alias{gtkPrintSettingsToFile}
\name{gtkPrintSettingsToFile}
\title{gtkPrintSettingsToFile}
\description{This function saves the print settings from \code{settings} to \code{file.name}. If the
file could not be loaded then error is set to either a \code{\link{GFileError}} or
\verb{GKeyFileError}.}
\usage{gtkPrintSettingsToFile(object, file.name, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkPrintSettings}}}
\item{\verb{file.name}}{the file to save to}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Since 2.12}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} on success}
\item{\verb{error}}{return location for errors, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
