\alias{gtkFileChooserRemoveShortcutFolderUri}
\name{gtkFileChooserRemoveShortcutFolderUri}
\title{gtkFileChooserRemoveShortcutFolderUri}
\description{Removes a folder URI from a file chooser's list of shortcut folders.}
\usage{gtkFileChooserRemoveShortcutFolderUri(object, uri, .errwarn = TRUE)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkFileChooser}}]  a \verb{\link{GtkFileChooser}}}
\item{\verb{uri}}{[char]  URI of the folder to remove}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{  Since  2.4}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the operation succeeds, \code{FALSE} otherwise.  
In the latter case, the \code{error} will be set as appropriate.

See also: \code{\link{gtkFileChooserAddShortcutFolderUri}}}
\item{\verb{error}}{[\verb{\link{GError}}]  location to store error, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
