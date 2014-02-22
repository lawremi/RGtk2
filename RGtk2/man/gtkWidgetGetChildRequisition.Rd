\alias{gtkWidgetGetChildRequisition}
\name{gtkWidgetGetChildRequisition}
\title{gtkWidgetGetChildRequisition}
\description{This function is only for use in widget implementations. Obtains
\code{widget->requisition}, unless someone has forced a particular
geometry on the widget (e.g. with \code{\link{gtkWidgetSetSizeRequest}}),
in which case it returns that geometry instead of the widget's
requisition.}
\usage{gtkWidgetGetChildRequisition(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWidget}}}}
\details{This function differs from \code{\link{gtkWidgetSizeRequest}} in that
it retrieves the last size request value from \code{widget->requisition},
while \code{\link{gtkWidgetSizeRequest}} actually calls the "size_request" method
on \code{widget} to compute the size request and fill in \code{widget->requisition},
and only then returns \code{widget->requisition}.
  
Because this function does not call the "size_request" method, it
can only be used when you know that \code{widget->requisition} is
up-to-date, that is, \code{\link{gtkWidgetSizeRequest}} has been called
since the last time a resize was queued. In general, only container
implementations have this information; applications should use
\code{\link{gtkWidgetSizeRequest}}.}
\value{
A list containing the following elements:
\item{\verb{requisition}}{a \code{\link{GtkRequisition}} to be filled in. \emph{[  \acronym{out}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
