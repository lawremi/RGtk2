\alias{gtk-Keyboard-Accelerators}
\alias{GtkAccelGroup}
\alias{GtkAccelKey}
\alias{gtkAccelGroup}
\alias{GtkAccelGroupActivate}
\alias{GtkAccelGroupFindFunc}
\name{gtk-Keyboard-Accelerators}
\title{Accelerator Groups}
\description{Groups of global keyboard accelerators for an entire GtkWindow}
\section{Methods and Functions}{
\code{\link{gtkAccelGroupNew}()}\cr
\code{\link{gtkAccelGroupConnect}(object, accel.key, accel.mods, accel.flags, closure)}\cr
\code{\link{gtkAccelGroupConnectByPath}(object, accel.path, closure)}\cr
\code{\link{gtkAccelGroupDisconnect}(object, closure)}\cr
\code{\link{gtkAccelGroupDisconnectKey}(object, accel.key, accel.mods)}\cr
\code{\link{gtkAccelGroupQuery}(object, accel.key, accel.mods)}\cr
\code{\link{gtkAccelGroupActivate}(object, accel.quark, acceleratable, accel.key, accel.mods)}\cr
\code{\link{gtkAccelGroupLock}(object)}\cr
\code{\link{gtkAccelGroupUnlock}(object)}\cr
\code{\link{gtkAccelGroupGetIsLocked}(object)}\cr
\code{\link{gtkAccelGroupFromAccelClosure}(closure)}\cr
\code{\link{gtkAccelGroupGetModifierMask}(object)}\cr
\code{\link{gtkAccelGroupsActivate}(object, accel.key, accel.mods)}\cr
\code{\link{gtkAccelGroupsFromObject}(object)}\cr
\code{\link{gtkAccelGroupFind}(object, find.func, data = NULL)}\cr
\code{\link{gtkAcceleratorValid}(keyval, modifiers)}\cr
\code{\link{gtkAcceleratorParse}(accelerator)}\cr
\code{\link{gtkAcceleratorName}(accelerator.key, accelerator.mods)}\cr
\code{\link{gtkAcceleratorGetLabel}(accelerator.key, accelerator.mods)}\cr
\code{\link{gtkAcceleratorSetDefaultModMask}(default.mod.mask)}\cr
\code{\link{gtkAcceleratorGetDefaultModMask}()}\cr
\code{gtkAccelGroup()}
}
\section{Hierarchy}{\preformatted{GObject
   +----GtkAccelGroup}}
\section{Detailed Description}{A \code{\link{GtkAccelGroup}} represents a group of keyboard accelerators,
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
\section{Structures}{\describe{
\item{\verb{GtkAccelGroup}}{
An object representing and maintaining a group of accelerators.

}
\item{\verb{GtkAccelKey}}{
\emph{undocumented
}
\strong{\verb{GtkAccelKey} is a \link{transparent-type}.}

\describe{
\item{\verb{accelKey}}{[numeric] }
\item{\verb{accelMods}}{[\code{\link{GdkModifierType}}] }
\item{\verb{accelFlags}}{[numeric] }
}

}
}}
\section{Convenient Construction}{\code{gtkAccelGroup} is the equivalent of \code{\link{gtkAccelGroupNew}}.}
\section{User Functions}{\describe{
\item{\code{GtkAccelGroupActivate()}}{
\emph{undocumented
}




}
\item{\code{GtkAccelGroupFindFunc()}}{
Since 2.2




}
}}
\section{Signals}{\describe{
\item{\code{accel-activate(accel.group, acceleratable, keyval, modifier, user.data)}}{
The accel-activate signal is an implementation detail of
\code{\link{GtkAccelGroup}} and not meant to be used by applications.

\describe{
\item{\code{accel.group}}{the \code{\link{GtkAccelGroup}} which received the signal}
\item{\code{acceleratable}}{the object on which the accelerator was activated}
\item{\code{keyval}}{the accelerator keyval}
\item{\code{modifier}}{the modifier combination of the accelerator}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} if the accelerator was activated

}
\item{\code{accel-changed(accel.group, keyval, modifier, accel.closure, user.data)}}{
The accel-changed signal is emitted when a \verb{GtkAccelGroupEntry}
is added to or removed from the accel group.
  
Widgets like \code{\link{GtkAccelLabel}} which display an associated
accelerator should connect to this signal, and rebuild
their visual representation if the \code{accel.closure} is theirs.

\describe{
\item{\code{accel.group}}{the \code{\link{GtkAccelGroup}} which received the signal}
\item{\code{keyval}}{the accelerator keyval}
\item{\code{modifier}}{the modifier combination of the accelerator}
\item{\code{accel.closure}}{the \code{\link{GClosure}} of the accelerator}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\verb{is-locked} [logical : Read]}{

Is the accel group locked.  Default value: FALSE

}
\item{\verb{modifier-mask} [\code{\link{GdkModifierType}} : Read]}{

Modifier Mask.  Default value: GDK_SHIFT_MASK|GDK_CONTROL_MASK|GDK_MOD1_MASK|GDK_SUPER_MASK|GDK_HYPER_MASK|GDK_META_MASK

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/gtk2-Keyboard-Accelerators.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
