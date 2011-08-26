\alias{gtkFileChooserButtonNewWithBackend}
\name{gtkFileChooserButtonNewWithBackend}
\title{gtkFileChooserButtonNewWithBackend}
\description{
Creates a new file-selecting button widget using \code{backend}.
\strong{WARNING: \code{gtk_file_chooser_button_new_with_backend} has been deprecated since version 2.14 and should not be used in newly-written code. Use \code{\link{gtkFileChooserButtonNew}} instead.}
}
\usage{gtkFileChooserButtonNewWithBackend(title, action, backend, show = TRUE)}
\arguments{
\item{\verb{title}}{the title of the browse dialog.}
\item{\verb{action}}{the open mode for the widget.}
\item{\verb{backend}}{the name of the \verb{GtkFileSystem} backend to use.}
}
\details{Since 2.6}
\value{[\code{\link{GtkWidget}}] a new button widget.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
