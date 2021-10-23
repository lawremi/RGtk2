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
\code{\link{gdkWindowIsDestroyed}(object)}\cr
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
\code{\link{gdkWindowSetOpacity}(object, opacity)}\cr
\code{\link{gdkWindowSetComposited}(object, composited)}\cr
\code{\link{gdkWindowMove}(object, x, y)}\cr
\code{\link{gdkWindowResize}(object, width, height)}\cr
\code{\link{gdkWindowMoveResize}(object, x, y, width, height)}\cr
\code{\link{gdkWindowScroll}(object, dx, dy)}\cr
\code{\link{gdkWindowMoveRegion}(object, region, x, y)}\cr
\code{\link{gdkWindowFlush}(object)}\cr
\code{\link{gdkWindowEnsureNative}(object)}\cr
\code{\link{gdkWindowReparent}(object, new.parent, x, y)}\cr
\code{\link{gdkWindowClear}(object)}\cr
\code{\link{gdkWindowClearArea}(object, x, y, width, height)}\cr
\code{\link{gdkWindowClearAreaE}(object, x, y, width, height)}\cr
\code{\link{gdkWindowRaise}(object)}\cr
\code{\link{gdkWindowLower}(object)}\cr
\code{\link{gdkWindowRestack}(object, sibling, above)}\cr
\code{\link{gdkWindowFocus}(object, timestamp = "GDK_CURRENT_TIME")}\cr
\code{\link{gdkWindowRegisterDnd}(object)}\cr
\code{\link{gdkWindowBeginResizeDrag}(object, edge, button, root.x, root.y, timestamp)}\cr
\code{\link{gdkWindowBeginMoveDrag}(object, button, root.x, root.y, timestamp)}\cr
\code{\link{gdkWindowConstrainSize}(geometry, width, height)}\cr
\code{\link{gdkWindowBeep}(object)}\cr
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
\code{\link{gdkWindowSetUserData}(object, user.data = NULL)}\cr
\code{\link{gdkWindowSetOverrideRedirect}(object, override.redirect)}\cr
\code{\link{gdkWindowSetAcceptFocus}(object, accept.focus)}\cr
\code{\link{gdkWindowSetFocusOnMap}(object, focus.on.map)}\cr
\code{\link{gdkWindowAddFilter}(object, fun, data)}\cr
\code{\link{gdkWindowRemoveFilter}(object, fun, data)}\cr
\code{\link{gdkWindowShapeCombineMask}(object, shape.mask = NULL, offset.x, offset.y)}\cr
\code{\link{gdkWindowShapeCombineRegion}(object, shape.region = NULL, offset.x, offset.y)}\cr
\code{\link{gdkWindowSetChildShapes}(object)}\cr
\code{\link{gdkWindowMergeChildShapes}(object)}\cr
\code{\link{gdkWindowInputShapeCombineMask}(object, mask, x, y)}\cr
\code{\link{gdkWindowInputShapeCombineRegion}(object, shape.region, offset.x, offset.y)}\cr
\code{\link{gdkWindowSetChildInputShapes}(object)}\cr
\code{\link{gdkWindowMergeChildInputShapes}(object)}\cr
\code{\link{gdkWindowSetStaticGravities}(object, use.static)}\cr
\code{\link{gdkWindowSetHints}(object, x, y, min.width, min.height, max.width, max.height, flags)}\cr
\code{\link{gdkWindowSetTitle}(object, title)}\cr
\code{\link{gdkWindowSetBackground}(object, color)}\cr
\code{\link{gdkWindowSetBackPixmap}(object, pixmap = NULL, parent.relative)}\cr
\code{\link{gdkWindowSetCursor}(object, cursor = NULL)}\cr
\code{\link{gdkWindowGetCursor}(object)}\cr
\code{\link{gdkWindowGetUserData}(object)}\cr
\code{\link{gdkWindowGetGeometry}(object)}\cr
\code{\link{gdkWindowSetGeometryHints}(object, geometry)}\cr
\code{\link{gdkWindowSetIconList}(object, pixbufs)}\cr
\code{\link{gdkWindowSetModalHint}(object, modal)}\cr
\code{\link{gdkWindowSetTypeHint}(object, hint)}\cr
\code{\link{gdkWindowGetTypeHint}(object)}\cr
\code{\link{gdkWindowSetSkipTaskbarHint}(object, modal)}\cr
\code{\link{gdkWindowSetSkipPagerHint}(object, modal)}\cr
\code{\link{gdkWindowSetUrgencyHint}(object, urgent)}\cr
\code{\link{gdkWindowGetPosition}(object)}\cr
\code{\link{gdkWindowGetRootOrigin}(object)}\cr
\code{\link{gdkWindowGetFrameExtents}(object)}\cr
\code{\link{gdkWindowGetOrigin}(object)}\cr
\code{\link{gdkWindowGetDeskrelativeOrigin}(object)}\cr
\code{\link{gdkWindowGetRootCoords}(object, x, y)}\cr
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
\code{\link{gdkWindowSetStartupId}(object, startup.id)}\cr
\code{\link{gdkWindowSetGroup}(object, leader)}\cr
\code{\link{gdkWindowGetGroup}(object)}\cr
\code{\link{gdkWindowSetDecorations}(object, decorations)}\cr
\code{\link{gdkWindowGetDecorations}(object)}\cr
\code{\link{gdkWindowSetFunctions}(object, functions)}\cr
\code{\link{gdkWindowGetToplevels}()}\cr
\code{\link{gdkGetDefaultRootWindow}()}\cr
\code{\link{gdkSetPointerHooks}(object, new.hooks)}\cr
\code{\link{gdkOffscreenWindowGetPixmap}(window)}\cr
\code{\link{gdkOffscreenWindowSetEmbedder}(window, embedder)}\cr
\code{\link{gdkOffscreenWindowGetEmbedder}(window)}\cr
\code{\link{gdkWindowGeometryChanged}(object)}\cr
\code{\link{gdkWindowRedirectToDrawable}(object, drawable, src.x, src.y, dest.x, dest.y, width, height)}\cr
\code{\link{gdkWindowRemoveRedirection}(object)}\cr
\code{gdkWindow(parent = NULL, attributes)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GdkDrawable
         +----GdkWindow}}
