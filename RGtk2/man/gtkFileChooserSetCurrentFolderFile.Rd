\alias{gtkFileChooserSetCurrentFolderFile}
\name{gtkFileChooserSetCurrentFolderFile}
\title{gtkFileChooserSetCurrentFolderFile}
\description{Sets the current folder for \code{chooser} from a \code{\link{GFile}}.
Internal function, see \code{\link{gtkFileChooserSetCurrentFolderUri}}.}
\usage{gtkFileChooserSetCurrentFolderFile(object, file, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkFileChooser}}}
\item{\verb{file}}{the \code{\link{GFile}} for the new folder}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Since 2.14}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the folder could be changed successfully, \code{FALSE}
otherwise.}
\item{\verb{error}}{location to store error, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
