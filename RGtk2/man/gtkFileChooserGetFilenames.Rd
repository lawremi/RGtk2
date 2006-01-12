\alias{gtkFileChooserGetFilenames}
\name{gtkFileChooserGetFilenames}
\title{gtkFileChooserGetFilenames}
\description{Lists all the selected files and subfolders in the current folder of
\code{chooser}. The returned names are full absolute paths. If files in the current
folder cannot be represented as local filenames they will be ignored. (See
\code{\link{gtkFileChooserGetUris}})}
\usage{gtkFileChooserGetFilenames(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkFileChooser}}]  a \code{\link{GtkFileChooser}}}}
\details{  Since  2.4}
\value{[list]  a \code{list} containing the filenames of all selected
  files and subfolders in the current folder.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
