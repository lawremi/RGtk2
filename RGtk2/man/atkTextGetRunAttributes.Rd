\alias{atkTextGetRunAttributes}
\name{atkTextGetRunAttributes}
\title{atkTextGetRunAttributes}
\description{Creates an \code{\link{AtkAttributeSet}} which consists of the attributes explicitly
set at the position \code{offset} in the text. \code{start.offset} and \code{end.offset} are
set to the start and end of the range around \code{offset} where the attributes are
invariant. Note that \code{end.offset} is the offset of the first character
after the range.  See the enum AtkTextAttribute for types of text 
attributes that can be returned. Note that other attributes may also be 
returned.}
\usage{atkTextGetRunAttributes(object, offset)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkText}}]  an \code{\link{AtkText}}}
\item{\verb{offset}}{[integer]  the offset at which to get the attributes, -1 means the offset of
the character to be inserted at the caret location.}
}
\value{
A list containing the following elements:
\item{retval}{[\code{\link{AtkAttributeSet}}]  an \code{\link{AtkAttributeSet}} which contains the attributes explicitly set
at \code{offset}.}
\item{\verb{start.offset}}{[integer]  the address to put the start offset of the range}
\item{\verb{end.offset}}{[integer]  the address to put the end offset of the range}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
