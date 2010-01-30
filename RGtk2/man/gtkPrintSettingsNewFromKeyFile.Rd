\alias{gtkPrintSettingsNewFromKeyFile}
\name{gtkPrintSettingsNewFromKeyFile}
\title{gtkPrintSettingsNewFromKeyFile}
\description{Reads the print settings from the group \code{group.name} in \code{key.file}. 
Returns a new \verb{\link{GtkPrintSettings}} object with the restored settings, 
or \code{NULL} if an error occurred.}
\usage{gtkPrintSettingsNewFromKeyFile(key.file, group.name, .errwarn = TRUE)}
\arguments{
\item{\verb{key.file}}{[GKeyFile]  the \verb{GKeyFile} to retrieve the settings from}
\item{\verb{group.name}}{[character]  the name of the group to use}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{  Since  2.12}
\value{
A list containing the following elements:
\item{retval}{[\verb{\link{GtkPrintSettings}}]  the restored \verb{\link{GtkPrintSettings}}}
\item{\verb{error}}{[\verb{\link{GError}}]  return location for errors, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
