\alias{gtkClipboardSetText}
\name{gtkClipboardSetText}
\title{gtkClipboardSetText}
\description{Sets the contents of the clipboard to the given UTF-8 string. GTK+ will
make a copy of the text and take responsibility for responding
for requests for the text, and for converting the text into
the requested format.}
\usage{gtkClipboardSetText(object, text, len = -1)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkClipboard}}]  a \verb{\link{GtkClipboard}} object}
\item{\verb{text}}{[character]       a UTF-8 string.}
\item{\verb{len}}{[integer]        length of \code{text}, in bytes, or -1, in which case
            the length will be determined with \code{strlen()}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
