\alias{gtkRcReparseAllForSettings}
\name{gtkRcReparseAllForSettings}
\title{gtkRcReparseAllForSettings}
\description{If the modification time on any previously read file
for the given \code{\link{GtkSettings}} has changed, discard all style information
and then reread all previously read RC files.}
\usage{gtkRcReparseAllForSettings(settings, force.load)}
\arguments{
\item{\verb{settings}}{a \code{\link{GtkSettings}}}
\item{\verb{force.load}}{load whether or not anything changed}
}
\value{[logical] \code{TRUE} if the files were reread.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
