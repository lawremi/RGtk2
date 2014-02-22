\alias{pangoLayoutSetText}
\name{pangoLayoutSetText}
\title{pangoLayoutSetText}
\description{Sets the text of the layout.}
\usage{pangoLayoutSetText(object, text, length = -1)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoLayout}}]  a \code{\link{PangoLayout}}}
\item{\verb{text}}{[char]  a valid UTF-8 string}
\item{\verb{length}}{[integer]  maximum length of \code{text}, in bytes. -1 indicates that
         the string is and the length should be
         calculated.  The text will also be truncated on
         encountering a nul-termination even when \code{length} is
         positive.}
}
\details{Note that if you have used
\code{\link{pangoLayoutSetMarkup}} or \code{\link{pangoLayoutSetMarkupWithAccel}} on
\code{layout} before, you may want to call \code{\link{pangoLayoutSetAttributes}} to clear
the attributes set on the layout from the markup as this function does not
clear attributes.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
