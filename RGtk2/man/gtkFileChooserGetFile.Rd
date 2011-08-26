\alias{gtkFileChooserGetFile}
\name{gtkFileChooserGetFile}
\title{gtkFileChooserGetFile}
\description{Gets the \code{\link{GFile}} for the currently selected file in
the file selector. If multiple files are selected,
one of the files will be returned at random.}
\usage{gtkFileChooserGetFile(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkFileChooser}}}}
\details{If the file chooser is in folder mode, this function returns the selected
folder.
  Since 2.14}
\value{[\code{\link{GFile}}] a selected \code{\link{GFile}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
