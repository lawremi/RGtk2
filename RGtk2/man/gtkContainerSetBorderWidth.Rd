\alias{gtkContainerSetBorderWidth}
\name{gtkContainerSetBorderWidth}
\title{gtkContainerSetBorderWidth}
\description{Sets the border width of the container.}
\usage{gtkContainerSetBorderWidth(object, border.width)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkContainer}}}
\item{\verb{border.width}}{amount of blank space to leave \emph{outside}
the container. Valid values are in the range 0-65535 pixels.}
}
\details{The border width of a container is the amount of space to leave
around the outside of the container. The only exception to this is
\code{\link{GtkWindow}}; because toplevel windows can't leave space outside,
they leave the space inside. The border is added on all sides of
the container. To add space to only one side, one approach is to
create a \code{\link{GtkAlignment}} widget, call \code{\link{gtkWidgetSetSizeRequest}}
to give it a size, and place it on the side of the container as
a spacer.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
