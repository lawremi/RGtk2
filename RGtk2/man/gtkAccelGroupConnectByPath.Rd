\alias{gtkAccelGroupConnectByPath}
\name{gtkAccelGroupConnectByPath}
\title{gtkAccelGroupConnectByPath}
\description{Installs an accelerator in this group, using an accelerator path to look
up the appropriate key and modifiers (see \code{\link{gtkAccelMapAddEntry}}).
When \code{accel.group} is being activated in response to a call to
\code{\link{gtkAccelGroupsActivate}}, \code{closure} will be invoked if the \code{accel.key} and
\code{accel.mods} from \code{\link{gtkAccelGroupsActivate}} match the key and modifiers
for the path.}
\usage{gtkAccelGroupConnectByPath(object, accel.path, closure)}
\arguments{
\item{\code{object}}{[\code{\link{GtkAccelGroup}}]       the accelerator group to install an accelerator in}
\item{\code{accel.path}}{[character]        path used for determining key and modifiers.}
\item{\code{closure}}{[\code{\link{GClosure}}]           closure to be executed upon accelerator activation}
}
\details{The signature used for the \code{closure} is that of \code{\link{GtkAccelGroupActivate}}.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
