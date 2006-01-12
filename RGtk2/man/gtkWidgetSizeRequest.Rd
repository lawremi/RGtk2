\alias{gtkWidgetSizeRequest}
\name{gtkWidgetSizeRequest}
\title{gtkWidgetSizeRequest}
\description{This function is typically used when implementing a \code{\link{GtkContainer}}
subclass.  Obtains the preferred size of a widget. The container
uses this information to arrange its child widgets and decide what
size allocations to give them with \code{\link{gtkWidgetSizeAllocate}}.}
\usage{gtkWidgetSizeRequest(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkWidget}}]  a \code{\link{GtkWidget}}}}
\details{You can also call this function from an application, with some
caveats. Most notably, getting a size request requires the widget
to be associated with a screen, because font information may be
needed. Multihead-aware applications should keep this in mind.
  
Also remember that the size request is not necessarily the size
a widget will actually be allocated.
  
See also \code{\link{gtkWidgetGetChildRequisition}}.  }
\value{
A list containing the following elements:
\item{\code{requisition}}{[\code{\link{GtkRequisition}}]  a \code{\link{GtkRequisition}} to be filled in}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
