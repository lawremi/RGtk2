\alias{gtkFileChooserGetCurrentFolderUri}
\name{gtkFileChooserGetCurrentFolderUri}
\title{gtkFileChooserGetCurrentFolderUri}
\description{Gets the current folder of \code{chooser} as an URI.
See \code{\link{gtkFileChooserSetCurrentFolderUri}}.}
\usage{gtkFileChooserGetCurrentFolderUri(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkFileChooser}}}}
\details{Note that this is the folder that the file chooser is currently displaying
(e.g. "file:///home/username/Documents"), which is \emph{not the same}
as the currently-selected folder if the chooser is in
\code{GTK_FILE_CHOOSER_SELECT_FOLDER} mode
(e.g. "file:///home/username/Documents/selected-folder/".  To get the
currently-selected folder in that mode, use \code{\link{gtkFileChooserGetUri}} as the
usual way to get the selection.
  Since 2.4}
\value{[character] the URI for the current folder.  This
function will also return \code{NULL} if the file chooser was unable to load the
last folder that was requested from it; for example, as would be for calling
\code{\link{gtkFileChooserSetCurrentFolderUri}} on a nonexistent folder.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
