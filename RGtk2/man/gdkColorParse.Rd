\alias{gdkColorParse}
\name{gdkColorParse}
\title{gdkColorParse}
\description{Parses a textual specification of a color and fill in
the \code{red},
\code{green}, and 
\code{blue} fields of a 
\verb{\link{GdkColor}} structure. The color is \emph{not} 
allocated, you must call \code{\link{gdkColormapAllocColor}} yourself.
The text string can be in any of the forms accepted
by \code{xparsecolor}; these include
name for a color from \file{rgb.txt}, such as
\code{DarkSlateGray}, or a hex specification
such as \code{#3050b2} or \code{#35b}.}
\usage{gdkColorParse(spec)}
\arguments{\item{\verb{spec}}{[character]  the string specifying the color.}}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the parsing succeeded.}
\item{\verb{color}}{[\verb{\link{GdkColor}}]  the \verb{\link{GdkColor}} to fill in}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
