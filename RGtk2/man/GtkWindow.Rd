\alias{GtkWindow}
\alias{gtkWindow}
\name{GtkWindow}
\title{GtkWindow}
\description{Toplevel which can contain other widgets}
\usage{
\link{gtkWindowNew}(type = NULL, show = TRUE)
\link{gtkWindowSetTitle}(object, title)
\link{gtkWindowSetWmclass}(object, wmclass.name, wmclass.class)
\link{gtkWindowSetPolicy}(object, allow.shrink, allow.grow, auto.shrink)
\link{gtkWindowSetResizable}(object, resizable)
\link{gtkWindowGetResizable}(object)
\link{gtkWindowAddAccelGroup}(object, accel.group)
\link{gtkWindowRemoveAccelGroup}(object, accel.group)
\link{gtkWindowActivateFocus}(object)
\link{gtkWindowActivateDefault}(object)
\link{gtkWindowSetModal}(object, modal)
\link{gtkWindowSetDefaultSize}(object, width, height)
\link{gtkWindowSetGeometryHints}(object, geometry.widget, geometry)
\link{gtkWindowSetGravity}(object, gravity)
\link{gtkWindowGetGravity}(object)
\link{gtkWindowSetPosition}(object, position)
\link{gtkWindowSetTransientFor}(object, parent = NULL)
\link{gtkWindowSetDestroyWithParent}(object, setting)
\link{gtkWindowSetScreen}(object, screen)
\link{gtkWindowGetScreen}(object)
\link{gtkWindowIsActive}(object)
\link{gtkWindowHasToplevelFocus}(object)
\link{gtkWindowListToplevels}()
\link{gtkWindowAddMnemonic}(object, keyval, target)
\link{gtkWindowRemoveMnemonic}(object, keyval, target)
\link{gtkWindowMnemonicActivate}(object, keyval, modifier)
\link{gtkWindowActivateKey}(object, event)
\link{gtkWindowPropagateKeyEvent}(object, event)
\link{gtkWindowGetFocus}(object)
\link{gtkWindowSetFocus}(object, focus = NULL)
\link{gtkWindowSetDefault}(object, default.widget = NULL)
\link{gtkWindowPresent}(object)
\link{gtkWindowPresentWithTime}(object, timestamp)
\link{gtkWindowIconify}(object)
\link{gtkWindowDeiconify}(object)
\link{gtkWindowStick}(object)
\link{gtkWindowUnstick}(object)
\link{gtkWindowMaximize}(object)
\link{gtkWindowUnmaximize}(object)
\link{gtkWindowFullscreen}(object)
\link{gtkWindowUnfullscreen}(object)
\link{gtkWindowSetKeepAbove}(object, setting)
\link{gtkWindowSetKeepBelow}(object, setting)
\link{gtkWindowBeginResizeDrag}(object, edge, button, root.x, root.y, timestamp)
\link{gtkWindowBeginMoveDrag}(object, button, root.x, root.y, timestamp)
\link{gtkWindowSetDecorated}(object, setting)
\link{gtkWindowSetFrameDimensions}(object, left, top, right, bottom)
\link{gtkWindowSetHasFrame}(object, setting)
\link{gtkWindowSetMnemonicModifier}(object, modifier)
\link{gtkWindowSetRole}(object, role)
\link{gtkWindowSetTypeHint}(object, hint)
\link{gtkWindowSetSkipTaskbarHint}(object, setting)
\link{gtkWindowSetSkipPagerHint}(object, setting)
\link{gtkWindowSetUrgencyHint}(object, setting)
\link{gtkWindowSetAcceptFocus}(object, setting)
\link{gtkWindowSetFocusOnMap}(object, setting)
\link{gtkWindowGetDecorated}(object)
\link{gtkWindowGetDefaultIconList}()
\link{gtkWindowGetDefaultSize}(object)
\link{gtkWindowGetDestroyWithParent}(object)
\link{gtkWindowGetFrameDimensions}(object)
\link{gtkWindowGetHasFrame}(object)
\link{gtkWindowGetIcon}(object)
\link{gtkWindowGetIconList}(object)
\link{gtkWindowGetIconName}(object)
\link{gtkWindowGetMnemonicModifier}(object)
\link{gtkWindowGetModal}(object)
\link{gtkWindowGetPosition}(object)
\link{gtkWindowGetRole}(object)
\link{gtkWindowGetSize}(object)
\link{gtkWindowGetTitle}(object)
\link{gtkWindowGetTransientFor}(object)
\link{gtkWindowGetTypeHint}(object)
\link{gtkWindowGetSkipTaskbarHint}(object)
\link{gtkWindowGetSkipPagerHint}(object)
\link{gtkWindowGetUrgencyHint}(object)
\link{gtkWindowGetAcceptFocus}(object)
\link{gtkWindowGetFocusOnMap}(object)
\link{gtkWindowMove}(object, x, y)
\link{gtkWindowReshowWithInitialSize}(object)
\link{gtkWindowResize}(object, width, height)
\link{gtkWindowSetDefaultIconList}(list)
\link{gtkWindowSetDefaultIcon}(icon)
\link{gtkWindowSetDefaultIconFromFile}(filename)
\link{gtkWindowSetDefaultIconName}(name)
\link{gtkWindowSetIcon}(object, icon = NULL)
\link{gtkWindowSetIconList}(object, list)
\link{gtkWindowSetIconFromFile}(object, filename)
\link{gtkWindowSetIconName}(object, name = NULL)
\link{gtkWindowSetAutoStartupNotification}(setting)
gtkWindow(type = NULL, show = TRUE)
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----\link{GtkBin}
                           +----GtkWindow
                                 +----\link{GtkDialog}
                                 +----\link{GtkPlug}}}
