\alias{AtkComponent}
\name{AtkComponent}
\title{AtkComponent}
\description{The ATK interface provided by UI components which occupy a physical area on
the screen.}
\usage{
\link{atkComponentAddFocusHandler}(object, handler)
\link{atkComponentContains}(object, x, y, coord.type)
\link{atkComponentGetExtents}(object, coord.type)
\link{atkComponentGetLayer}(object)
\link{atkComponentGetMdiZorder}(object)
\link{atkComponentGetPosition}(object, coord.type)
\link{atkComponentGetSize}(object)
\link{atkComponentGrabFocus}(object)
\link{atkComponentRefAccessibleAtPoint}(object, x, y, coord.type)
\link{atkComponentRemoveFocusHandler}(object, handler.id)
\link{atkComponentSetExtents}(object, x, y, width, height, coord.type)
\link{atkComponentSetPosition}(object, x, y, coord.type)
\link{atkComponentSetSize}(object, width, height)
}
\details{\code{\link{AtkComponent}} should be implemented by most if not all UI elements with
an actual on-screen presence, i.e. components which can be said to have
a screen-coordinate bounding box.  Virtually all widgets will need to
have \code{\link{AtkComponent}} implementations provided for their corresponding
\code{\link{AtkObject}} class.  In short, only UI elements which are *not* GUI
elements will omit this ATK interface.
  
A possible exception might be textual information with a transparent
background, in which case text glyph bounding box information is
provided by \code{\link{AtkText}}.}
\section{Hierarchy}{\preformatted{  GInterface
   +----AtkComponent}}
\section{Structures}{\describe{\item{\code{AtkComponent}}{
The AtkComponent structure does not contain any fields.

}}}
\section{Implementations}{AtkComponent is implemented by
 \code{\link{AtkNoOpObject}}.}
\section{Signals}{\describe{\item{\code{bounds-changed(atkcomponent, arg1, user.data)}}{
The 'bounds-changed" signal is emitted when the bposition or size of the 
a component changes.

\describe{
\item{\code{atkcomponent}}{[\code{\link{AtkComponent}}] the object which received the signal.}
\item{\code{arg1}}{[AtkRectangle] The AtkRectangle giving the new position and size.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/atk/AtkComponent.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
