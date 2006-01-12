\alias{pangoLayoutSetText}
\name{pangoLayoutSetText}
\title{pangoLayoutSetText}
\description{Sets the text of the layout.}
\usage{pangoLayoutSetText(object, text, length = -1)}
\arguments{
\item{\code{object}}{[\code{\link{PangoLayout}}]  a \code{\link{PangoLayout}}}
\item{\code{text}}{[char]  a UTF-8 string}
\item{\code{length}}{[integer]  the length of \code{text}, in bytes. -1 indicates that
         the string is and the length should be
         calculated.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
