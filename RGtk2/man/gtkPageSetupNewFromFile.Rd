\alias{gtkPageSetupNewFromFile}
\name{gtkPageSetupNewFromFile}
\title{gtkPageSetupNewFromFile}
\description{Reads the page setup from the file \code{file.name}. Returns a 
new \code{\link{GtkPageSetup}} object with the restored page setup, 
or \code{NULL} if an error occurred. See \code{\link{gtkPageSetupToFile}}.}
\usage{gtkPageSetupNewFromFile(file.name, .errwarn = TRUE)}
\arguments{
\item{\verb{file.name}}{the filename to read the page setup from}
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
