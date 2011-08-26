\alias{gtkFileChooserSelectFile}
\name{gtkFileChooserSelectFile}
\title{gtkFileChooserSelectFile}
\description{Selects the file referred to by \code{file}. An internal function. See
\code{\link{gtkFileChooserSelectUri}}.}
\usage{gtkFileChooserSelectFile(object, file, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkFileChooser}}}
\item{\verb{file}}{the file to select}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Since 2.14}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if both the folder could be changed and the path was
selected successfully, \code{FALSE} otherwise.}
\item{\verb{error}}{location to store error, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
