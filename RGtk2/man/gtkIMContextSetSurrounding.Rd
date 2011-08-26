\alias{gtkIMContextSetSurrounding}
\name{gtkIMContextSetSurrounding}
\title{gtkIMContextSetSurrounding}
\description{Sets surrounding context around the insertion point and preedit
string. This function is expected to be called in response to the
GtkIMContext::retrieve_surrounding signal, and will likely have no
effect if called at other times.}
\usage{gtkIMContextSetSurrounding(object, text, cursor.index)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkIMContext}}}
\item{\verb{text}}{text surrounding the insertion point, as UTF-8.
the preedit string should not be included within
\code{text}.}
\item{\verb{cursor.index}}{the byte index of the insertion cursor within \code{text}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
