\alias{GMount}
\alias{GMountMountFlags}
\alias{GMountUnmountFlags}
\name{GMount}
\title{GMount}
\description{Mount management}
\section{Methods and Functions}{
\code{\link{gMountGetName}(object)}\cr
\code{\link{gMountGetUuid}(object)}\cr
\code{\link{gMountGetIcon}(object)}\cr
\code{\link{gMountGetDrive}(object)}\cr
\code{\link{gMountGetRoot}(object)}\cr
\code{\link{gMountGetVolume}(object)}\cr
\code{\link{gMountCanUnmount}(object)}\cr
\code{\link{gMountUnmount}(object, flags = "G_MOUNT_UNMOUNT_NONE", cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gMountUnmountFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gMountUnmountWithOperation}(object, flags, mount.operation, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gMountUnmountWithOperationFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gMountRemount}(object, flags, mount.operation, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gMountRemountFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gMountCanEject}(object)}\cr
\code{\link{gMountEject}(object, flags = "G_MOUNT_UNMOUNT_NONE", cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gMountEjectFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gMountEjectWithOperation}(object, flags, mount.operation, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gMountEjectWithOperationFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gMountGuessContentType}(object, force.rescan, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gMountGuessContentTypeFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gMountGuessContentTypeSync}(object, force.rescan, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gMountIsShadowed}(object)}\cr
\code{\link{gMountShadow}(object)}\cr
\code{\link{gMountUnshadow}(object)}\cr
}
\section{Hierarchy}{\preformatted{
GInterface
   +----GMount
GEnum
   +----GMountMountFlags
GFlags
   +----GMountUnmountFlags
}}
\section{Detailed Description}{The \code{\link{GMount}} interface represents user-visible mounts. Note, when 
porting from GnomeVFS, \code{\link{GMount}} is the moral equivalent of \verb{GnomeVFSVolume}.
  \code{\link{GMount}} is a "mounted" filesystem that you can access. Mounted is in
quotes because it's not the same as a unix mount, it might be a gvfs
mount, but you can still access the files on it if you use GIO. Might or
might not be related to a volume object.
  
Unmounting a \code{\link{GMount}} instance is an asynchronous operation. For
more information about asynchronous operations, see \verb{GAsyncReady}
and \verb{GSimpleAsyncReady}. To unmount a \code{\link{GMount}} instance, first call
\code{\link{gMountUnmountWithOperation}} with (at least) the \code{\link{GMount}} instance and a
\code{\link{GAsyncReadyCallback}}.  The callback will be fired when the
operation has resolved (either with success or failure), and a
\verb{GAsyncReady} structure will be passed to the callback.  That
callback should then call \code{\link{gMountUnmountWithOperationFinish}} with the \code{\link{GMount}}
and the \verb{GAsyncReady} data to see if the operation was completed
successfully.  If an \code{error} is present when \code{\link{gMountUnmountWithOperationFinish}} 
is called, then it will be filled with any error information.}
\section{Structures}{\describe{\item{\verb{GMount}}{
A handle to an object implementing the \verb{GMountIface} interface.

}}}
\section{Enums and Flags}{\describe{
\item{\verb{GMountMountFlags}}{
Flags used when mounting a mount.

\describe{\item{\verb{none}}{No flags set.}}

}
\item{\verb{GMountUnmountFlags}}{
Flags used when an unmounting a mount.

\describe{
\item{\verb{none}}{No flags set.}
\item{\verb{force}}{Unmount even if there are outstanding
 file operations on the mount.}
}

}
}}
\section{Signals}{\describe{
\item{\code{changed(mount, user.data)}}{
Emitted when the mount has been changed.

\describe{
\item{\code{mount}}{the object on which the signal is emitted}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{pre-unmount(mount, user.data)}}{
This signal is emitted when the \code{\link{GMount}} is about to be
unmounted.
  Since 2.22

\describe{
\item{\code{mount}}{the object on which the signal is emitted}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{unmounted(mount, user.data)}}{
This signal is emitted when the \code{\link{GMount}} have been
unmounted. If the recipient is holding references to the
object they should release them so the object can be
finalized.

\describe{
\item{\code{mount}}{the object on which the signal is emitted}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\references{\url{https://developer-old.gnome.org/gio/stable/GMount.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
