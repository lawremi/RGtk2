\alias{gtkFileChooserSetCurrentName}
\name{gtkFileChooserSetCurrentName}
\title{gtkFileChooserSetCurrentName}
\description{Sets the current name in the file selector, as if entered
by the user. Note that the name passed in here is a UTF-8
string rather than a filename. This function is meant for
such uses as a suggested name in a "Save As..." dialog.}
\usage{gtkFileChooserSetCurrentName(object, name)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkFileChooser}}}
\item{\verb{name}}{the filename to use, as a UTF-8 string}
}
\details{If you want to preselect a particular existing file, you should use
\code{\link{gtkFileChooserSetFilename}} or \code{\link{gtkFileChooserSetUri}} instead.
Please see the documentation for those functions for an example of using
\code{\link{gtkFileChooserSetCurrentName}} as well.
  Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
