\alias{gtkTextBufferGetStartIter}
\name{gtkTextBufferGetStartIter}
\title{gtkTextBufferGetStartIter}
\description{Initialized \code{iter} with the first position in the text buffer. This
is the same as using \code{\link{gtkTextBufferGetIterAtOffset}} to get
the iter at character offset 0.}
\usage{gtkTextBufferGetStartIter(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkTextBuffer}}}}
\value{
A list containing the following elements:
\item{\verb{iter}}{iterator to initialize}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
