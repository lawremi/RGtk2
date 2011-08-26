\alias{gtkTextViewNewWithBuffer}
\name{gtkTextViewNewWithBuffer}
\title{gtkTextViewNewWithBuffer}
\description{Creates a new \code{\link{GtkTextView}} widget displaying the buffer
\code{buffer}. One buffer can be shared among many widgets.
\code{buffer} may be \code{NULL} to create a default buffer, in which case
this function is equivalent to \code{\link{gtkTextViewNew}}. The
text view adds its own reference count to the buffer; it does not
take over an existing reference.}
\usage{gtkTextViewNewWithBuffer(buffer = NULL, show = TRUE)}
\arguments{\item{\verb{buffer}}{a \code{\link{GtkTextBuffer}}}}
\value{[\code{\link{GtkWidget}}] a new \code{\link{GtkTextView}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
