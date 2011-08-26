\alias{gtkRcGetStyle}
\name{gtkRcGetStyle}
\title{gtkRcGetStyle}
\description{Finds all matching RC styles for a given widget,
composites them together, and then creates a 
\code{\link{GtkStyle}} representing the composite appearance.
(GTK+ actually keeps a cache of previously 
created styles, so a new style may not be
created.)}
\usage{gtkRcGetStyle(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWidget}}}}
\value{[\code{\link{GtkStyle}}] the resulting style. No refcount is added
to the returned style, so if you want to save this
style around, you should add a reference yourself.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
