\alias{gtkWindowSetGravity}
\name{gtkWindowSetGravity}
\title{gtkWindowSetGravity}
\description{Window gravity defines the meaning of coordinates passed to
\code{\link{gtkWindowMove}}. See \code{\link{gtkWindowMove}} and \code{\link{GdkGravity}} for
more details.}
\usage{gtkWindowSetGravity(object, gravity)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWindow}}}
\item{\verb{gravity}}{window gravity}
}
\details{The default window gravity is \verb{GDK_GRAVITY_NORTH_WEST} which will
typically "do what you mean."}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
