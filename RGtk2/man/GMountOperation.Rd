\alias{GMountOperation}
\alias{gMountOperation}
\alias{GAskPasswordFlags}
\alias{GPasswordSave}
\alias{GMountOperationResult}
\name{GMountOperation}
\title{GMountOperation}
\description{Object used for authentication and user interaction}
\section{Methods and Functions}{
\code{\link{gMountOperationNew}()}\cr
\code{\link{gMountOperationGetUsername}(object)}\cr
\code{\link{gMountOperationSetUsername}(object, username)}\cr
\code{\link{gMountOperationGetPassword}(object)}\cr
\code{\link{gMountOperationSetPassword}(object, password)}\cr
\code{\link{gMountOperationGetAnonymous}(object)}\cr
\code{\link{gMountOperationSetAnonymous}(object, anonymous)}\cr
\code{\link{gMountOperationGetDomain}(object)}\cr
\code{\link{gMountOperationSetDomain}(object, domain)}\cr
\code{\link{gMountOperationGetPasswordSave}(object)}\cr
\code{\link{gMountOperationSetPasswordSave}(object, save)}\cr
\code{\link{gMountOperationGetChoice}(object)}\cr
\code{\link{gMountOperationSetChoice}(object, choice)}\cr
\code{\link{gMountOperationReply}(object, result)}\cr
\code{gMountOperation()}
}
\section{Hierarchy}{\preformatted{
GFlags
   +----GAskPasswordFlags
GEnum
   +----GPasswordSave
GObject
   +----GMountOperation
GEnum
   +----GMountOperationResult
}}
\section{Detailed Description}{\code{\link{GMountOperation}} provides a mechanism for interacting with the user.
It can be used for authenticating mountable operations, such as loop
mounting files, hard drive partitions or server locations. It can
also be used to ask the user questions or show a list of applications
preventing unmount or eject operations from completing.
  
Note that \code{\link{GMountOperation}} is used for more than just \code{\link{GMount}}
objects – for example it is also used in \code{\link{gDriveStart}} and
\code{\link{gDriveStop}}.
  
Users should instantiate a subclass of this that implements all the
various callbacks to show the required dialogs, such as
\code{\link{GtkMountOperation}}. If no user interaction is desired (for example
when automounting filesystems at login time), usually \code{NULL} can be
passed, see each method taking a \code{\link{GMountOperation}} for details.}
\section{Structures}{\describe{\item{\verb{GMountOperation}}{
Class for providing authentication methods for mounting operations,
such as mounting a file locally, or authenticating with a server.

}}}
\section{Convenient Construction}{\code{gMountOperation} is the equivalent of \code{\link{gMountOperationNew}}.}
\section{Enums and Flags}{\describe{
\item{\verb{GAskPasswordFlags}}{
\code{\link{GAskPasswordFlags}} are used to request specific information from the
user, or to notify the user of their choices in an authentication
situation.

\describe{
\item{\verb{need-password}}{operation requires a password.}
\item{\verb{need-username}}{operation requires a username.}
\item{\verb{need-domain}}{operation requires a domain.}
\item{\verb{saving-supported}}{operation supports saving settings.}
\item{\verb{anonymous-supported}}{operation supports anonymous users.}
}

}
\item{\verb{GPasswordSave}}{
\code{\link{GPasswordSave}} is used to indicate the lifespan of a saved password.
  \verb{Gvfs} stores passwords in the Gnome keyring when this flag allows it
to, and later retrieves it again from there.

\describe{
\item{\verb{never}}{never save a password.}
\item{\verb{for-session}}{save a password for the session.}
\item{\verb{permanently}}{save a password permanently.}
}

}
\item{\verb{GMountOperationResult}}{
\code{\link{GMountOperationResult}} is returned as a result when a request for
information is send by the mounting operation.

\describe{
\item{\verb{handled}}{The request was fulfilled and the
    user specified data is now available}
\item{\verb{aborted}}{The user requested the mount operation
    to be aborted}
\item{\verb{unhandled}}{The request was unhandled (i.e. not
    implemented)}
}

}
}}
\section{Signals}{\describe{
\item{\code{aborted(user.data)}}{
Emitted by the backend when e.g. a device becomes unavailable
while a mount operation is in progress.
  
Implementations of GMountOperation should handle this signal
by dismissing open password dialogs.
  Since 2.20

\describe{\item{\code{user.data}}{user data set when the signal handler was connected.}}


}
\item{\code{ask-password(op, message, default.user, default.domain, flags, user.data)}}{
Emitted when a mount operation asks the user for a password.
  
If the message contains a line break, the first line should be
presented as a heading. For example, it may be used as the
primary text in a \code{\link{GtkMessageDialog}}.

\describe{
\item{\code{op}}{a \code{\link{GMountOperation}} requesting a password.}
\item{\code{message}}{string containing a message to display to the user.}
\item{\code{default.user}}{string containing the default user name.}
\item{\code{default.domain}}{string containing the default domain.}
\item{\code{flags}}{a set of \code{\link{GAskPasswordFlags}}.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{ask-question(op, message, choices, user.data)}}{
Emitted when asking the user a question and gives a list of
choices for the user to choose from.
  
If the message contains a line break, the first line should be
presented as a heading. For example, it may be used as the
primary text in a \code{\link{GtkMessageDialog}}.

\describe{
\item{\code{op}}{a \code{\link{GMountOperation}} asking a question.}
\item{\code{message}}{string containing a message to display to the user.}
\item{\code{choices}}{a list of strings for each possible choice.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{reply(op, result, user.data)}}{
Emitted when the user has replied to the mount operation.

\describe{
\item{\code{op}}{a \code{\link{GMountOperation}}.}
\item{\code{result}}{a \code{\link{GMountOperationResult}} indicating how the request was handled}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{show-processes(op, message, processes, choices, user.data)}}{
Emitted when one or more processes are blocking an operation
e.g. unmounting/ejecting a \code{\link{GMount}} or stopping a \code{\link{GDrive}}.
  
Note that this signal may be emitted several times to update the
list of blocking processes as processes close files. The
application should only respond with \code{\link{gMountOperationReply}} to
the latest signal (setting \verb{"choice"} to the choice
the user made).
  
If the message contains a line break, the first line should be
presented as a heading. For example, it may be used as the
primary text in a \code{\link{GtkMessageDialog}}.
  Since 2.22

\describe{
\item{\code{op}}{a \code{\link{GMountOperation}}.}
\item{\code{message}}{string containing a message to display to the user.}
\item{\code{processes}}{a list of \verb{GPid} for processes blocking the operation.}
\item{\code{choices}}{a list of strings for each possible choice.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\verb{anonymous} [logical : Read / Write]}{

Whether to use an anonymous user when authenticating.
  Default value: FALSE

}
\item{\verb{choice} [integer : Read / Write]}{

The index of the user's choice when a question is asked during the
mount operation. See the \verb{"ask-question"} signal.
  Allowed values: >= 0  Default value: 0

}
\item{\verb{domain} [character : *                : Read / Write]}{

The domain to use for the mount operation.
  Default value: NULL

}
\item{\verb{password} [character : *                : Read / Write]}{

The password that is used for authentication when carrying out
the mount operation.
  Default value: NULL

}
\item{\verb{password-save} [\code{\link{GPasswordSave}} : Read / Write]}{

Determines if and how the password information should be saved.
  Default value: G_PASSWORD_SAVE_NEVER

}
\item{\verb{username} [character : *                : Read / Write]}{

The user name that is used for authentication when carrying out
the mount operation.
  Default value: NULL

}
}}
\references{\url{https://developer-old.gnome.org/gio/stable/GMountOperation.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
