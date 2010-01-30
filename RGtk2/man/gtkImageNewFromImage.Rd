\alias{gtkImageNewFromImage}
\name{gtkImageNewFromImage}
\title{gtkImageNewFromImage}
\description{Creates a \verb{\link{GtkImage}} widget displaying a \code{image} with a \code{mask}.
A \verb{\link{GdkImage}} is a client-side image buffer in the pixel format of the
current display. The \verb{\link{GtkImage}} does not assume a reference to the
image or mask; you still need to unref them if you own references.
\verb{\link{GtkImage}} will add its own reference rather than adopting yours.}
\usage{gtkImageNewFromImage(image = NULL, mask = NULL, show = TRUE)}
\arguments{
\item{\verb{image}}{[\verb{\link{GdkImage}}]  a \verb{\link{GdkImage}}, or \code{NULL}}
\item{\verb{mask}}{[\verb{\link{GdkBitmap}}]  a \verb{\link{GdkBitmap}}, or \code{NULL} }
}
\value{[\verb{\link{GtkWidget}}]  a new \verb{\link{GtkImage}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
