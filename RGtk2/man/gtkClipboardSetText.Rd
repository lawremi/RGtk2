\alias{gtkClipboardSetText}
\name{gtkClipboardSetText}
\title{gtkClipboardSetText}
\description{Sets the contents of the clipboard to the given UTF-8 string. GTK+ will
make a copy of the text and take responsibility for responding
for requests for the text, and for converting the text into
the requested format.}
\usage{gtkClipboardSetText(object, text, len = -1)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkClipboard}} object}
\item{\verb{text}}{a UTF-8 string.}
\item{\verb{len}}{length of \code{text}, in bytes, or -1, in which case
the length will be determined with \code{strlen()}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
