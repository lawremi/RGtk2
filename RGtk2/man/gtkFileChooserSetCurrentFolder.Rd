\alias{gtkFileChooserSetCurrentFolder}
\name{gtkFileChooserSetCurrentFolder}
\title{gtkFileChooserSetCurrentFolder}
\description{Sets the current folder for \code{chooser} from a local filename.
The user will be shown the full contents of the current folder,
plus user interface elements for navigating to other folders.}
\usage{gtkFileChooserSetCurrentFolder(object, filename)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkFileChooser}}}
\item{\verb{filename}}{the full path of the new current folder}
}
\details{Since 2.4}
\value{[logical] \code{TRUE} if the folder could be changed successfully, \code{FALSE}
otherwise.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
