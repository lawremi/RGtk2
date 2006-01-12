\alias{gdk-Windows}
\alias{GdkWindow}
\alias{GdkGeometry}
\alias{GdkWindowAttr}
\alias{GdkFilterReturn}
\alias{gdkWindow}
\alias{GdkFilterFunc}
\alias{GdkWindowType}
\alias{GdkWindowClass}
\alias{GdkWindowHints}
\alias{GdkGravity}
\alias{GdkWindowEdge}
\alias{GdkWindowTypeHint}
\alias{GdkWindowAttributesType}
\alias{GdkModifierType}
\alias{GdkWMDecoration}
\alias{GdkWMFunction}
\name{gdk-Windows}
\title{Windows}
\description{Onscreen display areas in the target window system}
\usage{
\link{gdkWindowNew}(parent = NULL, attributes)
\link{gdkWindowDestroy}(object)
\link{gdkWindowGetWindowType}(object)
\link{gdkWindowAtPointer}()
\link{gdkWindowShow}(object)
\link{gdkWindowShowUnraised}(object)
\link{gdkWindowHide}(object)
\link{gdkWindowIsVisible}(object)
\link{gdkWindowIsViewable}(object)
\link{gdkWindowGetState}(object)
\link{gdkWindowWithdraw}(object)
\link{gdkWindowIconify}(object)
\link{gdkWindowDeiconify}(object)
\link{gdkWindowStick}(object)
\link{gdkWindowUnstick}(object)
\link{gdkWindowMaximize}(object)
\link{gdkWindowUnmaximize}(object)
\link{gdkWindowFullscreen}(object)
\link{gdkWindowUnfullscreen}(object)
\link{gdkWindowSetKeepAbove}(object, setting)
\link{gdkWindowSetKeepBelow}(object, setting)
\link{gdkWindowMove}(object, x, y)
\link{gdkWindowResize}(object, width, height)
\link{gdkWindowMoveResize}(object, x, y, width, height)
\link{gdkWindowScroll}(object, dx, dy)
\link{gdkWindowMoveRegion}(object, region, x, y)
\link{gdkWindowReparent}(object, new.parent, x, y)
\link{gdkWindowClear}(object)
\link{gdkWindowClearArea}(object, x, y, width, height)
\link{gdkWindowClearAreaE}(object, x, y, width, height)
\link{gdkWindowRaise}(object)
\link{gdkWindowLower}(object)
\link{gdkWindowFocus}(object, timestamp = GDK_CURRENT_TIME)
\link{gdkWindowRegisterDnd}(object)
\link{gdkWindowBeginResizeDrag}(object, edge, button, root.x, root.y, timestamp)
\link{gdkWindowBeginMoveDrag}(object, button, root.x, root.y, timestamp)
\link{gdkWindowConstrainSize}(geometry, width, height)
\link{gdkWindowBeginPaintRect}(object, rectangle)
\link{gdkWindowBeginPaintRegion}(object, region)
\link{gdkWindowEndPaint}(object)
\link{gdkWindowInvalidateRect}(object, rect = NULL, invalidate.children)
\link{gdkWindowInvalidateRegion}(object, region, invalidate.children)
\link{gdkWindowInvalidateMaybeRecurse}(object, region, child.func, user.data)
\link{gdkWindowGetUpdateArea}(object)
\link{gdkWindowFreezeUpdates}(object)
\link{gdkWindowThawUpdates}(object)
\link{gdkWindowProcessAllUpdates}()
\link{gdkWindowProcessUpdates}(object, update.children)
\link{gdkWindowSetDebugUpdates}(setting)
\link{gdkWindowGetInternalPaintInfo}(object)
\link{gdkWindowEnableSynchronizedConfigure}(object)
\link{gdkWindowConfigureFinished}(object)
\link{gdkWindowSetUserData}(object, user.data)
\link{gdkWindowSetOverrideRedirect}(object, override.redirect)
\link{gdkWindowSetAcceptFocus}(object, accept.focus)
\link{gdkWindowSetFocusOnMap}(object, focus.on.map)
\link{gdkWindowAddFilter}(object, fun, data)
\link{gdkWindowRemoveFilter}(object, fun, data)
\link{gdkWindowShapeCombineMask}(object, shape.mask = NULL, offset.x, offset.y)
\link{gdkWindowShapeCombineRegion}(object, shape.region = NULL, offset.x, offset.y)
\link{gdkWindowSetChildShapes}(object)
\link{gdkWindowMergeChildShapes}(object)
\link{gdkWindowSetStaticGravities}(object, use.static)
\link{gdkWindowSetHints}(object, x, y, min.width, min.height, max.width, max.height, flags)
\link{gdkWindowSetTitle}(object, title)
\link{gdkWindowSetBackground}(object, color)
\link{gdkWindowSetBackPixmap}(object, pixmap = NULL, parent.relative)
\link{gdkWindowSetCursor}(object, cursor = NULL)
\link{gdkWindowGetUserData}(object)
\link{gdkWindowGetGeometry}(object)
\link{gdkWindowSetGeometryHints}(object, geometry)
\link{gdkWindowSetIconList}(object, pixbufs)
\link{gdkWindowSetModalHint}(object, modal)
\link{gdkWindowSetTypeHint}(object, hint)
\link{gdkWindowSetSkipTaskbarHint}(object, modal)
\link{gdkWindowSetSkipPagerHint}(object, modal)
\link{gdkWindowSetUrgencyHint}(object, urgent)
\link{gdkWindowGetPosition}(object)
\link{gdkWindowGetRootOrigin}(object)
\link{gdkWindowGetFrameExtents}(object)
\link{gdkWindowGetOrigin}(object)
\link{gdkWindowGetDeskrelativeOrigin}(object)
\link{gdkWindowGetPointer}(object)
\link{gdkWindowGetParent}(object)
\link{gdkWindowGetToplevel}(object)
\link{gdkWindowGetChildren}(object)
\link{gdkWindowPeekChildren}(object)
\link{gdkWindowGetEvents}(object)
\link{gdkWindowSetEvents}(object, event.mask)
\link{gdkWindowSetIcon}(object, icon.window, pixmap, mask)
\link{gdkWindowSetIconName}(object, name)
\link{gdkWindowSetTransientFor}(object, leader)
\link{gdkWindowSetRole}(object, role)
\link{gdkWindowSetGroup}(object, leader)
\link{gdkWindowGetGroup}(object)
\link{gdkWindowSetDecorations}(object, decorations)
\link{gdkWindowGetDecorations}(object)
\link{gdkWindowSetFunctions}(object, functions)
\link{gdkWindowGetToplevels}()
\link{gdkGetDefaultRootWindow}()
\link{gdkSetPointerHooks}(object, new.hooks)
gdkWindow(parent = NULL, attributes)
}
\details{A \code{\link{GdkWindow}} is a rectangular region on the screen. It's a low-level object,
used to implement high-level objects such as \code{\link{GtkWidget}} and \code{\link{GtkWindow}} on the
GTK+ level. A \code{\link{GtkWindow}} is a toplevel window, the thing a user might think of 
as a "window" with a titlebar and so on; a \code{\link{GtkWindow}} may contain many \code{\link{GdkWindow}}. 
For example, each \code{\link{GtkButton}} has a \code{\link{GdkWindow}} associated with it.}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GdkDrawable}
         +----GdkWindow}}