\section{Structures}{\describe{\item{\code{GtkWindow}}{


\describe{
\item{\code{title}}{[character] }
\item{\code{wmclassName}}{[character] }
\item{\code{wmclassClass}}{[character] }
\item{\code{wmRole}}{[character] }
\item{\code{focusWidget}}{[\code{\link{GtkWidget}}] }
\item{\code{defaultWidget}}{[\code{\link{GtkWidget}}] }
\item{\code{transientParent}}{[\code{\link{GtkWindow}}] }
\item{\code{frame}}{[\code{\link{GdkWindow}}] }
\item{\code{group}}{[\code{\link{GtkWindowGroup}}] }
\item{\code{configureRequestCount}}{[integer] }
\item{\code{allowShrink}}{[numeric] }
\item{\code{allowGrow}}{[numeric] }
\item{\code{configureNotifyReceived}}{[numeric] }
\item{\code{needDefaultPosition}}{[numeric] }
\item{\code{needDefaultSize}}{[numeric] }
\item{\code{position}}{[numeric] }
\item{\code{type}}{[numeric] }
\item{\code{hasUserRefCount}}{[numeric] }
\item{\code{hasFocus}}{[numeric] }
\item{\code{modal}}{[numeric] }
\item{\code{destroyWithParent}}{[numeric] }
\item{\code{hasFrame}}{[numeric] }
\item{\code{iconifyInitially}}{[numeric] }
\item{\code{stickInitially}}{[numeric] }
\item{\code{maximizeInitially}}{[numeric] }
\item{\code{decorated}}{[numeric] }
\item{\code{typeHint}}{[numeric] }
\item{\code{gravity}}{[numeric] }
\item{\code{frameLeft}}{[numeric] }
\item{\code{frameTop}}{[numeric] }
\item{\code{frameRight}}{[numeric] }
\item{\code{frameBottom}}{[numeric] }
\item{\code{keysChangedHandler}}{[numeric] }
\item{\code{mnemonicModifier}}{[\code{\link{GdkModifierType}}] }
}

}}}
\section{Convenient Construction}{\code{gtkWindow} is the equivalent of \code{\link{gtkWindowNew}}.}
\section{Interfaces}{GtkWindow implements
 AtkImplementorIface.}
