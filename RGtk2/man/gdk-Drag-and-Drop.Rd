\alias{gdk-Drag-and-Drop}
\alias{GdkDragContext}
\alias{gdkDragContext}
\alias{GdkDragProtocol}
\alias{GdkDragAction}
\name{gdk-Drag-and-Drop}
\title{Drag and Drop}
\description{Functions for controlling drag and drop handling}
\section{Methods and Functions}{
\code{\link{gdkDragGetSelection}(object)}\cr
\code{\link{gdkDragAbort}(object, time)}\cr
\code{\link{gdkDropReply}(object, ok, time = "GDK_CURRENT_TIME")}\cr
\code{\link{gdkDragContextNew}()}\cr
\code{\link{gdkDragDrop}(object, time)}\cr
\code{\link{gdkDragFindWindow}(object, drag.window, x.root, y.root)}\cr
\code{\link{gdkDragFindWindowForScreen}(object, drag.window, screen, x.root, y.root)}\cr
\code{\link{gdkDragBegin}(object, targets)}\cr
\code{\link{gdkDragMotion}(object, dest.window, protocol, x.root, y.root, suggested.action, possible.actions, time)}\cr
\code{\link{gdkDropFinish}(object, success, time = "GDK_CURRENT_TIME")}\cr
\code{\link{gdkDragGetProtocol}(xid)}\cr
\code{\link{gdkDragGetProtocolForDisplay}(display, xid)}\cr
\code{\link{gdkDragStatus}(object, action, time = "GDK_CURRENT_TIME")}\cr
\code{\link{gdkDragDropSucceeded}(object)}\cr
\code{gdkDragContext()}
}
\section{Detailed Description}{These functions provide a low level interface for drag and drop.
The X backend of GDK supports both the Xdnd and Motif drag and drop protocols
transparently, the Win32 backend supports the WM_DROPFILES protocol.
  
GTK+ provides a higher level abstraction based on top of these functions,
and so they are not normally needed in GTK+ applications.
See the Drag and Drop section of
the GTK+ documentation for more information.}
\section{Structures}{\describe{\item{\verb{GdkDragContext}}{
A \code{GdkDragContext} holds information about a
drag in progress. It is used on both source and destination sides.

\describe{
\item{\verb{protocol}}{[\code{\link{GdkDragProtocol}}] the parent instance}
\item{\verb{isSource}}{[logical] the DND protocol which governs this drag.}
\item{\verb{sourceWindow}}{[\code{\link{GdkWindow}}] \code{TRUE} if the context is used on the source side.}
\item{\verb{destWindow}}{[\code{\link{GdkWindow}}] the source of this drag.}
\item{\verb{targets}}{[list] the destination window of this drag.}
\item{\verb{actions}}{[\code{\link{GdkDragAction}}] a list of targets offered by the source.}
\item{\verb{suggestedAction}}{[\code{\link{GdkDragAction}}] a bitmask of actions proposed by the source when
\code{suggested.action} is \code{GDK_ACTION_ASK}.}
\item{\verb{action}}{[\code{\link{GdkDragAction}}] the action suggested by the source.}
\item{\verb{startTime}}{[numeric] the action chosen by the destination.}
}

}}}
\section{Convenient Construction}{\code{gdkDragContext} is the equivalent of \code{\link{gdkDragContextNew}}.}
\section{Enums and Flags}{\describe{
\item{\verb{GdkDragProtocol}}{
Used in \code{\link{GdkDragContext}} to indicate the protocol according to
which DND is done.

\describe{
\item{\verb{motif}}{The Motif DND protocol.}
\item{\verb{xdnd}}{The Xdnd protocol.}
\item{\verb{rootwin}}{An extension to the Xdnd protocol for
  unclaimed root window drops.}
\item{\verb{none}}{no protocol.}
\item{\verb{win32-dropfiles}}{The simple WM_DROPFILES protocol.}
\item{\verb{ole2}}{The complex OLE2 DND protocol (not implemented).}
\item{\verb{local}}{Intra-application DND.}
}

}
\item{\verb{GdkDragAction}}{
Used in \code{\link{GdkDragContext}} to indicate what the destination
should do with the dropped data.

\describe{
\item{\verb{default}}{Means nothing, and should not be used.}
\item{\verb{copy}}{Copy the data.}
\item{\verb{move}}{Move the data, i.e. first copy it, then delete
  it from the source using the DELETE target of the X selection protocol.}
\item{\verb{link}}{Add a link to the data. Note that this is only
  useful if source and destination agree on what it means.}
\item{\verb{private}}{Special action which tells the source that the
  destination will do something that the source doesn't understand.}
\item{\verb{ask}}{Ask the user what to do with the data.}
}

}
}}
\references{\url{https://developer-old.gnome.org/gdk2/stable/gdk2-Drag-and-Drop.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
