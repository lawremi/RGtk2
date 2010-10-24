\alias{gtkFileChooserGetFilename}
\name{gtkFileChooserGetFilename}
\title{gtkFileChooserGetFilename}
\description{Gets the filename for the currently selected file in
the file selector. If multiple files are selected,
one of the filenames will be returned at random.}
\usage{gtkFileChooserGetFilename(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkFileChooser}}}}
\details{If the file chooser is in folder mode, this function returns the selected
folder.
  Since 2.4}
\value{[character]  The currently selected filename, or \code{NULL}
 if no file is selected, or the selected file can't
 be represented with a local filename.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
