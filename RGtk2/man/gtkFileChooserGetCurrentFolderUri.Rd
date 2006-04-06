\alias{gtkFileChooserGetCurrentFolderUri}
\name{gtkFileChooserGetCurrentFolderUri}
\title{gtkFileChooserGetCurrentFolderUri}
\description{Gets the current folder of \code{chooser} as an URI.
See \code{\link{gtkFileChooserSetCurrentFolderUri}}.}
\usage{gtkFileChooserGetCurrentFolderUri(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkFileChooser}}]  a \code{\link{GtkFileChooser}}}}
\details{  Since  2.4}
\value{[character]  the URI for the current folder.  Free with \code{g\Free()}.  This
function will also return \code{NULL} if the file chooser was unable to load the
last folder that was requested from it; for example, as would be for calling
\code{\link{gtkFileChooserSetCurrentFolderUri}} on a nonexistent folder.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
