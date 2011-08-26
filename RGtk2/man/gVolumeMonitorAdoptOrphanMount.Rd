\alias{gVolumeMonitorAdoptOrphanMount}
\name{gVolumeMonitorAdoptOrphanMount}
\title{gVolumeMonitorAdoptOrphanMount}
\description{
This function should be called by any \code{\link{GVolumeMonitor}}
implementation when a new \code{\link{GMount}} object is created that is not
associated with a \code{\link{GVolume}} object. It must be called just before
emitting the \code{mount.added} signal.
\strong{WARNING: \code{g_volume_monitor_adopt_orphan_mount} has been deprecated since version 2.20 and should not be used in newly-written code. Instead of using this function, \code{\link{GVolumeMonitor}}
implementations should instead create shadow mounts with the URI of
the mount they intend to adopt. See the proxy volume monitor in
gvfs for an example of this. Also see \code{\link{gMountIsShadowed}},
\code{\link{gMountShadow}} and \code{\link{gMountUnshadow}} functions.}
}
\usage{gVolumeMonitorAdoptOrphanMount(mount)}
\arguments{\item{\verb{mount}}{a \code{\link{GMount}} object to find a parent for}}
\details{If the return value is not \code{NULL}, the caller must associate the
returned \code{\link{GVolume}} object with the \code{\link{GMount}}. This involves returning
it in its \code{\link{gMountGetVolume}} implementation. The caller must
also listen for the "removed" signal on the returned object
and give up its reference when handling that signal
  
Similary, if implementing \code{\link{gVolumeMonitorAdoptOrphanMount}},
the implementor must take a reference to \code{mount} and return it in
its \code{\link{gVolumeGetMount}} implemented. Also, the implementor must
listen for the "unmounted" signal on \code{mount} and give up its
reference upon handling that signal.
  
There are two main use cases for this function.
  
One is when implementing a user space file system driver that reads
blocks of a block device that is already represented by the native
volume monitor (for example a CD Audio file system driver). Such
a driver will generate its own \code{\link{GMount}} object that needs to be
assoicated with the \code{\link{GVolume}} object that represents the volume.
  
The other is for implementing a \code{\link{GVolumeMonitor}} whose sole purpose
is to return \code{\link{GVolume}} objects representing entries in the users
"favorite servers" list or similar.}
\value{[\code{\link{GVolume}}] the \code{\link{GVolume}} object that is the parent for \code{mount} or \code{NULL}
if no wants to adopt the \code{\link{GMount}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
