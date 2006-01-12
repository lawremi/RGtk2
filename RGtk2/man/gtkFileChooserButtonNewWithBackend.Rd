\alias{gtkFileChooserButtonNewWithBackend}
\name{gtkFileChooserButtonNewWithBackend}
\title{gtkFileChooserButtonNewWithBackend}
\description{Creates a new file-selecting button widget using \code{backend}.}
\usage{gtkFileChooserButtonNewWithBackend(title, action, backend, show = TRUE)}
\arguments{
\item{\code{title}}{[character]  the title of the browse dialog.}
\item{\code{action}}{[\code{\link{GtkFileChooserAction}}]  the open mode for the widget.}
\item{\code{backend}}{[character]  the name of the \code{GtkFileSystem} backend to use.}
}
\details{  Since  2.6}
\value{[\code{\link{GtkWidget}}]  a new button widget.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
