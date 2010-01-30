\alias{gtkIconSourceSetSizeWildcarded}
\name{gtkIconSourceSetSizeWildcarded}
\title{gtkIconSourceSetSizeWildcarded}
\description{If the icon size is wildcarded, this source can be used as the base
image for an icon of any size.  If the size is not wildcarded, then
the size the source applies to should be set with
\code{\link{gtkIconSourceSetSize}} and the icon source will only be used
with that specific size.}
\usage{gtkIconSourceSetSizeWildcarded(object, setting)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkIconSource}}]  a \verb{\link{GtkIconSource}}}
\item{\verb{setting}}{[logical] \code{TRUE} to wildcard the widget state}
}
\details{\verb{\link{GtkIconSet}} prefers non-wildcarded sources (exact matches) over
wildcarded sources, and will use an exact match when possible.
  \verb{\link{GtkIconSet}} will normally scale wildcarded source images to produce
an appropriate icon at a given size, but will not change the size
of source images that match exactly.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
