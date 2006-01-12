\alias{gtkFileChooserGetCurrentFolder}
\name{gtkFileChooserGetCurrentFolder}
\title{gtkFileChooserGetCurrentFolder}
\description{Gets the current folder of \code{chooser} as a local filename.
See \code{\link{gtkFileChooserSetCurrentFolder}}.}
\usage{gtkFileChooserGetCurrentFolder(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkFileChooser}}]  a \code{\link{GtkFileChooser}}}}
\details{  Since  2.4}
\value{[character]  the full path of the current folder, or \code{NULL} if the current
path cannot be represented as a local filename.  This
function will also return \code{NULL} if the file chooser was unable to load the
last folder that was requested from it; for example, as would be for calling
\code{\link{gtkFileChooserSetCurrentFolder}} on a nonexistent folder.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
