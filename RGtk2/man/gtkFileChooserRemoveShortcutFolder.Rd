\alias{gtkFileChooserRemoveShortcutFolder}
\name{gtkFileChooserRemoveShortcutFolder}
\title{gtkFileChooserRemoveShortcutFolder}
\description{Removes a folder from a file chooser's list of shortcut folders.}
\usage{gtkFileChooserRemoveShortcutFolder(object, folder, .errwarn = TRUE)}
\arguments{
\item{\code{object}}{[\code{\link{GtkFileChooser}}]  a \code{\link{GtkFileChooser}}}
\item{\code{folder}}{[char]  filename of the folder to remove}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{  Since  2.4}
\value{
A list containing the following elements:
\item{retval}{[logical]  \code{TRUE} if the operation succeeds, \code{FALSE} otherwise.  
In the latter case, the \code{error} will be set as appropriate.

See also: \code{\link{gtkFileChooserAddShortcutFolder}}}
\item{\code{error}}{[\code{\link{GError}}]  location to store error, or \code{NULL}}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
