\alias{gtkSelectionDataSetPixbuf}
\name{gtkSelectionDataSetPixbuf}
\title{gtkSelectionDataSetPixbuf}
\description{Sets the contents of the selection from a \code{\link{GdkPixbuf}}
The pixbuf is converted to the form determined by
\code{selection.data->target}.}
\usage{gtkSelectionDataSetPixbuf(object, pixbuf)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkSelectionData}}}
\item{\verb{pixbuf}}{a \code{\link{GdkPixbuf}}}
}
\details{Since 2.6}
\value{[logical] \code{TRUE} if the selection was successfully set,
otherwise \code{FALSE}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
