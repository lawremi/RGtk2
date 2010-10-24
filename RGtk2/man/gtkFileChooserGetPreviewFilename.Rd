\alias{gtkFileChooserGetPreviewFilename}
\name{gtkFileChooserGetPreviewFilename}
\title{gtkFileChooserGetPreviewFilename}
\description{Gets the filename that should be previewed in a custom preview
widget. See \code{\link{gtkFileChooserSetPreviewWidget}}.}
\usage{gtkFileChooserGetPreviewFilename(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkFileChooser}}}}
\details{Since 2.4}
\value{[char]  the filename to preview, or \code{NULL} if no file
 is selected, or if the selected file cannot be represented
 as a local filename.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
