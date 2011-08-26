\alias{gtkImageNewFromPixbuf}
\name{gtkImageNewFromPixbuf}
\title{gtkImageNewFromPixbuf}
\description{Creates a new \code{\link{GtkImage}} displaying \code{pixbuf}.
The \code{\link{GtkImage}} does not assume a reference to the
pixbuf; you still need to unref it if you own references.
\code{\link{GtkImage}} will add its own reference rather than adopting yours.}
\usage{gtkImageNewFromPixbuf(pixbuf = NULL, show = TRUE)}
\arguments{\item{\verb{pixbuf}}{a \code{\link{GdkPixbuf}}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}}
\details{Note that this function just creates an \code{\link{GtkImage}} from the pixbuf. The
\code{\link{GtkImage}} created will not react to state changes. Should you want that, 
you should use \code{\link{gtkImageNewFromIconSet}}.}
\value{[\code{\link{GtkWidget}}] a new \code{\link{GtkImage}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
