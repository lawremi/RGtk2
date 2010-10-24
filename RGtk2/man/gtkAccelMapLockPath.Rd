\alias{gtkAccelMapLockPath}
\name{gtkAccelMapLockPath}
\title{gtkAccelMapLockPath}
\description{Locks the given accelerator path. If the accelerator map doesn't yet contain
an entry for \code{accel.path}, a new one is created.}
\usage{gtkAccelMapLockPath(accel.path)}
\arguments{\item{\verb{accel.path}}{a valid accelerator path}}
\details{Locking an accelerator path prevents its accelerator from being changed 
during runtime. A locked accelerator path can be unlocked by 
\code{\link{gtkAccelMapUnlockPath}}. Refer to \code{\link{gtkAccelMapChangeEntry}} 
for information about runtime accelerator changes.
  
If called more than once, \code{accel.path} remains locked until
\code{\link{gtkAccelMapUnlockPath}} has been called an equivalent number
of times.
  
Note that locking of individual accelerator paths is independent from 
locking the \code{\link{GtkAccelGroup}} containing them. For runtime accelerator
changes to be possible both the accelerator path and its \code{\link{GtkAccelGroup}}
have to be unlocked.
  Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
