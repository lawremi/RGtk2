\alias{GtkWindow}
\alias{gtkWindow}
\name{GtkWindow}
\title{GtkWindow}
\description{Toplevel which can contain other widgets}
\section{Methods and Functions}{
\code{\link{gtkWindowNew}(type = NULL, show = TRUE)}\cr
\code{\link{gtkWindowSetTitle}(object, title)}\cr
\code{\link{gtkWindowSetWmclass}(object, wmclass.name, wmclass.class)}\cr
\code{\link{gtkWindowSetPolicy}(object, allow.shrink, allow.grow, auto.shrink)}\cr
\code{\link{gtkWindowSetResizable}(object, resizable)}\cr
\code{\link{gtkWindowGetResizable}(object)}\cr
\code{\link{gtkWindowAddAccelGroup}(object, accel.group)}\cr
\code{\link{gtkWindowRemoveAccelGroup}(object, accel.group)}\cr
\code{\link{gtkWindowActivateFocus}(object)}\cr
\code{\link{gtkWindowActivateDefault}(object)}\cr
\code{\link{gtkWindowSetModal}(object, modal)}\cr
\code{\link{gtkWindowSetDefaultSize}(object, width, height)}\cr
\code{\link{gtkWindowSetGeometryHints}(object, geometry.widget, geometry)}\cr
\code{\link{gtkWindowSetGravity}(object, gravity)}\cr
\code{\link{gtkWindowGetGravity}(object)}\cr
\code{\link{gtkWindowSetPosition}(object, position)}\cr
\code{\link{gtkWindowSetTransientFor}(object, parent = NULL)}\cr
\code{\link{gtkWindowSetDestroyWithParent}(object, setting)}\cr
\code{\link{gtkWindowSetScreen}(object, screen)}\cr
\code{\link{gtkWindowGetScreen}(object)}\cr
\code{\link{gtkWindowIsActive}(object)}\cr
\code{\link{gtkWindowHasToplevelFocus}(object)}\cr
\code{\link{gtkWindowListToplevels}()}\cr
\code{\link{gtkWindowAddMnemonic}(object, keyval, target)}\cr
\code{\link{gtkWindowRemoveMnemonic}(object, keyval, target)}\cr
\code{\link{gtkWindowMnemonicActivate}(object, keyval, modifier)}\cr
\code{\link{gtkWindowActivateKey}(object, event)}\cr
\code{\link{gtkWindowPropagateKeyEvent}(object, event)}\cr
\code{\link{gtkWindowGetFocus}(object)}\cr
\code{\link{gtkWindowSetFocus}(object, focus = NULL)}\cr
\code{\link{gtkWindowGetDefaultWidget}(object)}\cr
\code{\link{gtkWindowSetDefault}(object, default.widget = NULL)}\cr
\code{\link{gtkWindowPresent}(object)}\cr
\code{\link{gtkWindowPresentWithTime}(object, timestamp)}\cr
\code{\link{gtkWindowIconify}(object)}\cr
\code{\link{gtkWindowDeiconify}(object)}\cr
\code{\link{gtkWindowStick}(object)}\cr
\code{\link{gtkWindowUnstick}(object)}\cr
\code{\link{gtkWindowMaximize}(object)}\cr
\code{\link{gtkWindowUnmaximize}(object)}\cr
\code{\link{gtkWindowFullscreen}(object)}\cr
\code{\link{gtkWindowUnfullscreen}(object)}\cr
\code{\link{gtkWindowSetKeepAbove}(object, setting)}\cr
\code{\link{gtkWindowSetKeepBelow}(object, setting)}\cr
\code{\link{gtkWindowBeginResizeDrag}(object, edge, button, root.x, root.y, timestamp)}\cr
\code{\link{gtkWindowBeginMoveDrag}(object, button, root.x, root.y, timestamp)}\cr
\code{\link{gtkWindowSetDecorated}(object, setting)}\cr
\code{\link{gtkWindowSetDeletable}(object, setting)}\cr
\code{\link{gtkWindowSetFrameDimensions}(object, left, top, right, bottom)}\cr
\code{\link{gtkWindowSetHasFrame}(object, setting)}\cr
\code{\link{gtkWindowSetMnemonicModifier}(object, modifier)}\cr
\code{\link{gtkWindowSetTypeHint}(object, hint)}\cr
\code{\link{gtkWindowSetSkipTaskbarHint}(object, setting)}\cr
\code{\link{gtkWindowSetSkipPagerHint}(object, setting)}\cr
\code{\link{gtkWindowSetUrgencyHint}(object, setting)}\cr
\code{\link{gtkWindowSetAcceptFocus}(object, setting)}\cr
\code{\link{gtkWindowSetFocusOnMap}(object, setting)}\cr
\code{\link{gtkWindowSetStartupId}(object, startup.id)}\cr
\code{\link{gtkWindowSetRole}(object, role)}\cr
\code{\link{gtkWindowGetDecorated}(object)}\cr
\code{\link{gtkWindowGetDeletable}(object)}\cr
\code{\link{gtkWindowGetDefaultIconList}()}\cr
\code{\link{gtkWindowGetDefaultIconName}()}\cr
\code{\link{gtkWindowGetDefaultSize}(object)}\cr
\code{\link{gtkWindowGetDestroyWithParent}(object)}\cr
\code{\link{gtkWindowGetFrameDimensions}(object)}\cr
\code{\link{gtkWindowGetHasFrame}(object)}\cr
\code{\link{gtkWindowGetIcon}(object)}\cr
\code{\link{gtkWindowGetIconList}(object)}\cr
\code{\link{gtkWindowGetIconName}(object)}\cr
\code{\link{gtkWindowGetMnemonicModifier}(object)}\cr
\code{\link{gtkWindowGetModal}(object)}\cr
\code{\link{gtkWindowGetPosition}(object)}\cr
\code{\link{gtkWindowGetRole}(object)}\cr
\code{\link{gtkWindowGetSize}(object)}\cr
\code{\link{gtkWindowGetTitle}(object)}\cr
\code{\link{gtkWindowGetTransientFor}(object)}\cr
\code{\link{gtkWindowGetTypeHint}(object)}\cr
\code{\link{gtkWindowGetSkipTaskbarHint}(object)}\cr
\code{\link{gtkWindowGetSkipPagerHint}(object)}\cr
\code{\link{gtkWindowGetUrgencyHint}(object)}\cr
\code{\link{gtkWindowGetAcceptFocus}(object)}\cr
\code{\link{gtkWindowGetFocusOnMap}(object)}\cr
\code{\link{gtkWindowGetGroup}(object)}\cr
\code{\link{gtkWindowGetWindowType}(object)}\cr
\code{\link{gtkWindowMove}(object, x, y)}\cr
\code{\link{gtkWindowReshowWithInitialSize}(object)}\cr
\code{\link{gtkWindowResize}(object, width, height)}\cr
\code{\link{gtkWindowSetDefaultIconList}(list)}\cr
\code{\link{gtkWindowSetDefaultIcon}(icon)}\cr
\code{\link{gtkWindowSetDefaultIconName}(name)}\cr
\code{\link{gtkWindowSetIcon}(object, icon = NULL)}\cr
\code{\link{gtkWindowSetIconList}(object, list)}\cr
\code{\link{gtkWindowSetIconName}(object, name = NULL)}\cr
\code{\link{gtkWindowSetAutoStartupNotification}(setting)}\cr
\code{\link{gtkWindowGetOpacity}(object)}\cr
\code{\link{gtkWindowSetOpacity}(object, opacity)}\cr
\code{\link{gtkWindowGetMnemonicsVisible}(object)}\cr
\code{\link{gtkWindowSetMnemonicsVisible}(object, setting)}\cr
\code{gtkWindow(type = NULL, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBin
                                 +----GtkWindow
                                       +----GtkDialog
                                       +----GtkAssistant
                                       +----GtkOffscreenWindow
                                       +----GtkPlug}}
\section{Interfaces}{GtkWindow implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{GtkWindow as GtkBuildable}{The GtkWindow implementation of the GtkBuildable interface supports a
custom <accel-groups> element, which supports any number of <group>
elements representing the GtkAccelGroup objects you want to add to your
window (synonymous with \code{\link{gtkWindowAddAccelGroup}}.
  
 \emph{A UI definition fragment with accel groups}\preformatted{<object class="GtkWindow">
  <accel-groups>
    <group name="accelgroup1"/>
  </accel-groups>
</object>
...
<object class="GtkAccelGroup" id="accelgroup1"/>
}}
\section{Structures}{\describe{\item{\verb{GtkWindow}}{
\emph{undocumented
}

\describe{
\item{\verb{title}}{[character] }
\item{\verb{wmclassName}}{[character] }
\item{\verb{wmclassClass}}{[character] }
\item{\verb{wmRole}}{[character] }
\item{\verb{focusWidget}}{[\code{\link{GtkWidget}}] }
\item{\verb{defaultWidget}}{[\code{\link{GtkWidget}}] }
\item{\verb{transientParent}}{[\code{\link{GtkWindow}}] }
\item{\verb{frame}}{[\code{\link{GdkWindow}}] }
\item{\verb{group}}{[\code{\link{GtkWindowGroup}}] }
\item{\verb{configureRequestCount}}{[integer] }
\item{\verb{allowShrink}}{[numeric] }
\item{\verb{allowGrow}}{[numeric] }
\item{\verb{configureNotifyReceived}}{[numeric] }
\item{\verb{needDefaultPosition}}{[numeric] }
\item{\verb{needDefaultSize}}{[numeric] }
\item{\verb{position}}{[numeric] }
\item{\verb{type}}{[numeric] }
\item{\verb{hasUserRefCount}}{[numeric] }
\item{\verb{hasFocus}}{[numeric] }
\item{\verb{modal}}{[numeric] }
\item{\verb{destroyWithParent}}{[numeric] }
\item{\verb{hasFrame}}{[numeric] }
\item{\verb{iconifyInitially}}{[numeric] }
\item{\verb{stickInitially}}{[numeric] }
\item{\verb{maximizeInitially}}{[numeric] }
\item{\verb{decorated}}{[numeric] }
\item{\verb{typeHint}}{[numeric] }
\item{\verb{gravity}}{[numeric] }
\item{\verb{frameLeft}}{[numeric] }
\item{\verb{frameTop}}{[numeric] }
\item{\verb{frameRight}}{[numeric] }
\item{\verb{frameBottom}}{[numeric] }
\item{\verb{keysChangedHandler}}{[numeric] }
\item{\verb{mnemonicModifier}}{[\code{\link{GdkModifierType}}] }
}

}}}
\section{Convenient Construction}{\code{gtkWindow} is the equivalent of \code{\link{gtkWindowNew}}.}
\section{Signals}{\describe{
\item{\code{activate-default(window, user.data)}}{
The ::activate-default signal is a
keybinding signal
which gets emitted when the user activates the default widget
of \code{window}.

\describe{
\item{\code{window}}{the window which received the signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{activate-focus(window, user.data)}}{
The ::activate-default signal is a
keybinding signal
which gets emitted when the user activates the currently
focused widget of \code{window}.

\describe{
\item{\code{window}}{the window which received the signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{frame-event(window, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{window}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{keys-changed(window, user.data)}}{
The ::keys-changed signal gets emitted when the set of accelerators
or mnemonics that are associated with \code{window} changes.

\describe{
\item{\code{window}}{the window which received the signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{set-focus(window, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{window}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\verb{accept-focus} [logical : Read / Write]}{

Whether the window should receive the input focus.
  Default value: TRUE  Since 2.4

}
\item{\verb{allow-grow} [logical : Read / Write]}{

If TRUE, users can expand the window beyond its minimum size.  Default value: TRUE

}
\item{\verb{allow-shrink} [logical : Read / Write]}{

If TRUE, the window has no mimimum size. Setting this to TRUE is 99\% of the time a bad idea.  Default value: FALSE

}
\item{\verb{decorated} [logical : Read / Write]}{

Whether the window should be decorated by the window manager.
  Default value: TRUE  Since 2.4

}
\item{\verb{default-height} [integer : Read / Write]}{

The default height of the window, used when initially showing the window.  Allowed values: >= -1  Default value: -1

}
\item{\verb{default-width} [integer : Read / Write]}{

The default width of the window, used when initially showing the window.  Allowed values: >= -1  Default value: -1

}
\item{\verb{deletable} [logical : Read / Write]}{

Whether the window frame should have a close button.
  Default value: TRUE  Since 2.10

}
\item{\verb{destroy-with-parent} [logical : Read / Write]}{

If this window should be destroyed when the parent is destroyed.  Default value: FALSE

}
\item{\verb{focus-on-map} [logical : Read / Write]}{

Whether the window should receive the input focus when mapped.
  Default value: TRUE  Since 2.6

}
\item{\verb{gravity} [\code{\link{GdkGravity}} : Read / Write]}{

The window gravity of the window. See \code{\link{gtkWindowMove}} and \code{\link{GdkGravity}} for
more details about window gravity.
  Default value: GDK_GRAVITY_NORTH_WEST  Since 2.4

}
\item{\verb{has-toplevel-focus} [logical : Read]}{

Whether the input focus is within this GtkWindow.  Default value: FALSE

}
\item{\verb{icon} [\code{\link{GdkPixbuf}} : *            : Read / Write]}{

Icon for this window.

}
\item{\verb{icon-name} [character : *                : Read / Write]}{

The :icon-name property specifies the name of the themed icon to
use as the window icon. See \code{\link{GtkIconTheme}} for more details.
  Default value: NULL  Since 2.6

}
\item{\verb{is-active} [logical : Read]}{

Whether the toplevel is the current active window.  Default value: FALSE

}
\item{\verb{mnemonics-visible} [logical : Read / Write]}{

Whether mnemonics are currently visible in this window.  Default value: TRUE

}
\item{\verb{modal} [logical : Read / Write]}{

If TRUE, the window is modal (other windows are not usable while this one is up).  Default value: FALSE

}
\item{\verb{opacity} [numeric : Read / Write]}{

The requested opacity of the window. See \code{\link{gtkWindowSetOpacity}} for
more details about window opacity.
  Allowed values: [0,1]  Default value: 1  Since 2.12

}
\item{\verb{resizable} [logical : Read / Write]}{

If TRUE, users can resize the window.  Default value: TRUE

}
\item{\verb{role} [character : *                : Read / Write]}{

Unique identifier for the window to be used when restoring a session.  Default value: NULL

}
\item{\verb{screen} [\code{\link{GdkScreen}} : *            : Read / Write]}{

The screen where this window will be displayed.

}
\item{\verb{skip-pager-hint} [logical : Read / Write]}{

TRUE if the window should not be in the pager.  Default value: FALSE

}
\item{\verb{skip-taskbar-hint} [logical : Read / Write]}{

TRUE if the window should not be in the task bar.  Default value: FALSE

}
\item{\verb{startup-id} [character : *                : Write]}{

The :startup-id is a write-only property for setting window's
startup notification identifier. See \code{\link{gtkWindowSetStartupId}}
for more details.
  Default value: NULL  Since 2.12

}
\item{\verb{title} [character : *                : Read / Write]}{

The title of the window.  Default value: NULL

}
\item{\verb{transient-for} [\code{\link{GtkWindow}} : *            : Read / Write / Construct]}{

The transient parent of the window. See \code{\link{gtkWindowSetTransientFor}} for
more details about transient windows.
  Since 2.10

}
\item{\verb{type} [\code{\link{GtkWindowType}} : Read / Write / Construct Only]}{

The type of the window.  Default value: GTK_WINDOW_TOPLEVEL

}
\item{\verb{type-hint} [\code{\link{GdkWindowTypeHint}} : Read / Write]}{

Hint to help the desktop environment understand what kind of window this is and how to treat it.  Default value: GDK_WINDOW_TYPE_HINT_NORMAL

}
\item{\verb{urgency-hint} [logical : Read / Write]}{

TRUE if the window should be brought to the user's attention.  Default value: FALSE

}
\item{\verb{window-position} [\code{\link{GtkWindowPosition}} : Read / Write]}{

The initial position of the window.  Default value: GTK_WIN_POS_NONE

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkWindow.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
