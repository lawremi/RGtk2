\alias{gtkIMContextGetSurrounding}
\name{gtkIMContextGetSurrounding}
\title{gtkIMContextGetSurrounding}
\description{Retrieves context around the insertion point. Input methods
typically want context in order to constrain input text based on
existing text; this is important for languages such as Thai where
only some sequences of characters are allowed.}
\usage{gtkIMContextGetSurrounding(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkIMContext}}}}
\details{This function is implemented by emitting the
GtkIMContext::retrieve_surrounding signal on the input method; in
response to this signal, a widget should provide as much context as
is available, up to an entire paragraph, by calling
\code{\link{gtkIMContextSetSurrounding}}. Note that there is no obligation
for a widget to respond to the ::retrieve_surrounding signal, so input
methods must be prepared to function without context.}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if surrounding text was provided; in this case
you must free the result stored in *text.}
\item{\verb{text}}{location to store a UTF-8 encoded string of text
holding context around the insertion point.
If the function returns \code{TRUE}, then you must free
the result stored in this location with \code{gFree()}.}
\item{\verb{cursor.index}}{location to store byte index of the insertion cursor
within \code{text}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
