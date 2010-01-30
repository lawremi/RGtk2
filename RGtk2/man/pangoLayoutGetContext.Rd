\alias{pangoLayoutGetContext}
\name{pangoLayoutGetContext}
\title{pangoLayoutGetContext}
\description{Retrieves the \verb{\link{PangoContext}} used for this layout.}
\usage{pangoLayoutGetContext(object)}
\arguments{\item{\verb{object}}{[\verb{\link{PangoLayout}}]  a \verb{\link{PangoLayout}}}}
\value{[\verb{\link{PangoContext}}]  the \verb{\link{PangoContext}} for the layout. This does not
have an additional refcount added, so if you want to keep
a copy of this around, you must reference it yourself.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
