\alias{gtkImageNewFromAnimation}
\name{gtkImageNewFromAnimation}
\title{gtkImageNewFromAnimation}
\description{Creates a \code{\link{GtkImage}} displaying the given animation.
The \code{\link{GtkImage}} does not assume a reference to the
animation; you still need to unref it if you own references.
\code{\link{GtkImage}} will add its own reference rather than adopting yours.}
\usage{gtkImageNewFromAnimation(animation)}
\arguments{\item{\code{animation}}{[\code{\link{GdkPixbufAnimation}}]  an animation}}
\value{[\code{\link{GtkWidget}}]  a new \code{\link{GtkImage}} widget}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
