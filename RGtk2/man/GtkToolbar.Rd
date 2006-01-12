\alias{GtkToolbar}
\alias{gtkToolbar}
\alias{GtkToolbarChildType}
\alias{GtkToolbarSpaceStyle}
\name{GtkToolbar}
\title{GtkToolbar}
\description{Create bars of buttons and other widgets}
\usage{
\link{gtkToolbarNew}(show = TRUE)
\link{gtkToolbarInsert}(object, item, pos)
\link{gtkToolbarGetItemIndex}(object, item)
\link{gtkToolbarGetNItems}(object)
\link{gtkToolbarGetNthItem}(object, n)
\link{gtkToolbarGetDropIndex}(object, x, y)
\link{gtkToolbarSetDropHighlightItem}(object, tool.item = NULL, index)
\link{gtkToolbarSetShowArrow}(object, show.arrow)
\link{gtkToolbarSetOrientation}(object, orientation)
\link{gtkToolbarSetTooltips}(object, enable)
\link{gtkToolbarUnsetIconSize}(object)
\link{gtkToolbarGetShowArrow}(object)
\link{gtkToolbarGetOrientation}(object)
\link{gtkToolbarGetStyle}(object)
\link{gtkToolbarGetIconSize}(object)
\link{gtkToolbarGetTooltips}(object)
\link{gtkToolbarGetReliefStyle}(object)
\link{gtkToolbarAppendItem}(object, text, tooltip.text, tooltip.private.text, icon, callback, user.data = NULL)
\link{gtkToolbarPrependItem}(object, text, tooltip.text, tooltip.private.text, icon, callback, user.data)
\link{gtkToolbarInsertItem}(object, text, tooltip.text, tooltip.private.text, icon, callback, user.data, position)
\link{gtkToolbarAppendSpace}(object)
\link{gtkToolbarPrependSpace}(object)
\link{gtkToolbarInsertSpace}(object, position)
\link{gtkToolbarAppendElement}(object, type, widget, text, tooltip.text, tooltip.private.text, icon, callback, user.data = NULL)
\link{gtkToolbarPrependElement}(object, type, widget, text, tooltip.text, tooltip.private.text, icon, callback, user.data = NULL)
\link{gtkToolbarInsertElement}(object, type, widget, text, tooltip.text, tooltip.private.text, icon, callback, user.data = NULL, position)
\link{gtkToolbarAppendWidget}(object, widget, tooltip.text = NULL, tooltip.private.text = NULL)
\link{gtkToolbarPrependWidget}(object, widget, tooltip.text = NULL, tooltip.private.text = NULL)
\link{gtkToolbarInsertWidget}(object, widget, tooltip.text = NULL, tooltip.private.text = NULL, position)
\link{gtkToolbarSetStyle}(object, style)
\link{gtkToolbarInsertStock}(object, stock.id, tooltip.text, tooltip.private.text, callback, user.data, position)
\link{gtkToolbarSetIconSize}(object, icon.size)
\link{gtkToolbarRemoveSpace}(object, position)
\link{gtkToolbarUnsetStyle}(object)
gtkToolbar(show = TRUE)
}
\details{A toolbar is created with a call to \code{\link{gtkToolbarNew}}.
  
A toolbar can contain instances of a subclass of \code{\link{GtkToolItem}}. To add
a \code{\link{GtkToolItem}} to the a toolbar, use \code{\link{gtkToolbarInsert}}. To remove
an item from the toolbar use \code{\link{gtkContainerRemove}}. To add a button
to the toolbar, add an instance of \code{\link{GtkToolButton}}.
  
Toolbar items can be visually grouped by adding instances of
\code{\link{GtkSeparatorToolItem}} to the toolbar. If a \code{\link{GtkSeparatorToolItem}} has
the "expand" property set to \code{TRUE} and the "draw" property set to
\code{FALSE} the effect is to force all following items to the end of the
toolbar.
  
Creating a context menu for the toolbar can be done by connecting to
the \code{\link{GtkToolbar}}::popup-context-menu signal.}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----GtkToolbar}}
\section{Structures}{\describe{\item{\code{GtkToolbar}}{
The \code{\link{GtkToolbar}} struct only contains private data and should only be
accessed through the function described below.

}}}
\section{Convenient Construction}{\code{gtkToolbar} is the equivalent of \code{\link{gtkToolbarNew}}.}
\section{Enums and Flags}{\describe{
\item{\code{enum GtkToolbarChildType}}{
\strong{WARNING: \code{GtkToolbarChildType} is deprecated and should not be used in newly-written code.}
\code{\link{GtkToolbarChildType}} is used to set the type of new elements that are added 
to a \code{\link{GtkToolbar}}.

\describe{
\item{\code{GTK_TOOLBAR_CHILD_SPACE (space)}}{a space in the style of the toolbar's \code{\link{GtkToolbarSpaceStyle}}.}
\item{\code{GTK_TOOLBAR_CHILD_BUTTON (button)}}{a \code{\link{GtkButton}}.}
\item{\code{GTK_TOOLBAR_CHILD_TOGGLEBUTTON (togglebutton)}}{a \code{\link{GtkToggleButton}}.}
\item{\code{GTK_TOOLBAR_CHILD_RADIOBUTTON (radiobutton)}}{a \code{\link{GtkRadioButton}}.}
\item{\code{GTK_TOOLBAR_CHILD_WIDGET (widget)}}{a standard \code{\link{GtkWidget}}.}
}

}
\item{\code{enum GtkToolbarSpaceStyle}}{


\describe{
\item{\code{GTK_TOOLBAR_SPACE_EMPTY (empty)}}{\emph{undocumented
}}
\item{\code{GTK_TOOLBAR_SPACE_LINE (line)}}{\emph{undocumented
}}
}

}
}}
\section{Interfaces}{GtkToolbar implements
 AtkImplementorIface.}
\section{Signals}{\describe{
\item{\code{focus-home-or-end(toolbar, focus.home, user.data)}}{
A keybinding signal used internally by GTK+. This signal can't
be used in application code  

\describe{
\item{\code{toolbar}}{[\code{\link{GtkToolbar}}]  the \code{\link{GtkToolbar}} which emitted the signal}
\item{\code{focus.home}}{[logical]  \code{TRUE} if the first item should be focused}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{move-focus(toolbar, dir, user.data)}}{
A keybinding signal used internally by GTK+. This signal can't
be used in application code.  

\describe{
\item{\code{toolbar}}{[\code{\link{GtkToolbar}}]  the \code{\link{GtkToolbar}} which emitted the signal}
\item{\code{dir}}{[\code{\link{GtkDirectionType}}]  a \code{GtkDirection}}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{orientation-changed(toolbar, orientation, user.data)}}{
Emitted when the orientation of the toolbar changes.  

\describe{
\item{\code{toolbar}}{[\code{\link{GtkToolbar}}]  the object which emitted the signal}
\item{\code{orientation}}{[\code{\link{GtkOrientation}}]  the new \code{\link{GtkOrientation}} of the toolbar}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{popup-context-menu(toolbar, x, y, button, user.data)}}{
Emitted when the user right-clicks the toolbar or uses the
keybinding to display a popup menu.
  
Application developers should handle this signal if they want
to display a context menu on the toolbar. The context-menu should
appear at the coordinates given by \code{x} and \code{y}. The mouse button
number is given by the \code{button} parameter. If the menu was popped
up using the keybaord, \code{button} is -1.  

\describe{
\item{\code{toolbar}}{[\code{\link{GtkToolbar}}]  the \code{\link{GtkToolbar}} which emitted the signal}
\item{\code{x}}{[integer]  the x coordinate of the point where the menu should appear}
\item{\code{y}}{[integer]  the y coordinate of the point where the menu should appear}
\item{\code{button}}{[integer]  the mouse button the user pressed, or -1}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{style-changed(toolbar, style, user.data)}}{
Emitted when the style of the toolbar changes.  

\describe{
\item{\code{toolbar}}{[\code{\link{GtkToolbar}}]  The \code{\link{GtkToolbar}} which emitted the signal}
\item{\code{style}}{[\code{\link{GtkToolbarStyle}}]  the new \code{\link{GtkToolbarStyle}} of the toolbar}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
}}
\section{Properties}{\describe{
\item{\code{orientation} [\code{\link{GtkOrientation}} : Read / Write]}{

The orientation of the toolbar.  Default value: GTK_ORIENTATION_HORIZONTAL

}
\item{\code{show-arrow} [logical : Read / Write]}{

If an arrow should be shown if the toolbar doesn't fit.  Default value: TRUE

}
\item{\code{toolbar-style} [\code{\link{GtkToolbarStyle}} : Read / Write]}{

How to draw the toolbar.  Default value: GTK_TOOLBAR_ICONS

}
\item{\code{tooltips} [logical : Read / Write]}{

If the tooltips of the toolbar should be active or not.  

  Default value: TRUE  Since  2.8

}
}}
\section{Style Properties}{\describe{
\item{\code{button-relief} [\code{\link{GtkReliefStyle}} : Read]}{

Type of bevel around toolbar buttons.  Default value: GTK_RELIEF_NONE

}
\item{\code{internal-padding} [integer : Read]}{

Amount of border space between the toolbar shadow and the buttons.  Allowed values: >= 0  Default value: 0

}
\item{\code{shadow-type} [\code{\link{GtkShadowType}} : Read]}{

Style of bevel around the toolbar.  Default value: GTK_SHADOW_OUT

}
\item{\code{space-size} [integer : Read]}{

Size of spacers.  Allowed values: >= 0  Default value: 12

}
\item{\code{space-style} [\code{\link{GtkToolbarSpaceStyle}} : Read]}{

Whether spacers are vertical lines or just blank.  Default value: GTK_TOOLBAR_SPACE_LINE

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkToolbar.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
