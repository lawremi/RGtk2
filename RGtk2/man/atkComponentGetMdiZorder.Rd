\alias{atkComponentGetMdiZorder}
\name{atkComponentGetMdiZorder}
\title{atkComponentGetMdiZorder}
\description{Gets the zorder of the component. The value G_MININT will be returned 
if the layer of the component is not ATK_LAYER_MDI or ATK_LAYER_WINDOW.}
\usage{atkComponentGetMdiZorder(object)}
\arguments{\item{\verb{object}}{[\code{\link{AtkComponent}}]  an \code{\link{AtkComponent}}}}
\value{[integer]  a gint which is the zorder of the component, i.e. the depth at 
which the component is shown in relation to other components in the same 
container.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
