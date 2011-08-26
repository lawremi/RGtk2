\alias{gtkPrintSettingsLoadKeyFile}
\name{gtkPrintSettingsLoadKeyFile}
\title{gtkPrintSettingsLoadKeyFile}
\description{Reads the print settings from the group \code{group.name} in \code{key.file}. If the
file could not be loaded then error is set to either a \code{\link{GFileError}} or
\verb{GKeyFileError}.}
\usage{gtkPrintSettingsLoadKeyFile(object, key.file, group.name, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkPrintSettings}}}
\item{\verb{key.file}}{the \verb{GKeyFile} to retrieve the settings from}
\item{\verb{group.name}}{the name of the group to use, or \code{NULL} to use the default
"Print Settings". \emph{[  \acronym{allow-none}  ]}}
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
