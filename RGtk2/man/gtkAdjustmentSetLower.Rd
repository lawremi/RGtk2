\alias{gtkAdjustmentSetLower}
\name{gtkAdjustmentSetLower}
\title{gtkAdjustmentSetLower}
\description{Sets the minimum value of the adjustment.}
\usage{gtkAdjustmentSetLower(object, lower)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkAdjustment}}}
\item{\verb{lower}}{the new minimum value}
}
\details{When setting multiple adjustment properties via their individual
setters, multiple "changed" signals will be emitted. However, since
the emission of the "changed" signal is tied to the emission of the
"GObject::notify" signals of the changed properties, it's possible
to compress the "changed" signals into one by calling
\code{gObjectFreezeNotify()} and \code{gObjectThawNotify()} around the
calls to the individual setters.
  
Alternatively, using a single \code{\link{gObjectSet}} for all the properties
to change, or using \code{\link{gtkAdjustmentConfigure}} has the same effect
of compressing "changed" emissions.
  Since 2.14}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
