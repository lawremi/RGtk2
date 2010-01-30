\alias{gtkSelectionDataTargetsIncludeImage}
\name{gtkSelectionDataTargetsIncludeImage}
\title{gtkSelectionDataTargetsIncludeImage}
\description{Given a \verb{\link{GtkSelectionData}} object holding a list of targets,
determines if any of the targets in \code{targets} can be used to
provide a \verb{\link{GdkPixbuf}}.}
\usage{gtkSelectionDataTargetsIncludeImage(object, writable)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkSelectionData}}]  a \verb{\link{GtkSelectionData}} object}
\item{\verb{writable}}{[logical]  whether to accept only targets for which GTK+ knows
  how to convert a pixbuf into the format}
}
\details{  Since  2.6}
\value{[logical] \code{TRUE} if \code{selection.data} holds a list of targets,
  and a suitable target for images is included, otherwise \code{FALSE}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
