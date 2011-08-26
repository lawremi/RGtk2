\alias{gtkPrintSettingsToKeyFile}
\name{gtkPrintSettingsToKeyFile}
\title{gtkPrintSettingsToKeyFile}
\description{This function adds the print settings from \code{settings} to \code{key.file}.}
\usage{gtkPrintSettingsToKeyFile(object, key.file, group.name)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkPrintSettings}}}
\item{\verb{key.file}}{the \verb{GKeyFile} to save the print settings to}
\item{\verb{group.name}}{the group to add the settings to in \code{key.file}, or
\code{NULL} to use the default "Print Settings"}
}
\details{Since 2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
