\alias{atkActionGetKeybinding}
\name{atkActionGetKeybinding}
\title{atkActionGetKeybinding}
\description{Returns a keybinding associated with this action, if one exists.
The returned string is in the format "<a>;<b>;<c>"
(i.e. semicolon-delimited), where <a> is the keybinding which
activates the object if it is presently enabled onscreen, 
<b> corresponds to the keybinding or sequence of keys
which invokes the action even if the relevant element is not
currently posted on screen (for instance, for a menu item it
posts the parent menus before invoking).  The last token in the
above string, if non-empty, represents a keyboard shortcut which
invokes the same action without posting the component or its
enclosing menus or dialogs.}
\usage{atkActionGetKeybinding(object, i)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkAction}}]  a \code{\link{GObject}} instance that implements AtkActionIface}
\item{\verb{i}}{[integer]  the action index corresponding to the action to be performed }
}
\value{[character] a string representing the available keybindings, or \code{NULL}
if there is no keybinding for this action.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
