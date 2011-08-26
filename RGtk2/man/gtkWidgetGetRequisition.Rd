\alias{gtkWidgetGetRequisition}
\name{gtkWidgetGetRequisition}
\title{gtkWidgetGetRequisition}
\description{Retrieves the widget's requisition.}
\usage{gtkWidgetGetRequisition(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWidget}}}}
\details{This function should only be used by widget implementations in
order to figure whether the widget's requisition has actually
changed after some internal state change (so that they can call
\code{\link{gtkWidgetQueueResize}} instead of \code{\link{gtkWidgetQueueDraw}}).
  
Normally, \code{\link{gtkWidgetSizeRequest}} should be used.
  Since 2.20}
\value{
A list containing the following elements:
\item{\verb{requisition}}{a pointer to a \code{\link{GtkRequisition}} to copy to. \emph{[  \acronym{out}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
