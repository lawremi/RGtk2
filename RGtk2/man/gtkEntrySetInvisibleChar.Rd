\alias{gtkEntrySetInvisibleChar}
\name{gtkEntrySetInvisibleChar}
\title{gtkEntrySetInvisibleChar}
\description{Sets the character to use in place of the actual text when
\code{\link{gtkEntrySetVisibility}} has been called to set text visibility
to \code{FALSE}. i.e. this is the character used in "password mode" to
show the user how many characters have been typed. By default, GTK+
picks the best invisible char available in the current font. If you
set the invisible char to 0, then the user will get no feedback
at all; there will be no text on the screen as they type.}
\usage{gtkEntrySetInvisibleChar(object, ch)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkEntry}}}
\item{\verb{ch}}{a Unicode character}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
