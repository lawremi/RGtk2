\alias{gdkWindowSetDecorations}
\name{gdkWindowSetDecorations}
\title{gdkWindowSetDecorations}
\description{"Decorations" are the features the window manager adds to a toplevel \verb{\link{GdkWindow}}.
This function sets the traditional Motif window manager hints that tell the
window manager which decorations you would like your window to have.
Usually you should use \code{\link{gtkWindowSetDecorated}} on a \verb{\link{GtkWindow}} instead of
using the GDK function directly.}
\usage{gdkWindowSetDecorations(object, decorations)}
\arguments{
\item{\verb{object}}{[\verb{\link{GdkWindow}}]  a toplevel \verb{\link{GdkWindow}}}
\item{\verb{decorations}}{[\code{\link{GdkWMDecoration}}]  decoration hint mask}
}
\details{The \code{decorations} argument is the logical OR of the fields in
the \code{\link{GdkWMDecoration}} enumeration. If \verb{GDK_DECOR_ALL} is included in the
mask, the other bits indicate which decorations should be turned off.
If \verb{GDK_DECOR_ALL} is not included, then the other bits indicate
which decorations should be turned on.
  
Most window managers honor a decorations hint of 0 to disable all decorations,
but very few honor all possible combinations of bits.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
