\alias{gtkWindowSetDefaultIconList}
\name{gtkWindowSetDefaultIconList}
\title{gtkWindowSetDefaultIconList}
\description{Sets an icon list to be used as fallback for windows that haven't
had \code{\link{gtkWindowSetIconList}} called on them to set up a
window-specific icon list. This function allows you to set up the
icon for all windows in your app at once.}
\usage{gtkWindowSetDefaultIconList(list)}
\arguments{\item{\verb{list}}{(element-type GdkPixbuf) (transfer container) a list of \code{\link{GdkPixbuf}}}}
\details{See \code{\link{gtkWindowSetIconList}} for more details.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
