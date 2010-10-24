\alias{gtkFileChooserSelectUri}
\name{gtkFileChooserSelectUri}
\title{gtkFileChooserSelectUri}
\description{Selects the file to by \code{uri}. If the URI doesn't refer to a
file in the current folder of \code{chooser}, then the current folder of
\code{chooser} will be changed to the folder containing \code{filename}.}
\usage{gtkFileChooserSelectUri(object, uri)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkFileChooser}}}
\item{\verb{uri}}{the URI to select}
}
\details{Since 2.4}
\value{[logical] \code{TRUE} if both the folder could be changed and the URI was
selected successfully, \code{FALSE} otherwise.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
