\alias{AtkAction}
\name{AtkAction}
\title{AtkAction}
\description{The ATK interface provided by UI components which the user can
activate/interact with,}
\section{Methods and Functions}{
\code{\link{atkActionDoAction}(object, i)}\cr
\code{\link{atkActionGetNActions}(object)}\cr
\code{\link{atkActionGetDescription}(object, i)}\cr
\code{\link{atkActionGetName}(object, i)}\cr
\code{\link{atkActionGetLocalizedName}(object, i)}\cr
\code{\link{atkActionGetKeybinding}(object, i)}\cr
\code{\link{atkActionSetDescription}(object, i, desc)}\cr
}
\section{Hierarchy}{\preformatted{GInterface
   +----AtkAction}}
\section{Implementations}{AtkAction is implemented by
 \verb{\link{AtkHyperlink}} and  \verb{\link{AtkNoOpObject}}.}
\section{Detailed Description}{\verb{\link{AtkAction}} should be implemented by instances of \verb{\link{AtkObject}} classes with
which the user can interact directly, i.e. buttons, checkboxes,
scrollbars,  e.g. components which are not "passive"
providers of UI information.
  
Exceptions: when the user interaction is already covered by
another appropriate interface such as \verb{\link{AtkEditableText}} (insert/delete
test, etc.) or \verb{\link{AtkValue}} (set value) then these actions should not be
exposed by \verb{\link{AtkAction}} as well.  
  
Also note that the \verb{\link{AtkAction}} API is limited in that parameters may not
be passed to the object being activated; thus the action must be
self-contained and specifiable via only a single "verb".  Concrete
examples include "press", "release", "click" for buttons, "drag"
(meaning initiate drag) and "drop" for drag sources and drop targets,
etc.  
  
Though most UI interactions on components should be invocable via
keyboard as well as mouse, there will generally be a close mapping
between "mouse actions" that are possible on a component and the
AtkActions.  Where mouse and keyboard actions are redundant in effect,
\verb{\link{AtkAction}} should expose only one action rather than exposing redundant
actions if possible.  By convention we have been using "mouse centric"
terminology for \verb{\link{AtkAction}} names.}
\section{Structures}{\describe{\item{\verb{AtkAction}}{
The AtkAction structure does not contain any fields.

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/atk/AtkAction.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
