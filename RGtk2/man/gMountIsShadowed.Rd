\alias{gMountIsShadowed}
\name{gMountIsShadowed}
\title{gMountIsShadowed}
\description{Determines if \code{mount} is shadowed. Applications or libraries should
avoid displaying \code{mount} in the user interface if it is shadowed.}
\usage{gMountIsShadowed(object)}
\arguments{\item{\verb{object}}{A \code{\link{GMount}}.}}
\details{A mount is said to be shadowed if there exists one or more user
visible objects (currently \code{\link{GMount}} objects) with a root that is
inside the root of \code{mount}.
  
One application of shadow mounts is when exposing a single file
system that is used to address several logical volumes. In this
situation, a \code{\link{GVolumeMonitor}} implementation would create two
\code{\link{GVolume}} objects (for example, one for the camera functionality of
the device and one for a SD card reader on the device) with
activation URIs \code{gphoto2://[usb:001,002]/store1/}
and \code{gphoto2://[usb:001,002]/store2/}. When the
underlying mount (with root
\code{gphoto2://[usb:001,002]/}) is mounted, said
\code{\link{GVolumeMonitor}} implementation would create two \code{\link{GMount}} objects
(each with their root matching the corresponding volume activation
root) that would shadow the original mount.
  
The proxy monitor in GVfs 2.26 and later, automatically creates and
manage shadow mounts (and shadows the underlying mount) if the
activation root on a \code{\link{GVolume}} is set.
  Since 2.20}
\value{[logical] \code{TRUE} if \code{mount} is shadowed.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
