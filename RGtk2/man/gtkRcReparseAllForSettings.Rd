\alias{gtkRcReparseAllForSettings}
\name{gtkRcReparseAllForSettings}
\title{gtkRcReparseAllForSettings}
\description{If the modification time on any previously read file
for the given \code{\link{GtkSettings}} has changed, discard all style information
and then reread all previously read RC files.}
\usage{gtkRcReparseAllForSettings(settings, force.load)}
\arguments{
\item{\code{settings}}{[\code{\link{GtkSettings}}]  a \code{\link{GtkSettings}}}
\item{\code{force.load}}{[logical]  load whether or not anything changed}
}
\value{[logical]  \code{TRUE} if the files were reread.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
