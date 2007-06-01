\alias{pangoLayoutSetText}
\name{pangoLayoutSetText}
\title{pangoLayoutSetText}
\description{Sets the text of the layout.}
\usage{pangoLayoutSetText(object, text, length = -1)}
\arguments{
\item{\code{object}}{[\code{\link{PangoLayout}}]  a \code{\link{PangoLayout}}}
\item{\code{text}}{[char]  a valid UTF-8 string}
\item{\code{length}}{[integer]  maximum length of \code{text}, in bytes. -1 indicates that
         the string is and the length should be
         calculated.  The text will also be truncated on
         encountering a nul-termination even when \code{length} is
         positive.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
