\alias{atkTextGetRunAttributes}
\name{atkTextGetRunAttributes}
\title{atkTextGetRunAttributes}
\description{Creates an \verb{\link{AtkAttributeSet}} which consists of the attributes explicitly
set at the position \code{offset} in the text. \code{start.offset} and \code{end.offset} are
set to the start and end of the range around \code{offset} where the attributes are
invariant. Note that \code{end.offset} is the offset of the first character
after the range.  See the enum AtkTextAttribute for types of text 
attributes that can be returned. Note that other attributes may also be 
returned.}
\usage{atkTextGetRunAttributes(object, offset)}
\arguments{
\item{\verb{object}}{[\verb{\link{AtkText}}]  an \verb{\link{AtkText}}}
\item{\verb{offset}}{[integer]  the offset at which to get the attributes}
}
\value{
A list containing the following elements:
\item{retval}{[\verb{\link{AtkAttributeSet}}]  an \verb{\link{AtkAttributeSet}} which contains the attributes explicitly set
at \code{offset}.}
\item{\verb{start.offset}}{[integer]  the address to put the start offset of the range}
\item{\verb{end.offset}}{[integer]  the address to put the end offset of the range}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
