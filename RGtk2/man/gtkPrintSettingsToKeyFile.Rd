\alias{gtkPrintSettingsToKeyFile}
\name{gtkPrintSettingsToKeyFile}
\title{gtkPrintSettingsToKeyFile}
\description{This function adds the print settings from \code{settings} to \code{key.file}.}
\usage{gtkPrintSettingsToKeyFile(object, key.file, group.name)}
\arguments{
\item{\code{object}}{[\code{\link{GtkPrintSettings}}]  a \code{\link{GtkPrintSettings}}}
\item{\code{key.file}}{[GKeyFile]  the \code{GKeyFile} to save the print settings to}
\item{\code{group.name}}{[character]  the group to add the settings to in \code{key.file}, or 
    \code{NULL} to use the default "Print Settings"}
}
\details{  Since  2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
