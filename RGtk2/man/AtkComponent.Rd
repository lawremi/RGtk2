\alias{AtkComponent}
\name{AtkComponent}
\title{AtkComponent}
\description{The ATK interface provided by UI components which occupy a physical area on
the screen.}
\section{Methods and Functions}{
\code{\link{atkComponentAddFocusHandler}(object, handler)}\cr
\code{\link{atkComponentContains}(object, x, y, coord.type)}\cr
\code{\link{atkComponentGetExtents}(object, coord.type)}\cr
\code{\link{atkComponentGetLayer}(object)}\cr
\code{\link{atkComponentGetMdiZorder}(object)}\cr
\code{\link{atkComponentGetPosition}(object, coord.type)}\cr
\code{\link{atkComponentGetSize}(object)}\cr
\code{\link{atkComponentGrabFocus}(object)}\cr
\code{\link{atkComponentRefAccessibleAtPoint}(object, x, y, coord.type)}\cr
\code{\link{atkComponentRemoveFocusHandler}(object, handler.id)}\cr
\code{\link{atkComponentSetExtents}(object, x, y, width, height, coord.type)}\cr
\code{\link{atkComponentSetPosition}(object, x, y, coord.type)}\cr
\code{\link{atkComponentSetSize}(object, width, height)}\cr
\code{\link{atkComponentGetAlpha}(object)}\cr
}
\section{Hierarchy}{\preformatted{GInterface
   +----AtkComponent}}
\section{Implementations}{AtkComponent is implemented by
 \code{\link{AtkNoOpObject}}.}
\section{Detailed Description}{\code{\link{AtkComponent}} should be implemented by most if not all UI elements with
an actual on-screen presence, i.e. components which can be said to have
a screen-coordinate bounding box.  Virtually all widgets will need to
have \code{\link{AtkComponent}} implementations provided for their corresponding
\code{\link{AtkObject}} class.  In short, only UI elements which are *not* GUI
elements will omit this ATK interface.
  
A possible exception might be textual information with a transparent
background, in which case text glyph bounding box information is
provided by \code{\link{AtkText}}.}
\section{Structures}{\describe{\item{\verb{AtkComponent}}{
The AtkComponent structure does not contain any fields.

}}}
\section{Signals}{\describe{\item{\code{bounds-changed(atkcomponent, arg1, user.data)}}{
The 'bounds-changed" signal is emitted when the bposition or size of the
a component changes.

\describe{
\item{\code{atkcomponent}}{[\code{\link{AtkComponent}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{AtkRectangle}}] The AtkRectangle giving the new position and size.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}}}
\references{\url{https://developer-old.gnome.org/atk/1.32/AtkComponent.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
