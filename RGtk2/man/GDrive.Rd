\alias{GDrive}
\alias{GDriveStartFlags}
\alias{GDriveStartStopType}
\name{GDrive}
\title{GDrive}
\description{Drive management}
\section{Methods and Functions}{
\code{\link{gDriveGetName}(object)}\cr
\code{\link{gDriveGetIcon}(object)}\cr
\code{\link{gDriveHasVolumes}(object)}\cr
\code{\link{gDriveGetVolumes}(object)}\cr
\code{\link{gDriveCanEject}(object)}\cr
\code{\link{gDriveGetStartStopType}(object)}\cr
\code{\link{gDriveCanStart}(object)}\cr
\code{\link{gDriveCanStartDegraded}(object)}\cr
\code{\link{gDriveCanStop}(object)}\cr
\code{\link{gDriveCanPollForMedia}(object)}\cr
\code{\link{gDrivePollForMedia}(object, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gDrivePollForMediaFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gDriveHasMedia}(object)}\cr
\code{\link{gDriveIsMediaCheckAutomatic}(object)}\cr
\code{\link{gDriveIsMediaRemovable}(object)}\cr
\code{\link{gDriveEject}(object, flags = "G_MOUNT_UNMOUNT_NONE", cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gDriveEjectFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gDriveEjectWithOperation}(object, flags, mount.operation, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gDriveEjectWithOperationFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gDriveStart}(object, flags, mount.operation, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gDriveStartFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gDriveStop}(object, flags, mount.operation, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gDriveStopFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gDriveEnumerateIdentifiers}(object)}\cr
\code{\link{gDriveGetIdentifier}(object, kind)}\cr
}
\section{Hierarchy}{\preformatted{GInterface
   +----GDrive}}
\section{Detailed Description}{\code{\link{GDrive}} - this represent a piece of hardware connected to the machine.
It's generally only created for removable hardware or hardware with
removable media.
  \code{\link{GDrive}} is a container class for \code{\link{GVolume}} objects that stem from
the same piece of media. As such, \code{\link{GDrive}} abstracts a drive with
(or without) removable media and provides operations for querying
whether media is available, determing whether media change is
automatically detected and ejecting the media.
  
If the \code{\link{GDrive}} reports that media isn't automatically detected, one
can poll for media; typically one should not do this periodically
as a poll for media operation is potententially expensive and may
spin up the drive creating noise.
  \code{\link{GDrive}} supports starting and stopping drives with authentication
support for the former. This can be used to support a diverse set
of use cases including connecting/disconnecting iSCSI devices,
powering down external disk enclosures and starting/stopping
multi-disk devices such as RAID devices. Note that the actual
semantics and side-effects of starting/stopping a \code{\link{GDrive}} may vary
according to implementation. To choose the correct verbs in e.g. a
file manager, use \code{\link{gDriveGetStartStopType}}.
  
For porting from GnomeVFS note that there is no equivalent of
\code{\link{GDrive}} in that API.}
\section{Structures}{\describe{\item{\verb{GDrive}}{
Opaque drive object.

}}}
\section{Enums and Flags}{\describe{
\item{\verb{GDriveStartFlags}}{
Flags used when starting a drive.
  Since 2.22

\describe{\item{\verb{none}}{No flags set.}}

}
\item{\verb{GDriveStartStopType}}{
Enumeration describing how a drive can be started/stopped.
  Since 2.22

\describe{
\item{\verb{unknown}}{Unknown or drive doesn't support
   start/stop.}
\item{\verb{shutdown}}{The stop method will physically
   shut down the drive and e.g. power down the port the drive is
   attached to.}
\item{\verb{network}}{The start/stop methods are used
   for connecting/disconnect to the drive over the network.}
\item{\verb{multidisk}}{The start/stop methods will
   assemble/disassemble a virtual drive from several physical
   drives.}
\item{\verb{password}}{The start/stop methods will
   unlock/lock the disk (for example using the ATA \dQuote{SECURITY
   UNLOCK DEVICE} command)}
}

}
}}
\section{Signals}{\describe{
\item{\code{changed(drive, user.data)}}{
Emitted when the drive's state has changed.

\describe{
\item{\code{drive}}{a \code{\link{GDrive}}.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{disconnected(drive, user.data)}}{
This signal is emitted when the \code{\link{GDrive}} have been
disconnected. If the recipient is holding references to the
object they should release them so the object can be
finalized.

\describe{
\item{\code{drive}}{a \code{\link{GDrive}}.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{eject-button(drive, user.data)}}{
Emitted when the physical eject button (if any) of a drive has
been pressed.

\describe{
\item{\code{drive}}{a \code{\link{GDrive}}.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{stop-button(drive, user.data)}}{
Emitted when the physical stop button (if any) of a drive has
been pressed.
  Since 2.22

\describe{
\item{\code{drive}}{a \code{\link{GDrive}}.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\references{\url{https://developer-old.gnome.org/gio/stable/GDrive.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
