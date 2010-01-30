\alias{gtkImageNewFromPixmap}
\name{gtkImageNewFromPixmap}
\title{gtkImageNewFromPixmap}
\description{Creates a \verb{\link{GtkImage}} widget displaying \code{pixmap} with a \code{mask}.
A \verb{\link{GdkPixmap}} is a server-side image buffer in the pixel format of the
current display. The \verb{\link{GtkImage}} does not assume a reference to the
pixmap or mask; you still need to unref them if you own references.
\verb{\link{GtkImage}} will add its own reference rather than adopting yours.}
\usage{gtkImageNewFromPixmap(pixmap = NULL, mask = NULL, show = TRUE)}
\arguments{
\item{\verb{pixmap}}{[\verb{\link{GdkPixmap}}]  a \verb{\link{GdkPixmap}}, or \code{NULL}}
\item{\verb{mask}}{[\verb{\link{GdkBitmap}}]  a \verb{\link{GdkBitmap}}, or \code{NULL}}
}
\value{[\verb{\link{GtkWidget}}]  a new \verb{\link{GtkImage}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
