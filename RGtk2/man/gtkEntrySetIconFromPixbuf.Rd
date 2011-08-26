\alias{gtkEntrySetIconFromPixbuf}
\name{gtkEntrySetIconFromPixbuf}
\title{gtkEntrySetIconFromPixbuf}
\description{Sets the icon shown in the specified position using a pixbuf.}
\usage{gtkEntrySetIconFromPixbuf(object, icon.pos, pixbuf = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkEntry}}}
\item{\verb{icon.pos}}{Icon position}
\item{\verb{pixbuf}}{A \code{\link{GdkPixbuf}}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\details{If \code{pixbuf} is \code{NULL}, no icon will be shown in the specified position.
  Since 2.16}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
