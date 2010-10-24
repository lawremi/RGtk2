\alias{gtkWindowAddAccelGroup}
\name{gtkWindowAddAccelGroup}
\title{gtkWindowAddAccelGroup}
\description{Associate \code{accel.group} with \code{window}, such that calling
\code{\link{gtkAccelGroupsActivate}} on \code{window} will activate accelerators
in \code{accel.group}.}
\usage{gtkWindowAddAccelGroup(object, accel.group)}
\arguments{
\item{\verb{object}}{window to attach accelerator group to}
\item{\verb{accel.group}}{a \code{\link{GtkAccelGroup}}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
