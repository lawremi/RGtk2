\alias{GtkToolbar}
\alias{gtkToolbar}
\alias{GtkToolbarChildType}
\alias{GtkToolbarSpaceStyle}
\name{GtkToolbar}
\title{GtkToolbar}
\description{Create bars of buttons and other widgets}
\section{Methods and Functions}{
\code{\link{gtkToolbarNew}(show = TRUE)}\cr
\code{\link{gtkToolbarInsert}(object, item, pos)}\cr
\code{\link{gtkToolbarGetItemIndex}(object, item)}\cr
\code{\link{gtkToolbarGetNItems}(object)}\cr
\code{\link{gtkToolbarGetNthItem}(object, n)}\cr
\code{\link{gtkToolbarGetDropIndex}(object, x, y)}\cr
\code{\link{gtkToolbarSetDropHighlightItem}(object, tool.item = NULL, index)}\cr
\code{\link{gtkToolbarSetShowArrow}(object, show.arrow)}\cr
\code{\link{gtkToolbarSetOrientation}(object, orientation)}\cr
\code{\link{gtkToolbarSetTooltips}(object, enable)}\cr
\code{\link{gtkToolbarUnsetIconSize}(object)}\cr
\code{\link{gtkToolbarGetShowArrow}(object)}\cr
\code{\link{gtkToolbarGetOrientation}(object)}\cr
\code{\link{gtkToolbarGetStyle}(object)}\cr
\code{\link{gtkToolbarGetIconSize}(object)}\cr
\code{\link{gtkToolbarGetTooltips}(object)}\cr
\code{\link{gtkToolbarGetReliefStyle}(object)}\cr
\code{\link{gtkToolbarAppendItem}(object, text, tooltip.text, tooltip.private.text, icon, callback, user.data = NULL)}\cr
\code{\link{gtkToolbarPrependItem}(object, text, tooltip.text, tooltip.private.text, icon, callback, user.data)}\cr
\code{\link{gtkToolbarInsertItem}(object, text, tooltip.text, tooltip.private.text, icon, callback, user.data, position)}\cr
\code{\link{gtkToolbarAppendSpace}(object)}\cr
\code{\link{gtkToolbarPrependSpace}(object)}\cr
\code{\link{gtkToolbarInsertSpace}(object, position)}\cr
\code{\link{gtkToolbarAppendElement}(object, type, widget, text, tooltip.text, tooltip.private.text, icon, callback, user.data = NULL)}\cr
\code{\link{gtkToolbarPrependElement}(object, type, widget, text, tooltip.text, tooltip.private.text, icon, callback, user.data = NULL)}\cr
\code{\link{gtkToolbarInsertElement}(object, type, widget, text, tooltip.text, tooltip.private.text, icon, callback, user.data = NULL, position)}\cr
\code{\link{gtkToolbarAppendWidget}(object, widget, tooltip.text = NULL, tooltip.private.text = NULL)}\cr
\code{\link{gtkToolbarPrependWidget}(object, widget, tooltip.text = NULL, tooltip.private.text = NULL)}\cr
\code{\link{gtkToolbarInsertWidget}(object, widget, tooltip.text = NULL, tooltip.private.text = NULL, position)}\cr
\code{\link{gtkToolbarSetStyle}(object, style)}\cr
\code{\link{gtkToolbarInsertStock}(object, stock.id, tooltip.text, tooltip.private.text, callback, user.data, position)}\cr
\code{\link{gtkToolbarSetIconSize}(object, icon.size)}\cr
\code{\link{gtkToolbarRemoveSpace}(object, position)}\cr
\code{\link{gtkToolbarUnsetStyle}(object)}\cr
\code{gtkToolbar(show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkToolbar}}
\section{Interfaces}{GtkToolbar implements
 AtkImplementorIface,  \code{\link{GtkBuildable}},  \code{\link{GtkToolShell}} and  \code{\link{GtkOrientable}}.}
\section{Detailed Description}{A toolbar is created with a call to \code{\link{gtkToolbarNew}}.
  
A toolbar can contain instances of a subclass of \code{\link{GtkToolItem}}. To add
a \code{\link{GtkToolItem}} to the a toolbar, use \code{\link{gtkToolbarInsert}}. To remove
an item from the toolbar use \code{\link{gtkContainerRemove}}. To add a button
to the toolbar, add an instance of \code{\link{GtkToolButton}}.
  
Toolbar items can be visually grouped by adding instances of
\code{\link{GtkSeparatorToolItem}} to the toolbar. If a \code{\link{GtkSeparatorToolItem}} has
the "expand" property set to \verb{TRUE} and the "draw" property set to
\verb{FALSE} the effect is to force all following items to the end of the
toolbar.
  
Creating a context menu for the toolbar can be done by connecting to
the \verb{"popup-context-menu"} signal.}
\section{Structures}{\describe{\item{\verb{GtkToolbar}}{
The \code{\link{GtkToolbar}} struct only contains private data and should only be
accessed through the function described below.

}}}
\section{Convenient Construction}{\code{gtkToolbar} is the equivalent of \code{\link{gtkToolbarNew}}.}
\section{Enums and Flags}{\describe{
\item{\verb{GtkToolbarChildType}}{
\strong{WARNING: \code{GtkToolbarChildType} is deprecated and should not be used in newly-written code.}
\code{\link{GtkToolbarChildType}} is used to set the type of new elements that are added
to a \code{\link{GtkToolbar}}.

\describe{
\item{\verb{space}}{a space in the style of the toolbar's \code{\link{GtkToolbarSpaceStyle}}.}
\item{\verb{button}}{a \code{\link{GtkButton}}.}
\item{\verb{togglebutton}}{a \code{\link{GtkToggleButton}}.}
\item{\verb{radiobutton}}{a \code{\link{GtkRadioButton}}.}
\item{\verb{widget}}{a standard \code{\link{GtkWidget}}.}
}

}
\item{\verb{GtkToolbarSpaceStyle}}{
\emph{undocumented
}

\describe{
\item{\verb{empty}}{\emph{undocumented
}}
\item{\verb{line}}{\emph{undocumented
}}
}

}
}}
\section{Signals}{\describe{
\item{\code{focus-home-or-end(toolbar, focus.home, user.data)}}{
A keybinding signal used internally by GTK+. This signal can't
be used in application code

\describe{
\item{\code{toolbar}}{the \code{\link{GtkToolbar}} which emitted the signal}
\item{\code{focus.home}}{\code{TRUE} if the first item should be focused}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} if the signal was handled, \code{FALSE} if not

}
\item{\code{orientation-changed(toolbar, orientation, user.data)}}{
Emitted when the orientation of the toolbar changes.

\describe{
\item{\code{toolbar}}{the object which emitted the signal}
\item{\code{orientation}}{the new \code{\link{GtkOrientation}} of the toolbar}
\item{\code{user.data}}{user data set when the signal handler was connected.}
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
\item{\code{toolbar}}{the \code{\link{GtkToolbar}} which emitted the signal}
\item{\code{x}}{the x coordinate of the point where the menu should appear}
\item{\code{y}}{the y coordinate of the point where the menu should appear}
\item{\code{button}}{the mouse button the user pressed, or -1}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] return \code{TRUE} if the signal was handled, \code{FALSE} if not

}
\item{\code{style-changed(toolbar, style, user.data)}}{
Emitted when the style of the toolbar changes.

\describe{
\item{\code{toolbar}}{The \code{\link{GtkToolbar}} which emitted the signal}
\item{\code{style}}{the new \code{\link{GtkToolbarStyle}} of the toolbar}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\verb{icon-size} [integer : Read / Write]}{

The size of the icons in a toolbar is normally determined by
the toolbar-icon-size setting. When this property is set, it
overrides the setting.
  
This should only be used for special-purpose toolbars, normal
application toolbars should respect the user preferences for the
size of icons.
  Allowed values: >= 0  Default value: 3  Since 2.10

}
\item{\verb{icon-size-set} [logical : Read / Write]}{

Is \code{TRUE} if the icon-size property has been set.
  Default value: FALSE  Since 2.10

}
\item{\verb{show-arrow} [logical : Read / Write]}{

If an arrow should be shown if the toolbar doesn't fit.  Default value: TRUE

}
\item{\verb{toolbar-style} [\code{\link{GtkToolbarStyle}} : Read / Write]}{

How to draw the toolbar.  Default value: GTK_TOOLBAR_BOTH

}
\item{\verb{tooltips} [logical : Read / Write]}{

If the tooltips of the toolbar should be active or not.
  Default value: TRUE  Since 2.8

}
}}
\section{Style Properties}{\describe{
\item{\verb{button-relief} [\code{\link{GtkReliefStyle}} : Read]}{

Type of bevel around toolbar buttons.  Default value: GTK_RELIEF_NONE

}
\item{\verb{internal-padding} [integer : Read]}{

Amount of border space between the toolbar shadow and the buttons.  Allowed values: >= 0  Default value: 0

}
\item{\verb{max-child-expand} [integer : Read]}{

Maximum amount of space an expandable item will be given.  Allowed values: >= 0  Default value: 2147483647

}
\item{\verb{shadow-type} [\code{\link{GtkShadowType}} : Read]}{

Style of bevel around the toolbar.  Default value: GTK_SHADOW_OUT

}
\item{\verb{space-size} [integer : Read]}{

Size of spacers.  Allowed values: >= 0  Default value: 12

}
\item{\verb{space-style} [\code{\link{GtkToolbarSpaceStyle}} : Read]}{

Whether spacers are vertical lines or just blank.  Default value: GTK_TOOLBAR_SPACE_LINE

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkToolbar.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
