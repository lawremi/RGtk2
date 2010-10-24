\alias{gtkFileChooserGetCurrentFolder}
\name{gtkFileChooserGetCurrentFolder}
\title{gtkFileChooserGetCurrentFolder}
\description{Gets the current folder of \code{chooser} as a local filename.
See \code{\link{gtkFileChooserSetCurrentFolder}}.}
\usage{gtkFileChooserGetCurrentFolder(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkFileChooser}}}}
\details{Note that this is the folder that the file chooser is currently displaying
(e.g. "/home/username/Documents"), which is \emph{not the same}
as the currently-selected folder if the chooser is in
\code{GTK_FILE_CHOOSER_SELECT_FOLDER} mode
(e.g. "/home/username/Documents/selected-folder/".  To get the
currently-selected folder in that mode, use \code{\link{gtkFileChooserGetUri}} as the
usual way to get the selection.
  Since 2.4}
\value{[character]  the full path of the current folder, or \code{NULL} if the current
path cannot be represented as a local filename.  This
function will also return \code{NULL} if the file chooser was unable to load the
last folder that was requested from it; for example, as would be for calling
\code{\link{gtkFileChooserSetCurrentFolder}} on a nonexistent folder.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
