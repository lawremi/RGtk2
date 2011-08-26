\alias{gtkBoxPackStart}
\name{gtkBoxPackStart}
\title{gtkBoxPackStart}
\description{Adds \code{child} to \code{box}, packed with reference to the start of \code{box}.
The \code{child} is packed after any other child packed with reference 
to the start of \code{box}.}
\usage{gtkBoxPackStart(object, child, expand = TRUE, fill = TRUE, padding = 0)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkBox}}}
\item{\verb{child}}{the \code{\link{GtkWidget}} to be added to \code{box}}
\item{\verb{expand}}{\code{TRUE} if the new child is to be given extra space allocated to
\code{box}.  The extra space will be divided evenly between all children of
\code{box} that use this option}
\item{\verb{fill}}{\code{TRUE} if space given to \code{child} by the \code{expand} option is
actually allocated to \code{child}, rather than just padding it.  This
parameter has no effect if \code{expand} is set to \code{FALSE}.  A child is
always allocated the full height of a \code{\link{GtkHBox}} and the full width
of a \code{\link{GtkVBox}}. This option affects the other dimension}
\item{\verb{padding}}{extra space in pixels to put between this child and its
neighbors, over and above the global amount specified by
\verb{"spacing"} property.  If \code{child} is a widget at one of the
reference ends of \code{box}, then \code{padding} pixels are also put between
\code{child} and the reference edge of \code{box}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
