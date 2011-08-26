\alias{gtkIconSourceSetSize}
\name{gtkIconSourceSetSize}
\title{gtkIconSourceSetSize}
\description{Sets the icon size this icon source is intended to be used
with.}
\usage{gtkIconSourceSetSize(object, size)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkIconSource}}}
\item{\verb{size}}{icon size this source applies to. \emph{[  \acronym{type}   int]}}
}
\details{Setting the icon size on an icon source makes no difference
if the size is wildcarded. Therefore, you should usually
call \code{\link{gtkIconSourceSetSizeWildcarded}} to un-wildcard it
in addition to calling this function.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
