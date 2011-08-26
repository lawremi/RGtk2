\alias{gtkImageNewFromPixmap}
\name{gtkImageNewFromPixmap}
\title{gtkImageNewFromPixmap}
\description{Creates a \code{\link{GtkImage}} widget displaying \code{pixmap} with a \code{mask}.
A \code{\link{GdkPixmap}} is a server-side image buffer in the pixel format of the
current display. The \code{\link{GtkImage}} does not assume a reference to the
pixmap or mask; you still need to unref them if you own references.
\code{\link{GtkImage}} will add its own reference rather than adopting yours.}
\usage{gtkImageNewFromPixmap(pixmap = NULL, mask = NULL, show = TRUE)}
\arguments{
\item{\verb{pixmap}}{a \code{\link{GdkPixmap}}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{mask}}{a \code{\link{GdkBitmap}}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\value{[\code{\link{GtkWidget}}] a new \code{\link{GtkImage}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
