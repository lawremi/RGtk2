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
\item{\code{accel.path}}{[character]   a valid accelerator path}
\item{\code{accel.key}}{[numeric]    the new accelerator key}
\item{\code{accel.mods}}{[\code{\link{GdkModifierType}}]   the new accelerator modifiers}
\item{\code{replace}}{[logical] \code{TRUE} if other accelerators may be deleted upon conflicts}
}
\value{[logical] \code{TRUE} if the accelerator could be changed, \code{FALSE} otherwise}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