\section{Signals}{\describe{
\item{\code{activate-default(window, user.data)}}{


\describe{
\item{\code{window}}{[\code{\link{GtkWindow}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{activate-focus(window, user.data)}}{


\describe{
\item{\code{window}}{[\code{\link{GtkWindow}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{frame-event(window, event, user.data)}}{


\describe{
\item{\code{window}}{[\code{\link{GtkWindow}}] the object which received the signal.}
\item{\code{event}}{[\code{\link{GdkEvent}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{keys-changed(window, user.data)}}{


\describe{
\item{\code{window}}{[\code{\link{GtkWindow}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{move-focus(window, arg1, user.data)}}{


\describe{
\item{\code{window}}{[\code{\link{GtkWindow}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkDirectionType}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{set-focus(window, widget, user.data)}}{


\describe{
\item{\code{window}}{[\code{\link{GtkWindow}}] the object which received the signal.}
\item{\code{widget}}{[\code{\link{GtkWidget}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
}}
\section{Properties}{\describe{
\item{\code{accept-focus} [logical : Read / Write]}{

TRUE if the window should receive the input focus.  Default value: TRUE

}
\item{\code{allow-grow} [logical : Read / Write]}{

If TRUE, users can expand the window beyond its minimum size.  Default value: TRUE

}
\item{\code{allow-shrink} [logical : Read / Write]}{

If TRUE, the window has no mimimum size. Setting this to TRUE is 99% of the time a bad idea.  Default value: FALSE

}
\item{\code{decorated} [logical : Read / Write]}{

Whether the window should be decorated by the window manager.  

  Default value: TRUE  Since  2.4

}
\item{\code{default-height} [integer : Read / Write]}{

The default height of the window, used when initially showing the window.  Allowed values: >= -1  Default value: -1

}
\item{\code{default-width} [integer : Read / Write]}{

The default width of the window, used when initially showing the window.  Allowed values: >= -1  Default value: -1

}
\item{\code{destroy-with-parent} [logical : Read / Write]}{

If this window should be destroyed when the parent is destroyed.  Default value: FALSE

}
\item{\code{focus-on-map} [logical : Read / Write]}{

TRUE if the window should receive the input focus when mapped.  Default value: TRUE

}
\item{\code{gravity} [\code{\link{GdkGravity}} : Read / Write]}{

The window gravity of the window. See \code{\link{gtkWindowMove}} and \code{\link{GdkGravity}} for
more details about window gravity.  

  Default value: GDK_GRAVITY_NORTH_WEST  Since  2.4

}
\item{\code{has-toplevel-focus} [logical : Read]}{

Whether the input focus is within this GtkWindow.  Default value: FALSE

}
\item{\code{icon} [\code{\link{GdkPixbuf}} : Read / Write]}{

Icon for this window.

}
\item{\code{icon-name} [character : Read / Write]}{

The :icon-name property specifies the name of the themed icon to
use as the window icon. See \code{\link{GtkIconTheme}} for more details.  

  Default value: NULL  Since  2.6

}
\item{\code{is-active} [logical : Read]}{

Whether the toplevel is the current active window.  Default value: FALSE

}
\item{\code{modal} [logical : Read / Write]}{

If TRUE, the window is modal (other windows are not usable while this one is up).  Default value: FALSE

}
\item{\code{resizable} [logical : Read / Write]}{

If TRUE, users can resize the window.  Default value: TRUE

}
\item{\code{role} [character : Read / Write]}{

Unique identifier for the window to be used when restoring a session.  Default value: NULL

}
\item{\code{screen} [\code{\link{GdkScreen}} : Read / Write]}{

The screen where this window will be displayed.

}
\item{\code{skip-pager-hint} [logical : Read / Write]}{

TRUE if the window should not be in the pager.  Default value: FALSE

}
\item{\code{skip-taskbar-hint} [logical : Read / Write]}{

TRUE if the window should not be in the task bar.  Default value: FALSE

}
\item{\code{title} [character : Read / Write]}{

The title of the window.  Default value: NULL

}
\item{\code{type} [\code{\link{GtkWindowType}} : Read / Write / Construct Only]}{

The type of the window.  Default value: GTK_WINDOW_TOPLEVEL

}
\item{\code{type-hint} [\code{\link{GdkWindowTypeHint}} : Read / Write]}{

Hint to help the desktop environment understand what kind of window this is and how to treat it.  Default value: GDK_WINDOW_TYPE_HINT_NORMAL

}
\item{\code{urgency-hint} [logical : Read / Write]}{

TRUE if the window should be brought to the user's attention.  Default value: FALSE

}
\item{\code{window-position} [\code{\link{GtkWindowPosition}} : Read / Write]}{

The initial position of the window.  Default value: GTK_WIN_POS_NONE

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkWindow.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
