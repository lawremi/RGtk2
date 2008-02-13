\alias{gtkPageSetupToKeyFile}
\name{gtkPageSetupToKeyFile}
\title{gtkPageSetupToKeyFile}
\description{This function adds the page setup from \code{setup} to \code{key.file}.}
\usage{gtkPageSetupToKeyFile(object, key.file, group.name)}
\arguments{
\item{\code{object}}{[\code{\link{GtkPageSetup}}]  a \code{\link{GtkPageSetup}}}
\item{\code{key.file}}{[GKeyFile]  the \code{GKeyFile} to save the page setup to}
\item{\code{group.name}}{[character]  the group to add the settings to in \code{key.file}, 
     or \code{NULL} to use the default name "Page Setup"}
}
\details{  Since  2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
