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
\item{\verb{object}}{the accelerator group to install an accelerator in}
\item{\verb{accel.path}}{path used for determining key and modifiers.}
\item{\verb{closure}}{closure to be executed upon accelerator activation}
}
\details{The signature used for the \code{closure} is that of \code{\link{GtkAccelGroupActivate}}.
  
Note that \code{accel.path} string will be stored in a \code{\link{GQuark}}. Therefore, if you
pass a static string, you can save some memory by interning it first with 
\code{gInternStaticString()}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
