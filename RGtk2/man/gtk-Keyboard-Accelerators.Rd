\alias{gtk-Keyboard-Accelerators}
\alias{GtkAccelGroup}
\alias{GtkAccelKey}
\alias{gtkAccelGroup}
\alias{GtkAccelGroupActivate}
\alias{GtkAccelGroupFindFunc}
\name{gtk-Keyboard-Accelerators}
\title{Accelerator Groups}
\description{Groups of global keyboard accelerators for an entire GtkWindow}
\usage{
\link{gtkAccelGroupNew}()
\link{gtkAccelGroupConnect}(object, accel.key, accel.mods, accel.flags, closure)
\link{gtkAccelGroupConnectByPath}(object, accel.path, closure)
\link{gtkAccelGroupDisconnect}(object, closure)
\link{gtkAccelGroupDisconnectKey}(object, accel.key, accel.mods)
\link{gtkAccelGroupQuery}(object, accel.key, accel.mods)
\link{gtkAccelGroupActivate}(object, accel.quark, acceleratable, accel.key, accel.mods)
\link{gtkAccelGroupLock}(object)
\link{gtkAccelGroupUnlock}(object)
\link{gtkAccelGroupFromAccelClosure}(closure)
\link{gtkAccelGroupsActivate}(object, accel.key, accel.mods)
\link{gtkAccelGroupsFromObject}(object)
\link{gtkAccelGroupFind}(object, find.func, data = NULL)
\link{gtkAcceleratorValid}(keyval, modifiers)
\link{gtkAcceleratorParse}(accelerator)
\link{gtkAcceleratorName}(accelerator.key, accelerator.mods)
\link{gtkAcceleratorGetLabel}(accelerator.key, accelerator.mods)
\link{gtkAcceleratorSetDefaultModMask}(default.mod.mask)
\link{gtkAcceleratorGetDefaultModMask}()
gtkAccelGroup()
}
\details{A \code{\link{GtkAccelGroup}} represents a group of keyboard accelerators,
typically attached to a toplevel \code{\link{GtkWindow}} (with
\code{\link{gtkWindowAddAccelGroup}}). Usually you won't need to create a
\code{\link{GtkAccelGroup}} directly; instead, when using \code{\link{GtkItemFactory}}, GTK+
automatically sets up the accelerators for your menus in the item
factory's \code{\link{GtkAccelGroup}}.
  
Note that \dfn{accelerators} are different from
\dfn{mnemonics}. Accelerators are shortcuts for
activating a menu item; they appear alongside the menu item they're a
shortcut for. For example "Ctrl+Q" might appear alongside the "Quit"
menu item. Mnemonics are shortcuts for GUI elements such as text
entries or buttons; they appear as underlined characters. See
\code{\link{gtkLabelNewWithMnemonic}}. Menu items can have both accelerators
and mnemonics, of course.}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GtkAccelGroup}}
\section{Structures}{\describe{
\item{\code{GtkAccelGroup}}{
An object representing and maintaining a group of accelerators.

}
\item{\code{GtkAccelKey}}{


\describe{
\item{\code{accelKey}}{[numeric] }
\item{\code{accelMods}}{[\code{\link{GdkModifierType}}] }
\item{\code{accelFlags}}{[numeric] }
}

}
}}
\section{Convenient Construction}{\code{gtkAccelGroup} is the equivalent of \code{\link{gtkAccelGroupNew}}.}
\section{User Functions}{\describe{
\item{\code{GtkAccelGroupActivate(accel.group, acceleratable, keyval, modifier)}}{


\describe{
\item{\code{accel.group}}{[\code{\link{GtkAccelGroup}}] }
\item{\code{acceleratable}}{[\code{\link{GObject}}] }
\item{\code{keyval}}{[numeric] }
\item{\code{modifier}}{[\code{\link{GdkModifierType}}] }
}

}
\item{\code{GtkAccelGroupFindFunc(key, closure, data)}}{
  Since 2.2

\describe{
\item{\code{key}}{[\code{\link{GtkAccelKey}}] }
\item{\code{closure}}{[\code{\link{GClosure}}] }
\item{\code{data}}{[R object] }
}

}
}}
\section{Signals}{\describe{
\item{\code{accel-activate(accel.group, acceleratable, keyval, modifier, user.data)}}{
The accel-activate signal is an implementation detail of
\code{\link{GtkAccelGroup}} and not meant to be used by applications.  

\describe{
\item{\code{accel.group}}{[\code{\link{GtkAccelGroup}}]  the \code{\link{GtkAccelGroup}} which received the signal}
\item{\code{acceleratable}}{[\code{\link{GObject}}]  the object on which the accelerator was activated}
\item{\code{keyval}}{[numeric]  the accelerator keyval}
\item{\code{modifier}}{[\code{\link{GdkModifierType}}]  the modifier combination of the accelerator}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{accel-changed(accel.group, keyval, modifier, accel.closure, user.data)}}{
The accel-changed signal is emitted when a \code{GtkAccelGroupEntry}
is added to or removed from the accel group. 
  
Widgets like \code{\link{GtkAccelLabel}} which display an associated 
accelerator should connect to this signal, and rebuild 
their visual representation if the \code{accel.closure} is theirs.  

\describe{
\item{\code{accel.group}}{[\code{\link{GtkAccelGroup}}]  the \code{\link{GtkAccelGroup}} which received the signal}
\item{\code{keyval}}{[numeric]  the accelerator keyval}
\item{\code{modifier}}{[\code{\link{GdkModifierType}}]  the modifier combination of the accelerator}
\item{\code{accel.closure}}{[\code{\link{GClosure}}]  the \code{\link{GClosure}} of the accelerator}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/gtk-Keyboard-Accelerators.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
