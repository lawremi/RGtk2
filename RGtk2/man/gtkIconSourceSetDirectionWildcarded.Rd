\alias{gtkIconSourceSetDirectionWildcarded}
\name{gtkIconSourceSetDirectionWildcarded}
\title{gtkIconSourceSetDirectionWildcarded}
\description{If the text direction is wildcarded, this source can be used
as the base image for an icon in any \code{\link{GtkTextDirection}}.
If the text direction is not wildcarded, then the
text direction the icon source applies to should be set
with \code{\link{gtkIconSourceSetDirection}}, and the icon source
will only be used with that text direction.}
\usage{gtkIconSourceSetDirectionWildcarded(object, setting)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkIconSource}}}
\item{\verb{setting}}{\code{TRUE} to wildcard the text direction}
}
\details{\code{\link{GtkIconSet}} prefers non-wildcarded sources (exact matches) over
wildcarded sources, and will use an exact match when possible.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
