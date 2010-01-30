\alias{gtkIconSourceSetStateWildcarded}
\name{gtkIconSourceSetStateWildcarded}
\title{gtkIconSourceSetStateWildcarded}
\description{If the widget state is wildcarded, this source can be used as the
base image for an icon in any \code{\link{GtkStateType}}.  If the widget state
is not wildcarded, then the state the source applies to should be
set with \code{\link{gtkIconSourceSetState}} and the icon source will
only be used with that specific state.}
\usage{gtkIconSourceSetStateWildcarded(object, setting)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkIconSource}}]  a \verb{\link{GtkIconSource}}}
\item{\verb{setting}}{[logical] \code{TRUE} to wildcard the widget state}
}
\details{\verb{\link{GtkIconSet}} prefers non-wildcarded sources (exact matches) over
wildcarded sources, and will use an exact match when possible.
  \verb{\link{GtkIconSet}} will normally transform wildcarded source images to
produce an appropriate icon for a given state, for example
lightening an image on prelight, but will not modify source images
that match exactly.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
