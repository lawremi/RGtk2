\alias{AtkUtil}
\alias{AtkKeyEventStruct}
\alias{AtkEventListener}
\alias{AtkEventListenerInit}
\alias{AtkKeySnoopFunc}
\alias{AtkCoordType}
\alias{AtkKeyEventType}
\name{AtkUtil}
\title{AtkUtil}
\description{This is a utility class which supports the adding and removal of event listeners.}
\section{Methods and Functions}{
\code{\link{atkAddFocusTracker}(focus.tracker)}\cr
\code{\link{atkRemoveFocusTracker}(tracker.id)}\cr
\code{\link{atkFocusTrackerInit}(add.function)}\cr
\code{\link{atkFocusTrackerNotify}(object)}\cr
\code{\link{atkAddGlobalEventListener}(listener, event.type)}\cr
\code{\link{atkRemoveGlobalEventListener}(listener.id)}\cr
\code{\link{atkAddKeyEventListener}(listener, data)}\cr
\code{\link{atkRemoveKeyEventListener}(listener.id)}\cr
\code{\link{atkGetRoot}()}\cr
\code{\link{atkGetFocusObject}()}\cr
\code{\link{atkGetToolkitName}()}\cr
\code{\link{atkGetToolkitVersion}()}\cr

}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----AtkUtil}}
\section{Detailed Description}{This is a utility class which supports the adding and removal of event 
listeners. The adding and removing of the listeners must be done in the 
same thread. The file also contains a number of utility functions.}
\section{Structures}{\describe{
\item{\code{AtkUtil}}{
The AtkObject structure should not be accessed directly.

}
\item{\code{AtkKeyEventStruct}}{
The AtkKeyEventStruct describes a keyboard event.

\describe{
\item{\code{type}}{[integer] }
\item{\code{state}}{[numeric] }
\item{\code{keyval}}{[numeric] }
\item{\code{length}}{[integer] }
\item{\code{string}}{[character] }
\item{\code{keycode}}{[integer] }
\item{\code{timestamp}}{[numeric] }
}

}
}}
\section{Enums and Flags}{\describe{
\item{\code{AtkCoordType}}{
Specifies how xy coordinates are to be interpreted. Used by functions such
as \code{\link{atkComponentGetPosition}} and \code{\link{atkTextGetCharacterExtents}}  

\describe{
\item{\code{ATK_XY_SCREEN (screen)}}{ specifies xy coordinates relative to the screen}
\item{\code{ATK_XY_WINDOW (window)}}{ specifies xy coordinates relative to the widget's 
top-level window}
}

}
\item{\code{AtkKeyEventType}}{
Specifies the type of a keyboard evemt.  

\describe{
\item{\code{ATK_KEY_EVENT_PRESS (press)}}{ specifies a key press event}
\item{\code{ATK_KEY_EVENT_RELEASE (release)}}{ specifies a key release event}
\item{\code{ATK_KEY_EVENT_LAST_DEFINED (last-defined)}}{ Not a valid value; specifies end of enumeration}
}

}
}}
\section{User Functions}{\describe{
\item{\code{AtkEventListener(Param1)}}{
An AtkEventListener is user specified function which is called when an event,
such as receiving focus, occurs. The parameter of the AtkEventListener is the
AtkObject on which the event occurred.

\describe{\item{\code{Param1}}{[\code{\link{AtkObject}}] }}

}
\item{\code{AtkEventListenerInit()}}{
An AtkEventListenerInit is an initialization function in an implementation 
of the ATK interface used to perform implementation-specific initialization
when enabling focus tracking.

\describe{\emph{undocumented
}}

}
\item{\code{AtkKeySnoopFunc(event, func.data)}}{
An AtkKeySnoopFunc is a function which is called when a keyboard event occurs.

\describe{
\item{\code{event}}{[\code{\link{AtkKeyEventStruct}}] }
\item{\code{func.data}}{[R object] }
}

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/atk/AtkUtil.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
