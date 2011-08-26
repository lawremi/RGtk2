\alias{gtkPageSetupToFile}
\name{gtkPageSetupToFile}
\title{gtkPageSetupToFile}
\description{This function saves the information from \code{setup} to \code{file.name}.}
\usage{gtkPageSetupToFile(object, file.name, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkPageSetup}}}
\item{\verb{file.name}}{the file to save to}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Since 2.12}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} on success}
\item{\verb{error}}{return location for errors, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