\section{Detailed Description}{A \code{\link{GdkWindow}} is a rectangular region on the screen. It's a low-level object,
used to implement high-level objects such as \code{\link{GtkWidget}} and \code{\link{GtkWindow}} on the
GTK+ level. A \code{\link{GtkWindow}} is a toplevel window, the thing a user might think of
as a "window" with a titlebar and so on; a \code{\link{GtkWindow}} may contain many \code{\link{GdkWindow}}.
For example, each \code{\link{GtkButton}} has a \code{\link{GdkWindow}} associated with it.}
\section{Composited Windows}{Normally, the windowing system takes care of rendering the contents of a child
window onto its parent window. This mechanism can be intercepted by calling
\code{\link{gdkWindowSetComposited}} on the child window. For a
\dfn{composited} window it is the responsibility of the
application to render the window contents at the right spot.
  
 \emph{Composited windows}
\preformatted{
# The expose event handler for the event box.
# 
# This function simply draws a transparency onto a widget on the area
# for which it receives expose events.  This is intended to give the
# event box a "transparent" background.
# 
# In order for this to work properly, the widget must have an RGBA
# colormap.  The widget should also be set as app-paintable since it
# doesn't make sense for GTK+ to draw a background if we are drawing it
# (and because GTK+ might actually replace our transparency with its
# default background color).
# 
transparent_expose <- function(widget, event)
{
  cr <- gdkCairoCreate(widget$window)
  cr$setOperator("clear")
  gdkCairoRegion(cr, event$region)
  cr$fill()

  return(FALSE)
}

# The expose event handler for the window.
# 
# This function performs the actual compositing of the event box onto
# the already-existing background of the window at 50\% normal opacity.
# 
# In this case we do not want app-paintable to be set on the widget
# since we want it to draw its own (red) background. Because of this,
# however, we must ensure that we set after = TRUE when connecting to the signal
# so that this handler is called after the red has been drawn. If it was
# called before then GTK would just blindly paint over our work.
# 
# Note: if the child window has children, then you need a cairo 1.16
# feature to make this work correctly.
# 

window_expose_event <- function(widget, event)
{
  # get our child (in this case, the event box) 
  child <- widget$getChild()

  # create a cairo context to draw to the window 
  cr <- gdkCairoCreate(widget$window)

  # the source data is the (composited) event box
  gdkCairoSetSourcePixmap(cr, child$window, child$allocation$x, 
                          child$allocation$y)

  # draw no more than our expose event intersects our child
  region <- gdkRegionRectangle(child$allocation)
  region$intersect(event$region)
  gdkCairoRegion(cr, region)
  cr$clip()

  # composite, with a 50\% opacity
  cr$setOperator("over")
  cr$paintWithAlpha(0.5)

  return(FALSE)
}

# Make the widgets
button <- gtkButton("A Button")
event <- gtkEventBox()
window <- gtkWindow()

# Put a red background on the window
red <- gdkColorParse("red")$color
window$modifyBg("normal", red)

# Set the colormap for the event box.
# Must be done before the event box is realized.
#
screen <- event$getScreen()
rgba <- screen$getRgbaColormap()
event$setColormap(rgba)

# Set our event box to have a fully-transparent background
# drawn on it. Currently there is no way to simply tell GTK+
# that "transparency" is the background color for a widget.
#
event$setAppPaintable(TRUE)
gSignalConnect(event, "expose-event", transparent_expose)

# Put them inside one another
window$setBorderWidth(10)
window$add(event)
event$add(button)

# Set the event box GdkWindow to be composited.
# Obviously must be performed after event box is realized.
#
event$window$setComposited(TRUE)

# Set up the compositing handler.
# Note that we do _after_ so that the normal (red) background is drawn
# by gtk before our compositing occurs.
#
gSignalConnect(window, "expose-event", window_expose_event, after = TRUE)
}  
In the example , a button is
placed inside of an event box inside of a window. The event box is
set as composited and therefore is no longer automatically drawn to
the screen.
  
When the contents of the event box change, an expose event is
generated on its parent window (which, in this case, belongs to
the toplevel \code{\link{GtkWindow}}). The expose handler for this widget is
responsible for merging the changes back on the screen in the way
that it wishes.
  
In our case, we merge the contents with a 50\% transparency. We
also set the background colour of the window to red. The effect is
that the background shows through the button.}
\section{Offscreen Windows}{Offscreen windows are more general than composited windows, since they
allow not only to modify the rendering of the child window onto its parent,
but also to apply coordinate transformations.
  
To integrate an offscreen window into a window hierarchy, one has to call
\code{gdkWindowSetEmbedder()} and handle a number of signals. The
\code{\link{gdkOffscreenWindowSetEmbedder}} and handle a number of signals. The
\verb{"pick-embedded-child"} signal on the embedder window is used to
select an offscreen child at given coordinates, and the \verb{"to-embedder"}
and \verb{"from-embedder"} signals on the offscreen window are used to
translate coordinates between the embedder and the offscreen window.
  
For rendering an offscreen window onto its embedder, the contents of the
offscreen window are available as a pixmap, via
\code{\link{gdkOffscreenWindowGetPixmap}}.}
\section{Structures}{\describe{
\item{\verb{GdkWindow}}{
An opaque structure representing an onscreen drawable.
Pointers to structures of type \code{\link{GdkPixmap}}, \code{\link{GdkBitmap}},
and \code{\link{GdkWindow}}, can often be used interchangeably.
The type \code{\link{GdkDrawable}} refers generically to any of
these types.

}
\item{\verb{GdkGeometry}}{
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
fields <- c("base.width", "base.height", "min.width", "min.height", "width.inc",
            "height.inc")
hints[fields] <- char_width
toplevel$setGeometryHints(terminal, hints)
}
  
The other useful fields are the \code{min.aspect} and \code{max.aspect} fields; these
contain a width/height ratio as a floating point number. If a geometry widget is
set, the aspect applies to the geometry widget rather than the entire window.
The most common use of these hints is probably to set \code{min.aspect} and
\code{max.aspect} to the same value, thus forcing the window to keep a constant aspect
ratio.
\strong{\verb{GdkGeometry} is a \link{transparent-type}.}

\describe{
\item{\code{min_width}}{minimum width of window (or -1 to use requisition, with \code{\link{GtkWindow}} only)}
\item{\code{min_height}}{minimum height of window (or -1 to use requisition, with \code{\link{GtkWindow}} only)}
\item{\code{max_width}}{maximum width of window (or -1 to use requisition, with \code{\link{GtkWindow}} only)}
\item{\code{max_height}}{maximum height of window (or -1 to use requisition, with \code{\link{GtkWindow}} only)}
\item{\code{base_width}}{allowed window widths are \code{base.width} + \code{width.inc} * N where N is any integer (-1 allowed with \code{\link{GtkWindow}})}
\item{\code{base_height}}{allowed window widths are \code{base.height} + \code{height.inc} * N where N is any integer (-1 allowed with \code{\link{GtkWindow}})}
\item{\code{width_inc}}{width resize increment}
\item{\code{height_inc}}{height resize increment}
\item{\code{min_aspect}}{minimum width/height ratio}
\item{\code{max_aspect}}{maximum width/height ratio}
\item{\code{win_gravity}}{window gravity, see \code{\link{gtkWindowSetGravity}}}
}

}
\item{\verb{GdkWindowAttr}}{
Attributes to use for a newly-created window.
\strong{\verb{GdkWindowAttr} is a \link{transparent-type}.}

\describe{
\item{\code{title}}{title of the window (for toplevel windows)}
\item{\code{event_mask}}{event mask (see \code{\link{gdkWindowSetEvents}})}
\item{\code{x}}{X coordinate relative to parent window (see \code{\link{gdkWindowMove}})}
\item{\code{y}}{Y coordinate relative to parent window (see \code{\link{gdkWindowMove}})}
\item{\code{width}}{width of window}
\item{\code{height}}{height of window}
\item{\code{wclass}}{\verb{GDK_INPUT_OUTPUT} (normal window) or \verb{GDK_INPUT_ONLY} (invisible window that receives events)}
\item{\code{visual}}{\code{\link{GdkVisual}} for window}
\item{\code{colormap}}{\code{\link{GdkColormap}} for window}
\item{\code{window_type}}{type of window}
\item{\code{cursor}}{cursor for the window (see \code{\link{gdkWindowSetCursor}})}
\item{\code{wmclass_name}}{don't use (see \code{\link{gtkWindowSetWmclass}})}
\item{\code{wmclass_class}}{don't use (see \code{\link{gtkWindowSetWmclass}})}
\item{\code{override_redirect}}{\code{TRUE} to bypass the window manager}
\item{\code{type_hint}}{a hint of the function of the window}
}

}
\item{\verb{GdkFilterReturn}}{
Specifies the result of applying a \code{\link{GdkFilterFunc}} to a native event.



}
}}
\section{Convenient Construction}{\code{gdkWindow} is the equivalent of \code{\link{gdkWindowNew}}.}
\section{Enums and Flags}{\describe{
\item{\verb{GdkWindowType}}{
Describes the kind of window.

\describe{
\item{\verb{root}}{root window; this window has no parent, covers the entire screen, and is created by the window system}
\item{\verb{toplevel}}{toplevel window (used to implement \code{\link{GtkWindow}})}
\item{\verb{child}}{child window (used to implement e.g. \code{\link{GtkEntry}})}
\item{\verb{dialog}}{useless/deprecated compatibility type}
\item{\verb{temp}}{override redirect temporary window (used to implement \code{\link{GtkMenu}})}
\item{\verb{foreign}}{foreign window (see \code{gdkWindowForeignNew()})}
}

}
\item{\verb{GdkWindowClass}}{
\code{GDK.INPUT.OUTPUT} windows are the standard kind of window you might expect.
\code{GDK.INPUT.ONLY} windows are invisible; they are used to trap events, but
you can't draw on them.

\describe{
\item{\verb{output}}{window for graphics and events}
\item{\verb{only}}{window for events only}
}

}
\item{\verb{GdkWindowHints}}{
Used to indicate which fields of a \code{\link{GdkGeometry}} struct should be paid attention
to. Also, the presence/absence of \code{GDK.HINT.POS}, \code{GDK.HINT.USER.POS}, and
\code{GDK.HINT.USER.SIZE} is significant, though they don't directly refer to
\code{\link{GdkGeometry}} fields.  \code{GDK.HINT.USER.POS} will be set automatically by \code{\link{GtkWindow}}
if you call \code{\link{gtkWindowMove}}. \code{GDK.HINT.USER.POS} and \code{GDK.HINT.USER.SIZE}
should be set if the user specified a size/position using a --geometry
command-line argument; \code{gtkWindowParseGeometry()} automatically sets these
flags.

\describe{
\item{\verb{pos}}{indicates that the program has positioned the window}
\item{\verb{min-size}}{min size fields are set}
\item{\verb{max-size}}{max size fields are set}
\item{\verb{base-size}}{base size fields are set}
\item{\verb{aspect}}{aspect ratio fields are set}
\item{\verb{resize-inc}}{resize increment fields are set}
\item{\verb{win-gravity}}{window gravity field is set}
\item{\verb{user-pos}}{indicates that the window's position was explicitly set by the user}
\item{\verb{user-size}}{indicates that the window's size was explicitly set by the user}
}

}
\item{\verb{GdkGravity}}{
Defines the reference point of a window and the meaning of coordinates
passed to \code{\link{gtkWindowMove}}. See \code{\link{gtkWindowMove}} and the "implementation
notes" section of the
Extended
Window Manager Hints (\url{http://www.freedesktop.org/Standards/wm-spec}) specification for more details.

\describe{
\item{\verb{north-west}}{the reference point is at the top left corner.}
\item{\verb{north}}{the reference point is in the middle of the top edge.}
\item{\verb{north-east}}{the reference point is at the top right corner.}
\item{\verb{west}}{the reference point is at the middle of the left edge.}
\item{\verb{center}}{the reference point is at the center of the window.}
\item{\verb{east}}{the reference point is at the middle of the right edge.}
\item{\verb{south-west}}{the reference point is at the lower left corner.}
\item{\verb{south}}{the reference point is at the middle of the lower edge.}
\item{\verb{south-east}}{the reference point is at the lower right corner.}
\item{\verb{static}}{the reference point is at the top left corner of the 
   window itself, ignoring window manager decorations.}
}

}
\item{\verb{GdkWindowEdge}}{
Determines a window edge or corner.

\describe{
\item{\verb{north-west}}{the top left corner.}
\item{\verb{north}}{the top edge.}
\item{\verb{north-east}}{the top right corner.}
\item{\verb{west}}{the left edge.}
\item{\verb{east}}{the right edge.}
\item{\verb{south-west}}{the lower left corner.}
\item{\verb{south}}{the lower edge.}
\item{\verb{south-east}}{the lower right corner.}
}

}
\item{\verb{GdkWindowTypeHint}}{
These are hints for the window manager that indicate what type of function
the window has. The window manager can use this when determining decoration
and behaviour of the window. The hint must be set before mapping the window.
  
See the
Extended
Window Manager Hints (\url{http://www.freedesktop.org/Standards/wm-spec}) specification for more details about
window types.

\describe{
\item{\verb{normal}}{Normal toplevel window.}
\item{\verb{dialog}}{Dialog window.}
\item{\verb{menu}}{Window used to implement a menu; GTK+ uses 
  this hint only for torn-off menus, see \code{\link{GtkTearoffMenuItem}}.}
\item{\verb{toolbar}}{Window used to implement toolbars.}
\item{\verb{splashscreen}}{Window used to display a splash 
  screen during application startup.}
\item{\verb{utility}}{Utility windows which are not detached 
  toolbars or dialogs.}
\item{\verb{dock}}{Used for creating dock or panel windows.}
\item{\verb{desktop}}{Used for creating the desktop background 
window.}
}

}
\item{\verb{GdkWindowAttributesType}}{
Used to indicate which fields in the \code{\link{GdkWindowAttr}} struct should be
honored. For example, if you filled in the "cursor" and "x" fields of
\code{\link{GdkWindowAttr}}, pass "\code{GDK.WA.X} | \code{GDK.WA.CURSOR}" to \code{\link{gdkWindowNew}}.  Fields
in \code{\link{GdkWindowAttr}} not covered by a bit in this enum are required; for example,
the \code{width}/\code{height}, \code{wclass}, and \code{window.type} fields are required, they have no
corresponding flag in \code{\link{GdkWindowAttributesType}}.

\describe{
\item{\verb{title}}{Honor the title field}
\item{\verb{x}}{Honor the X coordinate field}
\item{\verb{y}}{Honor the Y coordinate field}
\item{\verb{cursor}}{Honor the cursor field}
\item{\verb{colormap}}{Honor the colormap field}
\item{\verb{visual}}{Honor the visual field}
\item{\verb{wmclass}}{Honor the wmclass_class and wmclass_name fields}
\item{\verb{noredir}}{Honor the override_redirect field}
}

}
\item{\verb{GdkFilterReturn}}{
Specifies the result of applying a \code{\link{GdkFilterFunc}} to a native event.

\describe{
\item{\verb{continue}}{event not handled, continue processing.}
\item{\verb{translate}}{native event translated into a GDK event and stored
                       in the \code{event} structure that was passed in.}
\item{\verb{remove}}{event handled, terminate processing.}
}

}
\item{\verb{GdkModifierType}}{
A set of bit-flags to indicate the state of modifier keys and mouse buttons
in various event types. Typical modifier keys are Shift, Control, Meta, Super,
Hyper, Alt, Compose, Apple, CapsLock or ShiftLock.
  
Like the X Window System, GDK supports 8 modifier keys and 5 mouse buttons.
  
Since 2.10, GDK recognizes which of the Meta, Super or Hyper keys are mapped
to Mod2 - Mod5, and indicates this by setting \code{GDK_SUPER_MASK}, \code{GDK_HYPER_MASK}
or \code{GDK_META_MASK} in the state field of key events.

\describe{
\item{\verb{shift-mask}}{the Shift key.}
\item{\verb{lock-mask}}{a Lock key (depending on the modifier mapping of the 
  X server this may either be CapsLock or ShiftLock).}
\item{\verb{control-mask}}{the Control key.}
\item{\verb{mod1-mask}}{the fourth modifier key (it depends on the modifier 
  mapping of the X server which key is interpreted as this modifier, but
  normally it is the Alt key).}
\item{\verb{mod2-mask}}{the fifth modifier key (it depends on the modifier 
  mapping of the X server which key is interpreted as this modifier).}
\item{\verb{mod3-mask}}{the sixth modifier key (it depends on the modifier 
  mapping of the X server which key is interpreted as this modifier).}
\item{\verb{mod4-mask}}{the seventh modifier key (it depends on the modifier 
  mapping of the X server which key is interpreted as this modifier).}
\item{\verb{mod5-mask}}{the eighth modifier key (it depends on the modifier 
  mapping of the X server which key is interpreted as this modifier).}
\item{\verb{button1-mask}}{the first mouse button.}
\item{\verb{button2-mask}}{the second mouse button.}
\item{\verb{button3-mask}}{the third mouse button.}
\item{\verb{button4-mask}}{the fourth mouse button.}
\item{\verb{button5-mask}}{the fifth mouse button.}
\item{\verb{release-mask}}{the Super modifier. Since 2.10}
\item{\verb{modifier-mask}}{the Hyper modifier. Since 2.10}
}

}
\item{\verb{GdkWMDecoration}}{
These are hints originally defined by the Motif toolkit.
The window manager can use them when determining how to decorate
the window. The hint must be set before mapping the window.

\describe{
\item{\verb{all}}{all decorations should be applied.}
\item{\verb{border}}{a frame should be drawn around the window.}
\item{\verb{resizeh}}{the frame should have resize handles.}
\item{\verb{title}}{a titlebar should be placed above the window.}
\item{\verb{menu}}{a button for opening a menu should be included.}
\item{\verb{minimize}}{a minimize button should be included.}
\item{\verb{maximize}}{a maximize button should be included.}
}

}
\item{\verb{GdkWMFunction}}{
These are hints originally defined by the Motif toolkit.
The window manager can use them when determining the functions
to offer for the window.
The hint must be set before mapping the window.

\describe{
\item{\verb{all}}{all functions should be offered.}
\item{\verb{resize}}{the window should be resizable.}
\item{\verb{move}}{the window should be movable.}
\item{\verb{minimize}}{the window should be minimizable.}
\item{\verb{maximize}}{the window should be maximizable.}
\item{\verb{close}}{the window should be closable.}
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
\item{\code{xevent}}{the native event to filter.}
\item{\code{event}}{the GDK event to which the X event will be translated.}
\item{\code{data}}{user data set when the filter was installed.}
}

\emph{Returns:} [\code{\link{GdkFilterReturn}}] a \code{\link{GdkFilterReturn}} value.

}}}
\section{Signals}{\describe{
\item{\code{from-embedder(window, embedder-x, embedder-y, offscreen-x, offscreen-y, user.data)}}{
The ::from-embedder signal is emitted to translate coordinates
in the embedder of an offscreen window to the offscreen window.
  
See also \verb{"to-embedder"}.
  Since 2.18

\describe{
\item{\code{window}}{the offscreen window on which the signal is emitted}
\item{\code{embedder-x}}{x coordinate in the embedder window}
\item{\code{embedder-y}}{y coordinate in the embedder window}
\item{\code{offscreen-x}}{return location for the x coordinate in the offscreen window}
\item{\code{offscreen-y}}{return location for the y coordinate in the offscreen window}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{pick-embedded-child(window, x, y, user.data)}}{
The ::pick-embedded-child signal is emitted to find an embedded
child at the given position.
  Since 2.18

\describe{
\item{\code{window}}{the window on which the signal is emitted}
\item{\code{x}}{x coordinate in the window}
\item{\code{y}}{y coordinate in the window}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [\code{\link{GdkWindow}}] the \code{\link{GdkWindow}} of the embedded child at \code{x}, \code{y}, or \code{NULL}

}
\item{\code{to-embedder(window, offscreen-x, offscreen-y, embedder-x, embedder-y, user.data)}}{
The ::to-embedder signal is emitted to translate coordinates
in an offscreen window to its embedder.
  
See also \verb{"from-embedder"}.
  Since 2.18

\describe{
\item{\code{window}}{the offscreen window on which the signal is emitted}
\item{\code{offscreen-x}}{x coordinate in the offscreen window}
\item{\code{offscreen-y}}{y coordinate in the offscreen window}
\item{\code{embedder-x}}{return location for the x coordinate in the embedder window}
\item{\code{embedder-y}}{return location for the y coordinate in the embedder window}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{\item{\verb{cursor} [\code{\link{GdkCursor}} : *            : Read / Write]}{

The mouse pointer for a \code{\link{GdkWindow}}. See \code{\link{gdkWindowSetCursor}} and
\code{\link{gdkWindowGetCursor}} for details.
  Since 2.18

}}}
\references{\url{https://developer-old.gnome.org/gdk2/stable/gdk2-Windows.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
