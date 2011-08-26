\alias{gtkPageSetupLoadKeyFile}
\name{gtkPageSetupLoadKeyFile}
\title{gtkPageSetupLoadKeyFile}
\description{Reads the page setup from the group \code{group.name} in the key file
\code{key.file}.}
\usage{gtkPageSetupLoadKeyFile(object, key.file, group.name, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkPageSetup}}}
\item{\verb{key.file}}{the \verb{GKeyFile} to retrieve the page_setup from}
\item{\verb{group.name}}{the name of the group in the key_file to read, or \code{NULL}
to use the default name "Page Setup". \emph{[  \acronym{allow-none}  ]}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Since 2.14}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} on success}
\item{\verb{error}}{return location for an error, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
