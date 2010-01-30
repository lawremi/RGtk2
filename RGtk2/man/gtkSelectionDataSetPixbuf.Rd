\alias{gtkSelectionDataSetPixbuf}
\name{gtkSelectionDataSetPixbuf}
\title{gtkSelectionDataSetPixbuf}
\description{Sets the contents of the selection from a \verb{\link{GdkPixbuf}}
The pixbuf is converted to the form determined by
\code{selection.data->target}.}
\usage{gtkSelectionDataSetPixbuf(object, pixbuf)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkSelectionData}}]  a \verb{\link{GtkSelectionData}}}
\item{\verb{pixbuf}}{[\verb{\link{GdkPixbuf}}]  a \verb{\link{GdkPixbuf}}}
}
\details{  Since  2.6}
\value{[logical] \code{TRUE} if the selection was successfully set,
  otherwise \code{FALSE}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
