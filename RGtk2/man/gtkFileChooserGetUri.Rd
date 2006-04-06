\alias{gtkFileChooserGetUri}
\name{gtkFileChooserGetUri}
\title{gtkFileChooserGetUri}
\description{Gets the URI for the currently selected file in
the file selector. If multiple files are selected,
one of the filenames will be returned at random.}
\usage{gtkFileChooserGetUri(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkFileChooser}}]  a \code{\link{GtkFileChooser}}}}
\details{If the file chooser is in folder mode, this function returns the selected
folder.  

  Since  2.4}
\value{[character]  The currently selected URI, or \code{NULL}
 if no file is selected. Free with \code{g\Free()}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
