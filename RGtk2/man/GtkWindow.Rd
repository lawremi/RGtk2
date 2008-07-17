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
\code{\link{gtkWindowSetRole}(object, role)}\cr
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
\code{\link{gtkWindowMove}(object, x, y)}\cr
\code{\link{gtkWindowReshowWithInitialSize}(object)}\cr
\code{\link{gtkWindowResize}(object, width, height)}\cr
\code{\link{gtkWindowSetDefaultIconList}(list)}\cr
\code{\link{gtkWindowSetDefaultIcon}(icon)}\cr
\code{\link{gtkWindowSetDefaultIconFromFile}(filename, .errwarn = TRUE)}\cr
\code{\link{gtkWindowSetDefaultIconName}(name)}\cr
\code{\link{gtkWindowSetIcon}(object, icon = NULL)}\cr
\code{\link{gtkWindowSetIconList}(object, list)}\cr
\code{\link{gtkWindowSetIconFromFile}(object, filename, .errwarn = TRUE)}\cr
\code{\link{gtkWindowSetIconName}(object, name = NULL)}\cr
\code{\link{gtkWindowSetAutoStartupNotification}(setting)}\cr
\code{\link{gtkWindowGetOpacity}(object)}\cr
\code{\link{gtkWindowSetOpacity}(object, opacity)}\cr
\code{gtkWindow(type = NULL, show = TRUE)}
}
\section{Hierarchy}{\preformatted{\link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkWidget}
                     +----\link{GtkContainer}
                           +----\link{GtkBin}
                                 +----GtkWindow
                                       +----\link{GtkDialog}
                                       +----\link{GtkAssistant}
                                       +----\link{GtkPlug}}}
\section{Interfaces}{GtkWindow implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Structures}{\describe{\item{\code{GtkWindow}}{
\emph{undocumented
}

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
\section{Signals}{\describe{
\item{\code{activate-default(window, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{window}}{[\code{\link{GtkWindow}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{activate-focus(window, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{window}}{[\code{\link{GtkWindow}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{frame-event(window, event, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{window}}{[\code{\link{GtkWindow}}] the object which received the signal.}
\item{\code{event}}{[\code{\link{GdkEvent}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{keys-changed(window, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{window}}{[\code{\link{GtkWindow}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{set-focus(window, widget, user.data)}}{
\emph{undocumented
}

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

If TRUE, the window has no mimimum size. Setting this to TRUE is 99\% of the time a bad idea.  Default value: FALSE

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
\item{\code{deletable} [logical : Read / Write]}{

Whether the window frame should have a close button.  

  Default value: TRUE  Since  2.10

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

  Default value: GDK\_GRAVITY\_NORTH\_WEST  Since  2.4

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
\item{\code{opacity} [numeric : Read / Write]}{

The requested opacity of the window. See \code{\link{gtkWindowSetOpacity}} for
more details about window opacity.  

  Allowed values: [0,1]  Default value: 1  Since  2.12

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
\item{\code{startup-id} [character : Write]}{

The :startup-id is a write-only property for setting window's
startup notification identifier. See \code{\link{gtkWindowSetStartupId}}
for more details.  

  Default value: NULL  Since  2.12

}
\item{\code{title} [character : Read / Write]}{

The title of the window.  Default value: NULL

}
\item{\code{transient-for} [\code{\link{GtkWindow}} : Read / Write / Construct]}{

The transient parent of the window. See \code{\link{gtkWindowSetTransientFor}} for
more details about transient windows.  

  Since  2.10

}
\item{\code{type} [\code{\link{GtkWindowType}} : Read / Write / Construct Only]}{

The type of the window.  Default value: GTK\_WINDOW\_TOPLEVEL

}
\item{\code{type-hint} [\code{\link{GdkWindowTypeHint}} : Read / Write]}{

Hint to help the desktop environment understand what kind of window this is and how to treat it.  Default value: GDK\_WINDOW\_TYPE\_HINT\_NORMAL

}
\item{\code{urgency-hint} [logical : Read / Write]}{

TRUE if the window should be brought to the user's attention.  Default value: FALSE

}
\item{\code{window-position} [\code{\link{GtkWindowPosition}} : Read / Write]}{

The initial position of the window.  Default value: GTK\_WIN\_POS\_NONE

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkWindow.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
