\alias{atkObjectGetMdiZorder}
\name{atkObjectGetMdiZorder}
\title{atkObjectGetMdiZorder}
\description{
Gets the zorder of the accessible. The value G\_MININT will be returned 
if the layer of the accessible is not ATK\_LAYER\_MDI.
\strong{WARNING: \code{atk_object_get_mdi_zorder} is deprecated and should not be used in newly-written code. Use atk\_component\_get\_mdi\_zorder instead.}
}
\usage{atkObjectGetMdiZorder(object)}
\arguments{\item{\code{object}}{[\code{\link{AtkObject}}]  an \code{\link{AtkObject}}}}
\details{Returns:  }
\value{[integer]  a gint which is the zorder of the accessible, i.e. the depth at 
which the component is shown in relation to other components in the same 
container.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
