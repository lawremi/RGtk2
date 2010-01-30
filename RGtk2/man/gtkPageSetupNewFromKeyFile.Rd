\alias{gtkPageSetupNewFromKeyFile}
\name{gtkPageSetupNewFromKeyFile}
\title{gtkPageSetupNewFromKeyFile}
\description{Reads the page setup from the group \code{group.name} in the key file
\code{key.file}. Returns a new \verb{\link{GtkPageSetup}} object with the restored
page setup, or \code{NULL} if an error occurred.}
\usage{gtkPageSetupNewFromKeyFile(key.file, group.name, .errwarn = TRUE)}
\arguments{
\item{\verb{key.file}}{[GKeyFile]  the \verb{GKeyFile} to retrieve the page_setup from}
\item{\verb{group.name}}{[character]  the name of the group in the key_file to read, or \code{NULL}
             to use the default name "Page Setup"}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{  Since  2.12}
\value{
A list containing the following elements:
\item{retval}{[\verb{\link{GtkPageSetup}}]  the restored \verb{\link{GtkPageSetup}}}
\item{\verb{error}}{[\verb{\link{GError}}]  return location for an error, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
