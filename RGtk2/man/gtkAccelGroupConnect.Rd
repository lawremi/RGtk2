\alias{gtkAccelGroupConnect}
\name{gtkAccelGroupConnect}
\title{gtkAccelGroupConnect}
\description{Installs an accelerator in this group. When \code{accel.group} is being activated
in response to a call to \code{\link{gtkAccelGroupsActivate}}, \code{closure} will be
invoked if the \code{accel.key} and \code{accel.mods} from \code{\link{gtkAccelGroupsActivate}}
match those of this connection.}
\usage{gtkAccelGroupConnect(object, accel.key, accel.mods, accel.flags, closure)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkAccelGroup}}]       the accelerator group to install an accelerator in}
\item{\verb{accel.key}}{[numeric]         key value of the accelerator}
\item{\verb{accel.mods}}{[\code{\link{GdkModifierType}}]        modifier combination of the accelerator}
\item{\verb{accel.flags}}{[\code{\link{GtkAccelFlags}}]       a flag mask to configure this accelerator}
\item{\verb{closure}}{[\verb{\link{GClosure}}]           closure to be executed upon accelerator activation}
}
\details{The signature used for the \code{closure} is that of \verb{\link{GtkAccelGroupActivate}}.
  
Note that, due to implementation details, a single closure can only be
connected to one accelerator group.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
