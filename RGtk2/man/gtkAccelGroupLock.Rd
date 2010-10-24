\alias{gtkAccelGroupLock}
\name{gtkAccelGroupLock}
\title{gtkAccelGroupLock}
\description{Locks the given accelerator group.}
\usage{gtkAccelGroupLock(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkAccelGroup}}}}
\details{Locking an acelerator group prevents the accelerators contained
within it to be changed during runtime. Refer to
\code{\link{gtkAccelMapChangeEntry}} about runtime accelerator changes.
  
If called more than once, \code{accel.group} remains locked until
\code{\link{gtkAccelGroupUnlock}} has been called an equivalent number
of times.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
