\alias{gtkFileChooserAddShortcutFolder}
\name{gtkFileChooserAddShortcutFolder}
\title{gtkFileChooserAddShortcutFolder}
\description{Adds a folder to be displayed with the shortcut folders in a file chooser.
Note that shortcut folders do not get saved, as they are provided by the
application.  For example, you can use this to add a
"/usr/share/mydrawprogram/Clipart" folder to the volume list.}
\usage{gtkFileChooserAddShortcutFolder(object, folder, .errwarn = TRUE)}
\arguments{
\item{\code{object}}{[\code{\link{GtkFileChooser}}]  a \code{\link{GtkFileChooser}}}
\item{\code{folder}}{[char]  filename of the folder to add}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{  Since  2.4}
\value{
A list containing the following elements:
\item{retval}{[logical]  \code{TRUE} if the folder could be added successfully, \code{FALSE}
otherwise.  In the latter case, the \code{error} will be set as appropriate.}
\item{\code{error}}{[\code{\link{GError}}]  location to store error, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
