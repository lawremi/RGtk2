\name{GError}
\alias{GError}
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
}
\seealso{
\code{\link{GdkPixbufError}}
\code{\link{GtkFileChooserError}}
}
\reference{\url{http://developer.gnome.org/doc/API/2.0/glib/glib-Error-Reporting.html}}
\keyword{interface}
\keyword{internal}

