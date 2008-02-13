\alias{gtkPrintSettingsNewFromKeyFile}
\name{gtkPrintSettingsNewFromKeyFile}
\title{gtkPrintSettingsNewFromKeyFile}
\description{Reads the print settings from the group \code{group.name} in \code{key.file}. 
Returns a new \code{\link{GtkPrintSettings}} object with the restored settings, 
or \code{NULL} if an error occurred.}
\usage{gtkPrintSettingsNewFromKeyFile(key.file, group.name, .errwarn = TRUE)}
\arguments{
\item{\code{key.file}}{[GKeyFile]  the \code{GKeyFile} to retrieve the settings from}
\item{\code{group.name}}{[character]  the name of the group to use}
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
