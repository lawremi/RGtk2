\alias{gtkTextBufferGetIterAtChildAnchor}
\name{gtkTextBufferGetIterAtChildAnchor}
\title{gtkTextBufferGetIterAtChildAnchor}
\description{Obtains the location of \code{anchor} within \code{buffer}.}
\usage{gtkTextBufferGetIterAtChildAnchor(object, anchor)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTextBuffer}}]  a \code{\link{GtkTextBuffer}}}
\item{\code{anchor}}{[\code{\link{GtkTextChildAnchor}}]  a child anchor that appears in \code{buffer}}
}
\value{
A list containing the following elements:
\item{\code{iter}}{[\code{\link{GtkTextIter}}]  an iterator to be initialized}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
