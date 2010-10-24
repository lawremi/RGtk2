\alias{atkTextAttributeGetValue}
\name{atkTextAttributeGetValue}
\title{atkTextAttributeGetValue}
\description{Gets the value for the index of the \code{\link{AtkTextAttribute}}}
\usage{atkTextAttributeGetValue(attr, index)}
\arguments{
\item{\verb{attr}}{[\code{\link{AtkTextAttribute}}]  The \code{\link{AtkTextAttribute}} for which a value is required}
\item{\verb{index}}{[integer]  The index of the required value}
}
\value{[character]  a string containing the value; this string should not be freed;
NULL is returned if there are no values maintained for the attr value. }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
