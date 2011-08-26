\alias{gtkTextIterGetChildAnchor}
\name{gtkTextIterGetChildAnchor}
\title{gtkTextIterGetChildAnchor}
\description{If the location at \code{iter} contains a child anchor, the
anchor is returned (with no new reference count added). Otherwise,
\code{NULL} is returned.}
\usage{gtkTextIterGetChildAnchor(object)}
\arguments{\item{\verb{object}}{an iterator}}
\value{[\code{\link{GtkTextChildAnchor}}] the anchor at \code{iter}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
