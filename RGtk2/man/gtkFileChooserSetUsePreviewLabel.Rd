\alias{gtkFileChooserSetUsePreviewLabel}
\name{gtkFileChooserSetUsePreviewLabel}
\title{gtkFileChooserSetUsePreviewLabel}
\description{Sets whether the file chooser should display a stock label with the name of
the file that is being previewed; the default is \code{TRUE}.  Applications that
want to draw the whole preview area themselves should set this to \code{FALSE} and
display the name themselves in their preview widget.}
\usage{gtkFileChooserSetUsePreviewLabel(object, use.label)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkFileChooser}}}
\item{\verb{use.label}}{whether to display a stock label with the name of the previewed file}
}
\details{See also: \code{\link{gtkFileChooserSetPreviewWidget}}
  Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
