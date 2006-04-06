\alias{atkComponentGetMdiZorder}
\name{atkComponentGetMdiZorder}
\title{atkComponentGetMdiZorder}
\description{Gets the zorder of the component. The value G\_MININT will be returned 
if the layer of the component is not ATK\_LAYER\_MDI or ATK\_LAYER\_WINDOW.}
\usage{atkComponentGetMdiZorder(object)}
\arguments{\item{\code{object}}{[\code{\link{AtkComponent}}]  an \code{\link{AtkComponent}}}}
\value{[integer]  a gint which is the zorder of the component, i.e. the depth at 
which the component is shown in relation to other components in the same 
container.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
