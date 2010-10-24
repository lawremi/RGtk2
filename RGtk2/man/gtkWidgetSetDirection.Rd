\alias{gtkWidgetSetDirection}
\name{gtkWidgetSetDirection}
\title{gtkWidgetSetDirection}
\description{Sets the reading direction on a particular widget. This direction
controls the primary direction for widgets containing text,
and also the direction in which the children of a container are
packed. The ability to set the direction is present in order
so that correct localization into languages with right-to-left
reading directions can be done. Generally, applications will
let the default reading direction present, except for containers
where the containers are arranged in an order that is explicitely
visual rather than logical (such as buttons for text justification).}
\usage{gtkWidgetSetDirection(object, dir)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{dir}}{the new direction}
}
\details{If the direction is set to \code{GTK_TEXT_DIR_NONE}, then the value
set by \code{\link{gtkWidgetSetDefaultDirection}} will be used.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
