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
\section{Methods and Functions}{
\code{\link{gdkWindowNew}(parent = NULL, attributes)}\cr
\code{\link{gdkWindowDestroy}(object)}\cr
\code{\link{gdkWindowGetWindowType}(object)}\cr
\code{\link{gdkWindowAtPointer}()}\cr
\code{\link{gdkWindowShow}(object)}\cr
\code{\link{gdkWindowShowUnraised}(object)}\cr
\code{\link{gdkWindowHide}(object)}\cr
\code{\link{gdkWindowIsVisible}(object)}\cr
\code{\link{gdkWindowIsViewable}(object)}\cr
\code{\link{gdkWindowGetState}(object)}\cr
\code{\link{gdkWindowWithdraw}(object)}\cr
\code{\link{gdkWindowIconify}(object)}\cr
\code{\link{gdkWindowDeiconify}(object)}\cr
\code{\link{gdkWindowStick}(object)}\cr
\code{\link{gdkWindowUnstick}(object)}\cr
\code{\link{gdkWindowMaximize}(object)}\cr
\code{\link{gdkWindowUnmaximize}(object)}\cr
\code{\link{gdkWindowFullscreen}(object)}\cr
\code{\link{gdkWindowUnfullscreen}(object)}\cr
\code{\link{gdkWindowSetKeepAbove}(object, setting)}\cr
\code{\link{gdkWindowSetKeepBelow}(object, setting)}\cr
\code{\link{gdkWindowMove}(object, x, y)}\cr
\code{\link{gdkWindowResize}(object, width, height)}\cr
\code{\link{gdkWindowMoveResize}(object, x, y, width, height)}\cr
\code{\link{gdkWindowScroll}(object, dx, dy)}\cr
\code{\link{gdkWindowMoveRegion}(object, region, x, y)}\cr
\code{\link{gdkWindowReparent}(object, new.parent, x, y)}\cr
\code{\link{gdkWindowClear}(object)}\cr
\code{\link{gdkWindowClearArea}(object, x, y, width, height)}\cr
\code{\link{gdkWindowClearAreaE}(object, x, y, width, height)}\cr
\code{\link{gdkWindowRaise}(object)}\cr
\code{\link{gdkWindowLower}(object)}\cr
\code{\link{gdkWindowFocus}(object, timestamp = "GDK_CURRENT_TIME")}\cr
\code{\link{gdkWindowRegisterDnd}(object)}\cr
\code{\link{gdkWindowBeginResizeDrag}(object, edge, button, root.x, root.y, timestamp)}\cr
\code{\link{gdkWindowBeginMoveDrag}(object, button, root.x, root.y, timestamp)}\cr
\code{\link{gdkWindowConstrainSize}(geometry, width, height)}\cr
\code{\link{gdkWindowBeginPaintRect}(object, rectangle)}\cr
\code{\link{gdkWindowBeginPaintRegion}(object, region)}\cr
\code{\link{gdkWindowEndPaint}(object)}\cr
\code{\link{gdkWindowInvalidateRect}(object, rect = NULL, invalidate.children)}\cr
\code{\link{gdkWindowInvalidateRegion}(object, region, invalidate.children)}\cr
\code{\link{gdkWindowInvalidateMaybeRecurse}(object, region, child.func, user.data)}\cr
\code{\link{gdkWindowGetUpdateArea}(object)}\cr
\code{\link{gdkWindowFreezeUpdates}(object)}\cr
\code{\link{gdkWindowThawUpdates}(object)}\cr
\code{\link{gdkWindowProcessAllUpdates}()}\cr
\code{\link{gdkWindowProcessUpdates}(object, update.children)}\cr
\code{\link{gdkWindowSetDebugUpdates}(setting)}\cr
\code{\link{gdkWindowGetInternalPaintInfo}(object)}\cr
\code{\link{gdkWindowEnableSynchronizedConfigure}(object)}\cr
\code{\link{gdkWindowConfigureFinished}(object)}\cr
\code{\link{gdkWindowSetUserData}(object, user.data)}\cr
\code{\link{gdkWindowSetOverrideRedirect}(object, override.redirect)}\cr
\code{\link{gdkWindowSetAcceptFocus}(object, accept.focus)}\cr
\code{\link{gdkWindowSetFocusOnMap}(object, focus.on.map)}\cr
\code{\link{gdkWindowAddFilter}(object, fun, data)}\cr
\code{\link{gdkWindowRemoveFilter}(object, fun, data)}\cr
\code{\link{gdkWindowShapeCombineMask}(object, shape.mask = NULL, offset.x, offset.y)}\cr
\code{\link{gdkWindowShapeCombineRegion}(object, shape.region = NULL, offset.x, offset.y)}\cr
\code{\link{gdkWindowSetChildShapes}(object)}\cr
\code{\link{gdkWindowMergeChildShapes}(object)}\cr
\code{\link{gdkWindowSetStaticGravities}(object, use.static)}\cr
\code{\link{gdkWindowSetHints}(object, x, y, min.width, min.height, max.width, max.height, flags)}\cr
\code{\link{gdkWindowSetTitle}(object, title)}\cr
\code{\link{gdkWindowSetBackground}(object, color)}\cr
\code{\link{gdkWindowSetBackPixmap}(object, pixmap = NULL, parent.relative)}\cr
\code{\link{gdkWindowSetCursor}(object, cursor = NULL)}\cr
\code{\link{gdkWindowGetUserData}(object)}\cr
\code{\link{gdkWindowGetGeometry}(object)}\cr
\code{\link{gdkWindowSetGeometryHints}(object, geometry)}\cr
\code{\link{gdkWindowSetIconList}(object, pixbufs)}\cr
\code{\link{gdkWindowSetModalHint}(object, modal)}\cr
\code{\link{gdkWindowSetTypeHint}(object, hint)}\cr
\code{\link{gdkWindowSetSkipTaskbarHint}(object, modal)}\cr
\code{\link{gdkWindowSetSkipPagerHint}(object, modal)}\cr
\code{\link{gdkWindowSetUrgencyHint}(object, urgent)}\cr
\code{\link{gdkWindowGetPosition}(object)}\cr
\code{\link{gdkWindowGetRootOrigin}(object)}\cr
\code{\link{gdkWindowGetFrameExtents}(object)}\cr
\code{\link{gdkWindowGetOrigin}(object)}\cr
\code{\link{gdkWindowGetDeskrelativeOrigin}(object)}\cr
\code{\link{gdkWindowGetPointer}(object)}\cr
\code{\link{gdkWindowGetParent}(object)}\cr
\code{\link{gdkWindowGetToplevel}(object)}\cr
\code{\link{gdkWindowGetChildren}(object)}\cr
\code{\link{gdkWindowPeekChildren}(object)}\cr
\code{\link{gdkWindowGetEvents}(object)}\cr
\code{\link{gdkWindowSetEvents}(object, event.mask)}\cr
\code{\link{gdkWindowSetIcon}(object, icon.window, pixmap, mask)}\cr
\code{\link{gdkWindowSetIconName}(object, name)}\cr
\code{\link{gdkWindowSetTransientFor}(object, leader)}\cr
\code{\link{gdkWindowSetRole}(object, role)}\cr
\code{\link{gdkWindowSetGroup}(object, leader)}\cr
\code{\link{gdkWindowGetGroup}(object)}\cr
\code{\link{gdkWindowSetDecorations}(object, decorations)}\cr
\code{\link{gdkWindowGetDecorations}(object)}\cr
\code{\link{gdkWindowSetFunctions}(object, functions)}\cr
\code{\link{gdkWindowGetToplevels}()}\cr
\code{\link{gdkGetDefaultRootWindow}()}\cr
\code{\link{gdkSetPointerHooks}(object, new.hooks)}\cr
\code{gdkWindow(parent = NULL, attributes)}
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GdkDrawable}
         +----GdkWindow}}
