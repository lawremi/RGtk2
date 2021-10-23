\alias{GtkMenuShell}
\alias{GtkMenuDirectionType}
\name{GtkMenuShell}
\title{GtkMenuShell}
\description{A base class for menu objects}
\section{Methods and Functions}{
\code{\link{gtkMenuShellAppend}(object, child)}\cr
\code{\link{gtkMenuShellPrepend}(object, child)}\cr
\code{\link{gtkMenuShellInsert}(object, child, position)}\cr
\code{\link{gtkMenuShellDeactivate}(object)}\cr
\code{\link{gtkMenuShellSelectItem}(object, menu.item)}\cr
\code{\link{gtkMenuShellSelectFirst}(object, search.sensitive)}\cr
\code{\link{gtkMenuShellDeselect}(object)}\cr
\code{\link{gtkMenuShellActivateItem}(object, menu.item, force.deactivate)}\cr
\code{\link{gtkMenuShellCancel}(object)}\cr
\code{\link{gtkMenuShellSetTakeFocus}(object, take.focus)}\cr
\code{\link{gtkMenuShellGetTakeFocus}(object)}\cr

}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkMenuShell
                                 +----GtkMenuBar
                                 +----GtkMenu}}
\section{Interfaces}{GtkMenuShell implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{A \code{\link{GtkMenuShell}} is the abstract base class used to derive the
\code{\link{GtkMenu}} and \code{\link{GtkMenuBar}} subclasses.
  
A \code{\link{GtkMenuShell}} is a container of \code{\link{GtkMenuItem}} objects arranged in a
list which can be navigated, selected, and activated by the user to perform
application functions.  A \code{\link{GtkMenuItem}} can have a submenu associated with it,
allowing for nested hierarchical menus.}
\section{Structures}{\describe{\item{\verb{GtkMenuShell}}{
The \code{\link{GtkMenuShell}} struct contains the following fields.
(These fields should be considered read-only. They should never be set by
an application.)
\tabular{ll}{\verb{list}   *children; \tab The list of   \code{\link{GtkMenuItem}}   objects contained by this   \code{\link{GtkMenuShell}}  . \cr}

}}}
\section{Enums and Flags}{\describe{\item{\verb{GtkMenuDirectionType}}{
An enumeration representing directional movements within a menu.

\describe{
\item{\verb{parent}}{To the parent menu shell.}
\item{\verb{child}}{To the submenu, if any, associated with the item.}
\item{\verb{next}}{To the next menu item.}
\item{\verb{prev}}{To the previous menu item.}
}

}}}
\section{Signals}{\describe{
\item{\code{activate-current(menushell, force.hide, user.data)}}{
An action signal that activates the current menu item within the menu
shell.

\describe{
\item{\code{menushell}}{the object which received the signal.}
\item{\code{force.hide}}{if TRUE, hide the menu after activating the menu item.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{cancel(menushell, user.data)}}{
An action signal which cancels the selection within the menu shell.
Causes the GtkMenuShell::selection-done signal to be emitted.

\describe{
\item{\code{menushell}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{cycle-focus(menushell, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{menushell}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{deactivate(menushell, user.data)}}{
This signal is emitted when a menu shell is deactivated.

\describe{
\item{\code{menushell}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{move-current(menushell, direction, user.data)}}{
An action signal which moves the current menu item in the direction
specified by \code{direction}.

\describe{
\item{\code{menushell}}{the object which received the signal.}
\item{\code{direction}}{the direction to move.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{move-selected(menu.shell, distance, user.data)}}{
The ::move-selected signal is emitted to move the selection to
another item.
  Since 2.12

\describe{
\item{\code{menu.shell}}{the object on which the signal is emitted}
\item{\code{distance}}{+1 to move to the next item, -1 to move to the previous}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} to stop the signal emission, \code{FALSE} to continue

}
\item{\code{selection-done(menushell, user.data)}}{
This signal is emitted when a selection has been completed within a menu
shell.

\describe{
\item{\code{menushell}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{\item{\verb{take-focus} [logical : Read / Write]}{

A boolean that determines whether the menu and its submenus grab the
keyboard focus. See \code{\link{gtkMenuShellSetTakeFocus}} and
\code{\link{gtkMenuShellGetTakeFocus}}.
  Default value: TRUE  Since 2.8

}}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkMenuShell.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
