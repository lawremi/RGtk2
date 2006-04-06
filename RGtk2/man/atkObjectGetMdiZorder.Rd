\alias{atkObjectGetMdiZorder}
\name{atkObjectGetMdiZorder}
\title{atkObjectGetMdiZorder}
\description{Gets the zorder of the accessible. The value G\_MININT will be returned 
if the layer of the accessible is not ATK\_LAYER\_MDI.}
\usage{atkObjectGetMdiZorder(object)}
\arguments{\item{\code{object}}{[\code{\link{AtkObject}}]  an \code{\link{AtkObject}}}}
\value{[integer]  a gint which is the zorder of the accessible, i.e. the depth at 
which the component is shown in relation to other components in the same 
container.

\code{Deprecated}: Use atk\_component\_get\_mdi\_zorder instead.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