\section{Detailed Description}{A \code{\link{GdkWindow}} is a rectangular region on the screen. It's a low-level object,
used to implement high-level objects such as \code{\link{GtkWidget}} and \code{\link{GtkWindow}} on the
GTK+ level. A \code{\link{GtkWindow}} is a toplevel window, the thing a user might think of 
as a "window" with a titlebar and so on; a \code{\link{GtkWindow}} may contain many \code{\link{GdkWindow}}. 
For example, each \code{\link{GtkButton}} has a \code{\link{GdkWindow}} associated with it.}
\section{Structures}{\describe{
\item{\code{GdkWindow}}{
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
\item{\code{GdkFilterReturn}}{
Specifies the result of applying a \code{\link{GdkFilterFunc}} to a native event.



}
}}
\section{Convenient Construction}{\code{gdkWindow} is the equivalent of \code{\link{gdkWindowNew}}.}
\section{Enums and Flags}{\describe{
\item{\code{GdkWindowType}}{
Describes the kind of window.

\describe{
\item{\code{root}}{root window; this window has no parent, covers the entire screen, and is created by the window system}
\item{\code{toplevel}}{toplevel window (used to implement \code{\link{GtkWindow}})}
\item{\code{child}}{child window (used to implement e.g. \code{\link{GtkButton}})}
\item{\code{dialog}}{useless/deprecated compatibility type}
\item{\code{temp}}{override redirect temporary window (used to implement \code{\link{GtkMenu}})}
\item{\code{foreign}}{foreign window (see \code{gdk\Window\Foreign\New()})}
}

}
\item{\code{GdkWindowClass}}{
\code{GDK.INPUT.OUTPUT} windows are the standard kind of window you might expect. 
\code{GDK.INPUT.ONLY} windows are invisible; they are used to trap events, but 
you can't draw on them.

\describe{
\item{\code{output}}{window for graphics and events}
\item{\code{only}}{window for events only}
}

}
\item{\code{GdkWindowHints}}{
Used to indicate which fields of a \code{\link{GdkGeometry}} struct should be paid attention
to. Also, the presence/absence of \code{GDK.HINT.POS}, \code{GDK.HINT.USER.POS}, and
\code{GDK.HINT.USER.SIZE} is significant, though they don't directly refer to
\code{\link{GdkGeometry}} fields.  \code{GDK.HINT.USER.POS} will be set automatically by \code{\link{GtkWindow}}
if you call \code{\link{gtkWindowMove}}. \code{GDK.HINT.USER.POS} and \code{GDK.HINT.USER.SIZE} 
should be set if the user specified a size/position using a --geometry 
command-line argument; \code{gtk\Window\Parse\Geometry()} automatically sets these
flags.

\describe{
\item{\code{pos}}{indicates that the program has positioned the window}
\item{\code{min-size}}{min size fields are set}
\item{\code{max-size}}{max size fields are set}
\item{\code{base-size}}{base size fields are set}
\item{\code{aspect}}{aspect ratio fields are set}
\item{\code{resize-inc}}{resize increment fields are set}
\item{\code{win-gravity}}{window gravity field is set}
\item{\code{user-pos}}{indicates that the window's position was explicitly set by the user}
\item{\code{user-size}}{indicates that the window's size was explicitly set by the user}
}

}
\item{\code{GdkGravity}}{
Defines the reference point of a window and the meaning of coordinates
passed to \code{\link{gtkWindowMove}}. See \code{\link{gtkWindowMove}} and the "implementation 
notes" section of the 
Extended 
Window Manager Hints (\url{http://www.freedesktop.org/Standards/wm-spec}) specification for more details.

\describe{
\item{\code{north-west}}{the reference point is at the top left corner.}
\item{\code{north}}{the reference point is in the middle of the top edge.}
\item{\code{north-east}}{the reference point is at the top right corner.}
\item{\code{west}}{the reference point is at the middle of the left edge.}
\item{\code{center}}{the reference point is at the center of the window.}
\item{\code{east}}{the reference point is at the middle of the right edge.}
\item{\code{south-west}}{the reference point is at the lower left corner.}
\item{\code{south}}{the reference point is at the middle of the lower edge.}
\item{\code{south-east}}{the reference point is at the lower right corner.}
\item{\code{static}}{the reference point is at the top left corner of the 
   window itself, ignoring window manager decorations.}
}

}
\item{\code{GdkWindowEdge}}{
Determines a window edge or corner. 

\describe{
\item{\code{north-west}}{the top left corner.}
\item{\code{north}}{the top edge.}
\item{\code{north-east}}{the top right corner.}
\item{\code{west}}{the left edge.}
\item{\code{east}}{the right edge.}
\item{\code{south-west}}{the lower left corner.}
\item{\code{south}}{the lower edge.}
\item{\code{south-east}}{the lower right corner.}
}

}
\item{\code{GdkWindowTypeHint}}{
These are hints for the window manager that indicate what type of function 
the window has. The window manager can use this when determining decoration 
and behaviour of the window. The hint must be set before mapping the window.
  
See the
Extended 
Window Manager Hints (\url{http://www.freedesktop.org/Standards/wm-spec}) specification for more details about 
window types.

\describe{
\item{\code{normal}}{Normal toplevel window.}
\item{\code{dialog}}{Dialog window.}
\item{\code{menu}}{Window used to implement a menu.}
\item{\code{toolbar}}{Window used to implement toolbars.}
\item{\code{splashscreen}}{Window used to display a splash 
  screen during application startup.}
\item{\code{utility}}{Utility windows which are not detached 
  toolbars or dialogs.}
\item{\code{dock}}{Used for creating dock or panel windows.}
\item{\code{desktop}}{Used for creating the desktop background 
window.}
}

}
\item{\code{GdkWindowAttributesType}}{
Used to indicate which fields in the \code{\link{GdkWindowAttr}} struct should be
honored. For example, if you filled in the "cursor" and "x" fields of
\code{\link{GdkWindowAttr}}, pass "\code{GDK.WA.X} | \code{GDK.WA.CURSOR}" to \code{\link{gdkWindowNew}}.  Fields
in \code{\link{GdkWindowAttr}} not covered by a bit in this enum are required; for example,
the \code{width}/\code{height}, \code{wclass}, and \code{window.type} fields are required, they have no
corresponding flag in \code{\link{GdkWindowAttributesType}}.

\describe{
\item{\code{title}}{Honor the title field}
\item{\code{x}}{Honor the X coordinate field}
\item{\code{y}}{Honor the Y coordinate field}
\item{\code{cursor}}{Honor the cursor field}
\item{\code{colormap}}{Honor the colormap field}
\item{\code{visual}}{Honor the visual field}
\item{\code{wmclass}}{Honor the wmclass\_class and wmclass\_name fields}
\item{\code{noredir}}{Honor the override\_redirect field}
}

}
\item{\code{GdkFilterReturn}}{
Specifies the result of applying a \code{\link{GdkFilterFunc}} to a native event.

\describe{
\item{\code{continue}}{event not handled, continue processing.}
\item{\code{translate}}{native event translated into a GDK event and stored
                       in the \code{event} structure that was passed in.}
\item{\code{remove}}{event handled, terminate processing.}
}

}
\item{\code{GdkModifierType}}{
A set of bit-flags to indicate the state of modifier keys and mouse buttons 
in various event types. Typical modifier keys are Shift, Control, Meta, Super,
Hyper, Alt, Compose, Apple, CapsLock or ShiftLock. 
  
Like the X Window System, GDK supports 8 modifier keys and 5 mouse buttons.

\describe{
\item{\code{shift-mask}}{the Shift key.}
\item{\code{lock-mask}}{a Lock key (depending on the modifier mapping of the 
  X server this may either be CapsLock or ShiftLock).}
\item{\code{control-mask}}{the Control key.}
\item{\code{mod1-mask}}{the fourth modifier key (it depends on the modifier 
  mapping of the X server which key is interpreted as this modifier, but 
  normally it is the Alt key).}
\item{\code{mod2-mask}}{the fifth modifier key (it depends on the modifier 
  mapping of the X server which key is interpreted as this modifier).}
\item{\code{mod3-mask}}{the sixth modifier key (it depends on the modifier 
  mapping of the X server which key is interpreted as this modifier).}
\item{\code{mod4-mask}}{the seventh modifier key (it depends on the modifier 
  mapping of the X server which key is interpreted as this modifier).}
\item{\code{mod5-mask}}{the eighth modifier key (it depends on the modifier 
  mapping of the X server which key is interpreted as this modifier).}
\item{\code{button1-mask}}{the first mouse button.}
\item{\code{button2-mask}}{the second mouse button.}
\item{\code{button3-mask}}{the third mouse button.}
\item{\code{button4-mask}}{the fourth mouse button.}
\item{\code{button5-mask}}{the fifth mouse button.}
\item{\code{release-mask}}{not used in GDK itself. GTK+ uses it to differentiate 
  between (keyval, modifiers) pairs from key press and release events.}
\item{\code{modifier-mask}}{a mask covering all modifier types.}
}

}
\item{\code{GdkWMDecoration}}{
These are hints originally defined by the Motif toolkit.
The window manager can use them when determining how to decorate
the window. The hint must be set before mapping the window.

\describe{
\item{\code{all}}{all decorations should be applied.}
\item{\code{border}}{a frame should be drawn around the window.}
\item{\code{resizeh}}{the frame should have resize handles.}
\item{\code{title}}{a titlebar should be placed above the window.}
\item{\code{menu}}{a button for opening a menu should be included.}
\item{\code{minimize}}{a minimize button should be included.}
\item{\code{maximize}}{a maximize button should be included.}
}

}
\item{\code{GdkWMFunction}}{
These are hints originally defined by the Motif toolkit.
The window manager can use them when determining the functions 
to offer for the window. 
The hint must be set before mapping the window.

\describe{
\item{\code{all}}{all functions should be offered.}
\item{\code{resize}}{the window should be resizable.}
\item{\code{move}}{the window should be movable.}
\item{\code{minimize}}{the window should be minimizable.}
\item{\code{maximize}}{the window should be maximizable.}
\item{\code{close}}{the window should be closable.}
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
