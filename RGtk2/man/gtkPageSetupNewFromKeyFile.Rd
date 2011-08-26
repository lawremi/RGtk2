\alias{gtkPageSetupNewFromKeyFile}
\name{gtkPageSetupNewFromKeyFile}
\title{gtkPageSetupNewFromKeyFile}
\description{Reads the page setup from the group \code{group.name} in the key file
\code{key.file}. Returns a new \code{\link{GtkPageSetup}} object with the restored
page setup, or \code{NULL} if an error occurred.}
\usage{gtkPageSetupNewFromKeyFile(key.file, group.name, .errwarn = TRUE)}
\arguments{
\item{\verb{key.file}}{the \verb{GKeyFile} to retrieve the page_setup from}
\item{\verb{group.name}}{the name of the group in the key_file to read, or \code{NULL}
to use the default name "Page Setup". \emph{[  \acronym{allow-none}  ]}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Since 2.12}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{GtkPageSetup}}] the restored \code{\link{GtkPageSetup}}}
\item{\verb{error}}{return location for an error, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
