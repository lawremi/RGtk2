\alias{pangoScriptIterNew}
\name{pangoScriptIterNew}
\title{pangoScriptIterNew}
\description{Create a new \code{\link{PangoScriptIter}}, used to break a string of
Unicode into runs by text. No copy is made of \code{text},}
\usage{pangoScriptIterNew(text, length)}
\arguments{
\item{\verb{text}}{[char]  a UTF-8 string}
\item{\verb{length}}{[integer]  length of \code{text}, or -1 if \code{text} is nul-terminated.}
}
\details{  Since 1.4}
\value{[\code{\link{PangoScriptIter}}]  the new script iterator, initialized
 to point at the first range in the text, If the string is
 empty, it will point at an empty range.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
