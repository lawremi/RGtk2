\alias{gtkImageNewFromAnimation}
\name{gtkImageNewFromAnimation}
\title{gtkImageNewFromAnimation}
\description{Creates a \verb{\link{GtkImage}} displaying the given animation.
The \verb{\link{GtkImage}} does not assume a reference to the
animation; you still need to unref it if you own references.
\verb{\link{GtkImage}} will add its own reference rather than adopting yours.}
\usage{gtkImageNewFromAnimation(animation, show = TRUE)}
\arguments{\item{\verb{animation}}{[\verb{\link{GdkPixbufAnimation}}]  an animation}}
\details{Note that the animation frames are shown using a timeout with
\verb{G_PRIORITY_DEFAULT}. When using animations to indicate busyness,
keep in mind that the animation will only be shown if the main loop
is not busy with something that has a higher priority.  }
\value{[\verb{\link{GtkWidget}}]  a new \verb{\link{GtkImage}} widget}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
