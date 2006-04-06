\alias{gtkTextChildAnchorGetDeleted}
\name{gtkTextChildAnchorGetDeleted}
\title{gtkTextChildAnchorGetDeleted}
\description{Determines whether a child anchor has been deleted from
the buffer. Keep in mind that the child anchor will be
unreferenced when removed from the buffer, so you need to
hold your own reference (with \code{g\Object\Ref()}) if you plan
to use this function -- otherwise all deleted child anchors
will also be finalized.}
\usage{gtkTextChildAnchorGetDeleted(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkTextChildAnchor}}]  a \code{\link{GtkTextChildAnchor}}}}
\value{[logical]  \code{TRUE} if the child anchor has been deleted from its buffer}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
