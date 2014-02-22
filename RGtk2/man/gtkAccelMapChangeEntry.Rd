\alias{gtkAccelMapChangeEntry}
\name{gtkAccelMapChangeEntry}
\title{gtkAccelMapChangeEntry}
\description{Changes the \code{accel.key} and \code{accel.mods} currently associated with \code{accel.path}.
Due to conflicts with other accelerators, a change may not always be possible,
\code{replace} indicates whether other accelerators may be deleted to resolve such
conflicts. A change will only occur if all conflicts could be resolved (which
might not be the case if conflicting accelerators are locked). Successful
changes are indicated by a \code{TRUE} return value.}
\usage{gtkAccelMapChangeEntry(accel.path, accel.key, accel.mods, replace)}
\arguments{
\item{\verb{accel.path}}{a valid accelerator path}
\item{\verb{accel.key}}{the new accelerator key}
\item{\verb{accel.mods}}{the new accelerator modifiers}
\item{\verb{replace}}{\code{TRUE} if other accelerators may be deleted upon conflicts}
}
\details{Note that \code{accel.path} string will be stored in a \code{\link{GQuark}}. Therefore, if you
pass a static string, you can save some memory by interning it first with 
\code{gInternStaticString()}.}
\value{[logical] \code{TRUE} if the accelerator could be changed, \code{FALSE} otherwise}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
