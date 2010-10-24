\alias{gtkFileChooserSelectFilename}
\name{gtkFileChooserSelectFilename}
\title{gtkFileChooserSelectFilename}
\description{Selects a filename. If the file name isn't in the current
folder of \code{chooser}, then the current folder of \code{chooser} will
be changed to the folder containing \code{filename}.}
\usage{gtkFileChooserSelectFilename(object, filename)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkFileChooser}}}
\item{\verb{filename}}{the filename to select}
}
\details{Since 2.4}
\value{[logical] \code{TRUE} if both the folder could be changed and the file was
selected successfully, \code{FALSE} otherwise.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
