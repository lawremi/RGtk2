\alias{gtkFileChooserGetPreviewFile}
\name{gtkFileChooserGetPreviewFile}
\title{gtkFileChooserGetPreviewFile}
\description{Gets the \code{\link{GFile}} that should be previewed in a custom preview
Internal function, see \code{\link{gtkFileChooserGetPreviewUri}}.}
\usage{gtkFileChooserGetPreviewFile(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkFileChooser}}}}
\details{Since 2.14}
\value{[\code{\link{GFile}}] the \code{\link{GFile}} for the file to preview, or \code{NULL} if no file
is selected.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
