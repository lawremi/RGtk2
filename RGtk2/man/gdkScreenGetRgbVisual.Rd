\alias{gdkScreenGetRgbVisual}
\name{gdkScreenGetRgbVisual}
\title{gdkScreenGetRgbVisual}
\description{Gets a "preferred visual" chosen by GdkRGB for rendering image data
on \code{screen}. In previous versions of
GDK, this was the only visual GdkRGB could use for rendering. In
current versions, it's simply the visual GdkRGB would have chosen as 
the optimal one in those previous versions. GdkRGB can now render to 
drawables with any visual.}
\usage{gdkScreenGetRgbVisual(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GdkScreen}}]  a \verb{\link{GdkScreen}}}}
\details{  Since  2.2}
\value{[\verb{\link{GdkVisual}}]  The \verb{\link{GdkVisual}} chosen by GdkRGB.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
