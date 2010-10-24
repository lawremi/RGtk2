\alias{gtkFileChooserRemoveShortcutFolder}
\name{gtkFileChooserRemoveShortcutFolder}
\title{gtkFileChooserRemoveShortcutFolder}
\description{Removes a folder from a file chooser's list of shortcut folders.}
\usage{gtkFileChooserRemoveShortcutFolder(object, folder, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkFileChooser}}}
\item{\verb{folder}}{filename of the folder to remove}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{Since 2.4}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the operation succeeds, \code{FALSE} otherwise.  
In the latter case, the \code{error} will be set as appropriate.

See also: \code{\link{gtkFileChooserAddShortcutFolder}}}
\item{\verb{error}}{ location to store error, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
