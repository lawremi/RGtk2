\alias{gtkTextBufferGetIterAtChildAnchor}
\name{gtkTextBufferGetIterAtChildAnchor}
\title{gtkTextBufferGetIterAtChildAnchor}
\description{Obtains the location of \code{anchor} within \code{buffer}.}
\usage{gtkTextBufferGetIterAtChildAnchor(object, anchor)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTextBuffer}}]  a \verb{\link{GtkTextBuffer}}}
\item{\verb{anchor}}{[\verb{\link{GtkTextChildAnchor}}]  a child anchor that appears in \code{buffer}}
}
\value{
A list containing the following elements:
\item{\verb{iter}}{[\verb{\link{GtkTextIter}}]  an iterator to be initialized}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
