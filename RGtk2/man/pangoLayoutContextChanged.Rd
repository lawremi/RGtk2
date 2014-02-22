\alias{pangoLayoutContextChanged}
\name{pangoLayoutContextChanged}
\title{pangoLayoutContextChanged}
\description{Forces recomputation of any state in the \code{\link{PangoLayout}} that
might depend on the layout's context. This function should
be called if you make changes to the context subsequent
to creating the layout.}
\usage{pangoLayoutContextChanged(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoLayout}}]  a \code{\link{PangoLayout}}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
