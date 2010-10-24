\alias{gtkIconSourceSetDirection}
\name{gtkIconSourceSetDirection}
\title{gtkIconSourceSetDirection}
\description{Sets the text direction this icon source is intended to be used
with.}
\usage{gtkIconSourceSetDirection(object, direction)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkIconSource}}}
\item{\verb{direction}}{text direction this source applies to}
}
\details{Setting the text direction on an icon source makes no difference
if the text direction is wildcarded. Therefore, you should usually
call \code{\link{gtkIconSourceSetDirectionWildcarded}} to un-wildcard it
in addition to calling this function.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