\section{Structures}{\describe{
\item{\code{struct GdkWindow}}{
An opaque structure representing an onscreen drawable.
Pointers to structures of type \code{\link{GdkPixmap}}, \code{\link{GdkBitmap}},
and \code{\link{GdkWindow}}, can often be used interchangeably.
The type \code{\link{GdkDrawable}} refers generically to any of
these types.

}
\item{\code{GdkGeometry}}{
The \code{\link{GdkGeometry}} struct gives the window manager information about 
a window's geometry constraints. Normally you would set these on 
the GTK+ level using \code{\link{gtkWindowSetGeometryHints}}. \code{\link{GtkWindow}} 
then sets the hints on the \code{\link{GdkWindow}} it creates.
  
\code{\link{gdkWindowSetGeometryHints}} expects the hints to be fully valid already and
simply passes them to the window manager; in contrast,
\code{\link{gtkWindowSetGeometryHints}} performs some interpretation. For example,
\code{\link{GtkWindow}} will apply the hints to the geometry widget instead of the toplevel
window, if you set a geometry widget. Also, the
\code{min.width}/\code{min.height}/\code{max.width}/\code{max.height} fields may be set to -1, and
\code{\link{GtkWindow}} will substitute the size request of the window or geometry widget. If
the minimum size hint is not provided, \code{\link{GtkWindow}} will use its requisition as
the minimum size.  If the minimum size is provided and a geometry widget is set,
\code{\link{GtkWindow}} will take the minimum size as the minimum size of the geometry widget
rather than the entire window. The base size is treated similarly.
  
The canonical use-case for \code{\link{gtkWindowSetGeometryHints}} is to get a terminal
widget to resize properly. Here, the terminal text area should be the geometry
widget; \code{\link{GtkWindow}} will then automatically set the base size to the size of
other widgets in the terminal window, such as the menubar and scrollbar.  Then,
the \code{width.inc} and \code{height.inc} fields should be set to the size of one character
in the terminal. Finally, the base size should be set to the size of one
character. The net effect is that the minimum size of the terminal 
will have a 1x1 character terminal area, and only terminal sizes on 
the "character grid" will be allowed.
  
Here's an example of how the terminal example would be implemented, assuming 
a terminal area widget called "terminal" and a toplevel window "toplevel":
\preformatted{
fields <- c("base.width", "base.height", "min.width", "min.height", "width.inc", "height.inc")
hints[fields] <- char_width
toplevel$setGeometryHints(terminal, hints)
}
  
The other useful fields are the \code{min.aspect} and \code{max.aspect} fields; these
contain a width/height ratio as a floating point number. If a geometry widget is
set, the aspect applies to the geometry widget rather than the entire window.
The most common use of these hints is probably to set \code{min.aspect} and
\code{max.aspect} to the same value, thus forcing the window to keep a constant aspect
ratio.
\strong{\code{GdkGeometry} is a \link{transparent-type}.}

\describe{
\item{\code{min_width}}{[integer] minimum width of window (or -1 to use requisition, with \code{\link{GtkWindow}} only)
\code{min.height} minimum height of window (or -1 to use requisition, with \code{\link{GtkWindow}} only)}
\item{\code{min_height}}{[integer] }
\item{\code{max_width}}{[integer] maximum width of window (or -1 to use requisition, with \code{\link{GtkWindow}} only)}
\item{\code{max_height}}{[integer] maximum height of window (or -1 to use requisition, with \code{\link{GtkWindow}} only)}
\item{\code{base_width}}{[integer] allowed window widths are \code{base.width} + \code{width.inc} * N where N is any integer (-1 allowed with \code{\link{GtkWindow}})}
\item{\code{base_height}}{[integer] allowed window widths are \code{base.height} + \code{height.inc} * N where N is any integer (-1 allowed with \code{\link{GtkWindow}})}
\item{\code{width_inc}}{[integer] width resize increment}
\item{\code{height_inc}}{[integer] height resize increment}
\item{\code{min_aspect}}{[numeric] minimum width/height ratio}
\item{\code{max_aspect}}{[numeric] maximum width/height ratio}
\item{\code{win_gravity}}{[\code{\link{GdkGravity}}] window gravity, see \code{\link{gtkWindowSetGravity}}}
}

}
\item{\code{GdkWindowAttr}}{
Attributes to use for a newly-created window.
\strong{\code{GdkWindowAttr} is a \link{transparent-type}.}

\describe{
\item{\code{title}}{[character] title of the window (for toplevel windows)}
\item{\code{event_mask}}{[integer] event mask (see \code{\link{gdkWindowSetEvents}})}
\item{\code{x}}{[integer] X coordinate relative to parent window (see \code{\link{gdkWindowMove}})}
\item{\code{y}}{[integer] Y coordinate relative to parent window (see \code{\link{gdkWindowMove}})}
\item{\code{width}}{[integer] width of window}
\item{\code{height}}{[integer] height of window}
\item{\code{wclass}}{[\code{\link{GdkWindowClass}}] \code{GDK_INPUT_OUTPUT} (normal window) or \code{GDK_INPUT_ONLY} (invisible window that receives events)}
\item{\code{visual}}{[\code{\link{GdkVisual}}] \code{\link{GdkVisual}} for window}
\item{\code{colormap}}{[\code{\link{GdkColormap}}] \code{\link{GdkColormap}} for window}
\item{\code{window_type}}{[\code{\link{GdkWindowType}}] type of window}
\item{\code{cursor}}{[\code{\link{GdkCursor}}] cursor for the window (see \code{\link{gdkWindowSetCursor}})}
\item{\code{wmclass_name}}{[character] don't use (see \code{\link{gtkWindowSetWmclass}})}
\item{\code{wmclass_class}}{[character] don't use (see \code{\link{gtkWindowSetWmclass}})}
\item{\code{override_redirect}}{[logical] \code{TRUE} to bypass the window manager}
}

}
\item{\code{enum GdkFilterReturn}}{
Specifies the result of applying a \code{\link{GdkFilterFunc}} to a native event.

\describe{\emph{undocumented
}}

}
}}
\section{Convenient Construction}{\code{gdkWindow} is the equivalent of \code{\link{gdkWindowNew}}.}
\section{Enums and Flags}{\describe{
\item{\code{enum GdkWindowType}}{
Describes the kind of window.

\describe{
\item{\code{GDK_WINDOW_ROOT (root)}}{root window; this window has no parent, covers the entire screen, and is created by the window system}
\item{\code{GDK_WINDOW_TOPLEVEL (toplevel)}}{toplevel window (used to implement \code{\link{GtkWindow}})}
\item{\code{GDK_WINDOW_CHILD (child)}}{child window (used to implement e.g. \code{\link{GtkButton}})}
\item{\code{GDK_WINDOW_DIALOG (dialog)}}{useless/deprecated compatibility type}
\item{\code{GDK_WINDOW_TEMP (temp)}}{override redirect temporary window (used to implement \code{\link{GtkMenu}})}
\item{\code{GDK_WINDOW_FOREIGN (foreign)}}{foreign window (see \code{\link{gdkWindowForeignNew}})}
}

}
\item{\code{enum GdkWindowClass}}{
\code{GDK.INPUT.OUTPUT} windows are the standard kind of window you might expect. 
\code{GDK.INPUT.ONLY} windows are invisible; they are used to trap events, but 
you can't draw on them.

\describe{
\item{\code{GDK_INPUT_OUTPUT (output)}}{window for graphics and events}
\item{\code{GDK_INPUT_ONLY (only)}}{window for events only}
}

}
\item{\code{enum GdkWindowHints}}{
Used to indicate which fields of a \code{\link{GdkGeometry}} struct should be paid attention
to. Also, the presence/absence of \code{GDK.HINT.POS}, \code{GDK.HINT.USER.POS}, and
\code{GDK.HINT.USER.SIZE} is significant, though they don't directly refer to
\code{\link{GdkGeometry}} fields.  \code{GDK.HINT.USER.POS} will be set automatically by \code{\link{GtkWindow}}
if you call \code{\link{gtkWindowMove}}. \code{GDK.HINT.USER.POS} and \code{GDK.HINT.USER.SIZE} 
should be set if the user specified a size/position using a --geometry 
command-line argument; \code{gtkWindowParseGeometry()} automatically sets these
flags.

\describe{
\item{\code{GDK_HINT_POS (pos)}}{indicates that the program has positioned the window}
\item{\code{GDK_HINT_MIN_SIZE (min-size)}}{min size fields are set}
\item{\code{GDK_HINT_MAX_SIZE (max-size)}}{max size fields are set}
\item{\code{GDK_HINT_BASE_SIZE (base-size)}}{base size fields are set}
\item{\code{GDK_HINT_ASPECT (aspect)}}{aspect ratio fields are set}
\item{\code{GDK_HINT_RESIZE_INC (resize-inc)}}{resize increment fields are set}
\item{\code{GDK_HINT_WIN_GRAVITY (win-gravity)}}{window gravity field is set}
\item{\code{GDK_HINT_USER_POS (user-pos)}}{indicates that the window's position was explicitly set by the user}
\item{\code{GDK_HINT_USER_SIZE (user-size)}}{indicates that the window's size was explicitly set by the user}
}

}
\item{\code{enum GdkGravity}}{
Defines the reference point of a window and the meaning of coordinates
passed to \code{\link{gtkWindowMove}}. See \code{\link{gtkWindowMove}} and the "implementation 
notes" section of the 
Extended 
Window Manager Hints (\url{http://www.freedesktop.org/Standards/wm-spec}) specification for more details.

\describe{
\item{\code{GDK_GRAVITY_NORTH_WEST (north-west)}}{the reference point is at the top left corner.}
\item{\code{GDK_GRAVITY_NORTH (north)}}{the reference point is in the middle of the top edge.}
\item{\code{GDK_GRAVITY_NORTH_EAST (north-east)}}{the reference point is at the top right corner.}
\item{\code{GDK_GRAVITY_WEST (west)}}{the reference point is at the middle of the left edge.}
\item{\code{GDK_GRAVITY_CENTER (center)}}{the reference point is at the center of the window.}
\item{\code{GDK_GRAVITY_EAST (east)}}{the reference point is at the middle of the right edge.}
\item{\code{GDK_GRAVITY_SOUTH_WEST (south-west)}}{the reference point is at the lower left corner.}
\item{\code{GDK_GRAVITY_SOUTH (south)}}{the reference point is at the middle of the lower edge.}
\item{\code{GDK_GRAVITY_SOUTH_EAST (south-east)}}{the reference point is at the lower right corner.}
\item{\code{GDK_GRAVITY_STATIC (static)}}{the reference point is at the top left corner of the 
   window itself, ignoring window manager decorations.}
}

}
\item{\code{enum GdkWindowEdge}}{
Determines a window edge or corner. 

\describe{
\item{\code{GDK_WINDOW_EDGE_NORTH_WEST (north-west)}}{the top left corner.}
\item{\code{GDK_WINDOW_EDGE_NORTH (north)}}{the top edge.}
\item{\code{GDK_WINDOW_EDGE_NORTH_EAST (north-east)}}{the top right corner.}
\item{\code{GDK_WINDOW_EDGE_WEST (west)}}{the left edge.}
\item{\code{GDK_WINDOW_EDGE_EAST (east)}}{the right edge.}
\item{\code{GDK_WINDOW_EDGE_SOUTH_WEST (south-west)}}{the lower left corner.}
\item{\code{GDK_WINDOW_EDGE_SOUTH (south)}}{the lower edge.}
\item{\code{GDK_WINDOW_EDGE_SOUTH_EAST (south-east)}}{the lower right corner.}
}

}
\item{\code{enum GdkWindowTypeHint}}{
These are hints for the window manager that indicate what type of function 
the window has. The window manager can use this when determining decoration 
and behaviour of the window. The hint must be set before mapping the window.
  
See the
Extended 
Window Manager Hints (\url{http://www.freedesktop.org/Standards/wm-spec}) specification for more details about 
window types.

\describe{
\item{\code{GDK_WINDOW_TYPE_HINT_NORMAL (normal)}}{Normal toplevel window.}
\item{\code{GDK_WINDOW_TYPE_HINT_DIALOG (dialog)}}{Dialog window.}
\item{\code{GDK_WINDOW_TYPE_HINT_MENU (menu)}}{Window used to implement a menu.}
\item{\code{GDK_WINDOW_TYPE_HINT_TOOLBAR (toolbar)}}{Window used to implement toolbars.}
\item{\code{GDK_WINDOW_TYPE_HINT_SPLASHSCREEN (splashscreen)}}{Window used to display a splash 
  screen during application startup.}
\item{\code{GDK_WINDOW_TYPE_HINT_UTILITY (utility)}}{Utility windows which are not detached 
  toolbars or dialogs.}
\item{\code{GDK_WINDOW_TYPE_HINT_DOCK (dock)}}{Used for creating dock or panel windows.}
\item{\code{GDK_WINDOW_TYPE_HINT_DESKTOP (desktop)}}{Used for creating the desktop background 
window.}
}

}
\item{\code{enum GdkWindowAttributesType}}{
Used to indicate which fields in the \code{\link{GdkWindowAttr}} struct should be
honored. For example, if you filled in the "cursor" and "x" fields of
\code{\link{GdkWindowAttr}}, pass "\code{GDK.WA.X} | \code{GDK.WA.CURSOR}" to \code{\link{gdkWindowNew}}.  Fields
in \code{\link{GdkWindowAttr}} not covered by a bit in this enum are required; for example,
the \code{width}/\code{height}, \code{wclass}, and \code{window.type} fields are required, they have no
corresponding flag in \code{\link{GdkWindowAttributesType}}.

\describe{
\item{\code{GDK_WA_TITLE (title)}}{Honor the title field}
\item{\code{GDK_WA_X (x)}}{Honor the X coordinate field}
\item{\code{GDK_WA_Y (y)}}{Honor the Y coordinate field}
\item{\code{GDK_WA_CURSOR (cursor)}}{Honor the cursor field}
\item{\code{GDK_WA_COLORMAP (colormap)}}{Honor the colormap field}
\item{\code{GDK_WA_VISUAL (visual)}}{Honor the visual field}
\item{\code{GDK_WA_WMCLASS (wmclass)}}{Honor the wmclass_class and wmclass_name fields}
\item{\code{GDK_WA_NOREDIR (noredir)}}{Honor the override_redirect field}
}

}
\item{\code{enum GdkFilterReturn}}{
Specifies the result of applying a \code{\link{GdkFilterFunc}} to a native event.

\describe{
\item{\code{GDK_FILTER_CONTINUE (continue)}}{event not handled, continue processing.}
\item{\code{GDK_FILTER_TRANSLATE (translate)}}{native event translated into a GDK event and stored
                       in the \code{event} structure that was passed in.}
\item{\code{GDK_FILTER_REMOVE (remove)}}{event handled, terminate processing.}
}

}
\item{\code{enum GdkModifierType}}{
A set of bit-flags to indicate the state of modifier keys and mouse buttons 
in various event types. Typical modifier keys are Shift, Control, Meta, Super,
Hyper, Alt, Compose, Apple, CapsLock or ShiftLock. 
  
Like the X Window System, GDK supports 8 modifier keys and 5 mouse buttons.

\describe{
\item{\code{GDK_SHIFT_MASK (shift-mask)}}{the Shift key.}
\item{\code{GDK_LOCK_MASK (lock-mask)}}{a Lock key (depending on the modifier mapping of the 
  X server this may either be CapsLock or ShiftLock).}
\item{\code{GDK_CONTROL_MASK (control-mask)}}{the Control key.}
\item{\code{GDK_MOD1_MASK (mod1-mask)}}{the fourth modifier key (it depends on the modifier 
  mapping of the X server which key is interpreted as this modifier, but 
  normally it is the Alt key).}
\item{\code{GDK_MOD2_MASK (mod2-mask)}}{the fifth modifier key (it depends on the modifier 
  mapping of the X server which key is interpreted as this modifier).}
\item{\code{GDK_MOD3_MASK (mod3-mask)}}{the sixth modifier key (it depends on the modifier 
  mapping of the X server which key is interpreted as this modifier).}
\item{\code{GDK_MOD4_MASK (mod4-mask)}}{the seventh modifier key (it depends on the modifier 
  mapping of the X server which key is interpreted as this modifier).}
\item{\code{GDK_MOD5_MASK (mod5-mask)}}{the eighth modifier key (it depends on the modifier 
  mapping of the X server which key is interpreted as this modifier).}
\item{\code{GDK_BUTTON1_MASK (button1-mask)}}{the first mouse button.}
\item{\code{GDK_BUTTON2_MASK (button2-mask)}}{the second mouse button.}
\item{\code{GDK_BUTTON3_MASK (button3-mask)}}{the third mouse button.}
\item{\code{GDK_BUTTON4_MASK (button4-mask)}}{the fourth mouse button.}
\item{\code{GDK_BUTTON5_MASK (button5-mask)}}{the fifth mouse button.}
\item{\code{GDK_RELEASE_MASK (release-mask)}}{not used in GDK itself. GTK+ uses it to differentiate 
  between (keyval, modifiers) pairs from key press and release events.}
\item{\code{GDK_MODIFIER_MASK (modifier-mask)}}{a mask covering all modifier types.}
}

}
\item{\code{enum GdkWMDecoration}}{
These are hints originally defined by the Motif toolkit.
The window manager can use them when determining how to decorate
the window. The hint must be set before mapping the window.

\describe{
\item{\code{GDK_DECOR_ALL (all)}}{all decorations should be applied.}
\item{\code{GDK_DECOR_BORDER (border)}}{a frame should be drawn around the window.}
\item{\code{GDK_DECOR_RESIZEH (resizeh)}}{the frame should have resize handles.}
\item{\code{GDK_DECOR_TITLE (title)}}{a titlebar should be placed above the window.}
\item{\code{GDK_DECOR_MENU (menu)}}{a button for opening a menu should be included.}
\item{\code{GDK_DECOR_MINIMIZE (minimize)}}{a minimize button should be included.}
\item{\code{GDK_DECOR_MAXIMIZE (maximize)}}{a maximize button should be included.}
}

}
\item{\code{enum GdkWMFunction}}{
These are hints originally defined by the Motif toolkit.
The window manager can use them when determining the functions 
to offer for the window. 
The hint must be set before mapping the window.

\describe{
\item{\code{GDK_FUNC_ALL (all)}}{all functions should be offered.}
\item{\code{GDK_FUNC_RESIZE (resize)}}{the window should be resizable.}
\item{\code{GDK_FUNC_MOVE (move)}}{the window should be movable.}
\item{\code{GDK_FUNC_MINIMIZE (minimize)}}{the window should be minimizable.}
\item{\code{GDK_FUNC_MAXIMIZE (maximize)}}{the window should be maximizable.}
\item{\code{GDK_FUNC_CLOSE (close)}}{the window should be closable.}
}

}
}}
\section{User Functions}{\describe{\item{\code{GdkFilterFunc(xevent, event, data)}}{
Specifies the type of function used to filter native events before they are
converted to GDK events. 
  
When a filter is called, \code{event} is unpopulated, except for
\code{event->window}. The filter may translate the native
event to a GDK event and store the result in \code{event}, or handle it without
translation. If the filter translates the event and processing should
continue, it should return \code{GDK_FILTER_TRANSLATE}.

\describe{
\item{\code{xevent}}{[GdkXEvent] the native event to filter.}
\item{\code{event}}{[\code{\link{GdkEvent}}] the GDK event to which the X event will be translated.}
\item{\code{data}}{[R object] user data set when the filter was installed.}
}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gdk/gdk-Windows.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
