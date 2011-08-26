\alias{gtkPrintSettingsNewFromKeyFile}
\name{gtkPrintSettingsNewFromKeyFile}
\title{gtkPrintSettingsNewFromKeyFile}
\description{Reads the print settings from the group \code{group.name} in \code{key.file}.  Returns a
new \code{\link{GtkPrintSettings}} object with the restored settings, or \code{NULL} if an
error occurred. If the file could not be loaded then error is set to either
a \code{\link{GFileError}} or \verb{GKeyFileError}.}
\usage{gtkPrintSettingsNewFromKeyFile(key.file, group.name, .errwarn = TRUE)}
\arguments{
\item{\verb{key.file}}{the \verb{GKeyFile} to retrieve the settings from}
\item{\verb{group.name}}{the name of the group to use, or \code{NULL} to use
the default "Print Settings". \emph{[  \acronym{allow-none}  ]}}
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
