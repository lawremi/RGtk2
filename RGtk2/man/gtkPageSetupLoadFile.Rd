\alias{gtkPageSetupLoadFile}
\name{gtkPageSetupLoadFile}
\title{gtkPageSetupLoadFile}
\description{Reads the page setup from the file \code{file.name}.
See \code{\link{gtkPageSetupToFile}}.}
\usage{gtkPageSetupLoadFile(object, file.name, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkPageSetup}}}
\item{\verb{file.name}}{the filename to read the page setup from}
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
