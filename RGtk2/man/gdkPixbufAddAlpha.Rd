\alias{gdkPixbufAddAlpha}
\name{gdkPixbufAddAlpha}
\title{gdkPixbufAddAlpha}
\description{Takes an existing pixbuf and adds an alpha channel to it.
If the existing pixbuf already had an alpha channel, the channel
values are copied from the original; otherwise, the alpha channel
is initialized to 255 (full opacity).}
\usage{gdkPixbufAddAlpha(object, substitute.color, r, g, b)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkPixbuf}}]  A \verb{\link{GdkPixbuf}}.}
\item{\verb{substitute.color}}{[logical]  Whether to set a color to zero opacity.  If this
is \code{FALSE}, then the (\code{r}, \code{g}, \code{b}) arguments will be ignored.}
\item{\verb{r}}{[raw]  Red value to substitute.}
\item{\verb{g}}{[raw]  Green value to substitute.}
\item{\verb{b}}{[raw]  Blue value to substitute.}
}
\details{If \code{substitute.color} is \code{TRUE}, then the color specified by (\code{r}, \code{g}, \code{b}) will be
assigned zero opacity. That is, if you pass (255, 255, 255) for the
substitute color, all white pixels will become fully transparent.  }
\value{[\verb{\link{GdkPixbuf}}]  A newly-created pixbuf with a reference count of 1.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
