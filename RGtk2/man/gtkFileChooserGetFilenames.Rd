\alias{gtkFileChooserGetFilenames}
\name{gtkFileChooserGetFilenames}
\title{gtkFileChooserGetFilenames}
\description{Lists all the selected files and subfolders in the current folder of
\code{chooser}. The returned names are full absolute paths. If files in the current
folder cannot be represented as local filenames they will be ignored. (See
\code{\link{gtkFileChooserGetUris}})}
\usage{gtkFileChooserGetFilenames(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkFileChooser}}}}
\details{Since 2.4}
\value{[list]  a \verb{list} containing the filenames of all selected
  files and subfolders in the current folder. \emph{[  \acronym{element-type}   utf8][  \acronym{transfer full}   utf8]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
