\alias{gdkWindowSetIconList}
\name{gdkWindowSetIconList}
\title{gdkWindowSetIconList}
\description{Sets a list of icons for the window. One of these will be used
to represent the window when it has been iconified. The icon is
usually shown in an icon box or some sort of task bar. Which icon
size is shown depends on the window manager. The window manager
can scale the icon  but setting several size icons can give better
image quality since the window manager may only need to scale the
icon by a small amount or not at all.}
\usage{gdkWindowSetIconList(object, pixbufs)}
\arguments{
\item{\verb{object}}{The \code{\link{GdkWindow}} toplevel window to set the icon of.}
\item{\verb{pixbufs}}{A list of pixbufs, of different sizes.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
