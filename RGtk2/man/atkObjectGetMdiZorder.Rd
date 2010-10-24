\alias{atkObjectGetMdiZorder}
\name{atkObjectGetMdiZorder}
\title{atkObjectGetMdiZorder}
\description{
Gets the zorder of the accessible. The value G_MININT will be returned 
if the layer of the accessible is not ATK_LAYER_MDI.
\strong{WARNING: \code{atk_object_get_mdi_zorder} is deprecated and should not be used in newly-written code. Use atk_component_get_mdi_zorder instead.}
}
\usage{atkObjectGetMdiZorder(object)}
\arguments{\item{\verb{object}}{[\code{\link{AtkObject}}]  an \code{\link{AtkObject}}}}
\value{[integer]  a gint which is the zorder of the accessible, i.e. the depth at 
which the component is shown in relation to other components in the same 
container.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
