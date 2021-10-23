\name{GError}
\alias{GError}
\alias{GFileError}
\alias{GDK_PIXBUF_ERROR}
\alias{GTK_FILE_CHOOSER_ERROR}
\alias{GTK_ICON_THEME_ERROR}
\alias{G_FILE_ERROR}
\alias{gFileErrorQuark}
\alias{gdkPixbufErrorQuark}
\alias{gtkIconThemeErrorQuark}
\alias{gtkPrintErrorQuark}
\alias{gtkRecentChooserErrorQuark}
\alias{gtkRecentManagerErrorQuark}
\alias{gtkBuilderErrorQuark}
\alias{gIoErrorQuark}
\alias{gResolverErrorQuark}
\title{The GError object}
\description{
GLib provides a standard method of reporting errors from a called function to the calling code. 
(This is the same problem solved by exceptions in other languages.)
}
\details{
As a \link{transparent-type}, a \code{GError} is returned to the user as a list 
with the following elements:
\describe{
\item{domain}{a numeric vector with one named element that identifies the error domain}
\item{code}{an integer code (often an enum value) identifying the specific error type within the domain}
\item{message}{a descriptive error message}
}
The domain is usually retrived via a function of the form NAME\_OF\_DOMAIN\_ERROR().
For example, for \code{\link{GdkPixbuf}}, the error domain is provided by \code{GDK_PIXBUF_ERROR()}.
}
\seealso{
\code{\link{GdkPixbufError}}
\code{\link{GtkFileChooserError}}
\code{\link{GtkPrintError}}
\code{\link{GtkRecentChooserError}}
\code{\link{GtkRecentManagerError}}
}
\references{\url{https://developer-old.gnome.org/glib/stable/glib-Error-Reporting.html}}
\keyword{interface}
\keyword{internal}

