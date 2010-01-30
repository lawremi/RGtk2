\alias{gtkImageNewFromPixbuf}
\name{gtkImageNewFromPixbuf}
\title{gtkImageNewFromPixbuf}
\description{Creates a new \verb{\link{GtkImage}} displaying \code{pixbuf}.
The \verb{\link{GtkImage}} does not assume a reference to the
pixbuf; you still need to unref it if you own references.
\verb{\link{GtkImage}} will add its own reference rather than adopting yours.}
\usage{gtkImageNewFromPixbuf(pixbuf = NULL, show = TRUE)}
\arguments{\item{\verb{pixbuf}}{[\verb{\link{GdkPixbuf}}]  a \verb{\link{GdkPixbuf}}, or \code{NULL}}}
\details{Note that this function just creates an \verb{\link{GtkImage}} from the pixbuf. The
\verb{\link{GtkImage}} created will not react to state changes. Should you want that, 
you should use \code{\link{gtkImageNewFromIconSet}}.  }
\value{[\verb{\link{GtkWidget}}]  a new \verb{\link{GtkImage}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
