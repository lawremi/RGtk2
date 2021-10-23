\alias{GVolume}
\name{GVolume}
\title{GVolume}
\description{Volume management}
\section{Methods and Functions}{
\code{\link{gVolumeGetName}(object)}\cr
\code{\link{gVolumeGetUuid}(object)}\cr
\code{\link{gVolumeGetIcon}(object)}\cr
\code{\link{gVolumeGetDrive}(object)}\cr
\code{\link{gVolumeGetMount}(object)}\cr
\code{\link{gVolumeCanMount}(object)}\cr
\code{\link{gVolumeShouldAutomount}(object)}\cr
\code{\link{gVolumeGetActivationRoot}(object)}\cr
\code{\link{gVolumeMount}(object, flags, mount.operation, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gVolumeMountFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gVolumeCanEject}(object)}\cr
\code{\link{gVolumeEject}(object, flags = "G_MOUNT_UNMOUNT_NONE", cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gVolumeEjectFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gVolumeEjectWithOperation}(object, flags, mount.operation, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gVolumeEjectWithOperationFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gVolumeEnumerateIdentifiers}(object)}\cr
\code{\link{gVolumeGetIdentifier}(object, kind)}\cr
}
\section{Hierarchy}{\preformatted{GInterface
   +----GVolume}}
\section{Detailed Description}{The \code{\link{GVolume}} interface represents user-visible objects that can be
mounted. Note, when porting from GnomeVFS, \code{\link{GVolume}} is the moral
equivalent of \verb{GnomeVFSDrive}.
  
Mounting a \code{\link{GVolume}} instance is an asynchronous operation. For more
information about asynchronous operations, see \verb{GAsyncReady} and
\verb{GSimpleAsyncReady}. To mount a \code{\link{GVolume}}, first call
\code{\link{gVolumeMount}} with (at least) the \code{\link{GVolume}} instance, optionally
a \code{\link{GMountOperation}} object and a \code{\link{GAsyncReadyCallback}}. 
  
Typically, one will only want to pass \code{NULL} for the
\code{\link{GMountOperation}} if automounting all volumes when a desktop session
starts since it's not desirable to put up a lot of dialogs asking
for credentials.
  
The callback will be fired when the operation has resolved (either
with success or failure), and a \verb{GAsyncReady} structure will be
passed to the callback.  That callback should then call
\code{\link{gVolumeMountFinish}} with the \code{\link{GVolume}} instance and the
\verb{GAsyncReady} data to see if the operation was completed
successfully.  If an \code{error} is present when \code{\link{gVolumeMountFinish}}
is called, then it will be filled with any error information.
  
It is sometimes necessary to directly access the underlying
operating system object behind a volume (e.g. for passing a volume
to an application via the commandline). For this purpose, GIO
allows to obtain an 'identifier' for the volume. There can be
different kinds of identifiers, such as Hal UDIs, filesystem labels,
traditional Unix devices (e.g. \file{/dev/sda2}),
uuids. GIO uses predefind strings as names for the different kinds
of identifiers: \verb{G_VOLUME_IDENTIFIER_KIND_HAL_UDI},
\verb{G_VOLUME_IDENTIFIER_KIND_LABEL}, etc. Use \code{\link{gVolumeGetIdentifier}}
to obtain an identifier for a volume.
  
Note that \verb{G_VOLUME_IDENTIFIER_KIND_HAL_UDI} will only be available
when the gvfs hal volume monitor is in use. Other volume monitors
will generally be able to provide the \verb{G_VOLUME_IDENTIFIER_KIND_UNIX_DEVICE}
identifier, which can be used to obtain a hal device by means of
\code{libhalMangerFindDeviceStringMatch()}.}
\section{Structures}{\describe{\item{\verb{GVolume}}{
Opaque mountable volume object.

}}}
\section{Signals}{\describe{
\item{\code{changed(user.data)}}{
Emitted when the volume has been changed.

\describe{\item{\code{user.data}}{user data set when the signal handler was connected.}}


}
\item{\code{removed(user.data)}}{
This signal is emitted when the \code{\link{GVolume}} have been removed. If
the recipient is holding references to the object they should
release them so the object can be finalized.

\describe{\item{\code{user.data}}{user data set when the signal handler was connected.}}


}
}}
\references{\url{https://developer-old.gnome.org/gio/stable/GVolume.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
