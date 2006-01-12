\alias{atkObjectGetMdiZorder}
\name{atkObjectGetMdiZorder}
\title{atkObjectGetMdiZorder}
\description{Gets the zorder of the accessible. The value G_MININT will be returned 
if the layer of the accessible is not ATK_LAYER_MDI.}
\usage{atkObjectGetMdiZorder(object)}
\arguments{\item{\code{object}}{[\code{\link{AtkObject}}]  an \code{\link{AtkObject}}}}
\value{[integer]  a gint which is the zorder of the accessible, i.e. the depth at 
which the component is shown in relation to other components in the same 
container.

\code{Deprecated}: Use atk_component_get_mdi_zorder instead.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
