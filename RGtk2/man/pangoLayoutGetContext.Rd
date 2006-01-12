\alias{pangoLayoutGetContext}
\name{pangoLayoutGetContext}
\title{pangoLayoutGetContext}
\description{Retrieves the \code{\link{PangoContext}} used for this layout.}
\usage{pangoLayoutGetContext(object)}
\arguments{\item{\code{object}}{[\code{\link{PangoLayout}}]  a \code{\link{PangoLayout}}}}
\value{[\code{\link{PangoContext}}]  The \code{\link{PangoContext}} for the layout. This does not
have an additional refcount added, so if you want to keep
a copy of this around, you must reference it yourself.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
