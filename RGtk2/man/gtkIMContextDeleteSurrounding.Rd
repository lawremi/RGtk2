\alias{gtkIMContextDeleteSurrounding}
\name{gtkIMContextDeleteSurrounding}
\title{gtkIMContextDeleteSurrounding}
\description{Asks the widget that the input context is attached to to delete
characters around the cursor position by emitting the
GtkIMContext::delete_surrounding signal. Note that \code{offset} and \code{n.chars}
are in characters not in bytes which differs from the usage other
places in \code{\link{GtkIMContext}}.}
\usage{gtkIMContextDeleteSurrounding(object, offset, n.chars)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkIMContext}}}
\item{\verb{offset}}{offset from cursor position in chars;
a negative value means start before the cursor.}
\item{\verb{n.chars}}{number of characters to delete.}
}
\details{In order to use this function, you should first call
\code{\link{gtkIMContextGetSurrounding}} to get the current context, and
call this function immediately afterwards to make sure that you
know what you are deleting. You should also account for the fact
that even if the signal was handled, the input context might not
have deleted all the characters that were requested to be deleted.
  
This function is used by an input method that wants to make
subsitutions in the existing text in response to new input. It is
not useful for applications.}
\value{[logical] \code{TRUE} if the signal was handled.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
