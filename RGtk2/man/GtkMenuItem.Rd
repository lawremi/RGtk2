\alias{GtkMenuItem}
\alias{gtkMenuItem}
\name{GtkMenuItem}
\title{GtkMenuItem}
\description{The widget used for item in menus}
\usage{gtkMenuItem(label, show = TRUE)}
\section{Methods and Functions}{
\link{gtkMenuItemNew}(show = TRUE)
\link{gtkMenuItemNewWithLabel}(label, show = TRUE)
\link{gtkMenuItemNewWithMnemonic}(label, show = TRUE)
\link{gtkMenuItemSetRightJustified}(object, right.justified)
\link{gtkMenuItemSetSubmenu}(object, submenu)
\link{gtkMenuItemSetAccelPath}(object, accel.path)
\link{gtkMenuItemRemoveSubmenu}(object)
\link{gtkMenuItemSelect}(object)
\link{gtkMenuItemDeselect}(object)
\link{gtkMenuItemActivate}(object)
\link{gtkMenuItemToggleSizeRequest}(object, requisition)
\link{gtkMenuItemToggleSizeAllocate}(object, allocation)
\link{gtkMenuItemGetRightJustified}(object)
\link{gtkMenuItemGetSubmenu}(object)
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----\link{GtkBin}
                           +----\link{GtkItem}
                                 +----GtkMenuItem
                                       +----\link{GtkCheckMenuItem}
                                       +----\link{GtkImageMenuItem}
                                       +----\link{GtkSeparatorMenuItem}
                                       +----\link{GtkTearoffMenuItem}}}
\section{Interfaces}{GtkMenuItem implements
 AtkImplementorIface.}
\section{Detailed Description}{The \code{\link{GtkMenuItem}} widget and the derived widgets are the only valid
childs for menus. Their function is to correctly handle highlighting,
alignment, events and submenus.
  
As it derives from \code{\link{GtkBin}} it can hold any valid child widget, altough
only a few are really useful.}
\section{Structures}{\describe{\item{\code{GtkMenuItem}}{\emph{undocumented
}}}}
\section{Convenient Construction}{\code{gtkMenuItem} is the result of collapsing the constructors of \code{GtkMenuItem} (\code{\link{gtkMenuItemNew}}, \code{\link{gtkMenuItemNewWithLabel}}, \code{\link{gtkMenuItemNewWithMnemonic}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Signals}{\describe{
\item{\code{activate(menuitem, user.data)}}{
Emitted when the item is activated.

\describe{
\item{\code{menuitem}}{[\code{\link{GtkMenuItem}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{activate-item(menuitem, user.data)}}{
Emitted when the item is activated, but also if the menu item has a
submenu. For normal applications, the relevant signal is "activate".

\describe{
\item{\code{menuitem}}{[\code{\link{GtkMenuItem}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{toggle-size-allocate(menuitem, arg1, user.data)}}{


\describe{
\item{\code{menuitem}}{[\code{\link{GtkMenuItem}}] the object which received the signal.}
\item{\code{arg1}}{[integer] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{toggle-size-request(menuitem, arg1, user.data)}}{


\describe{
\item{\code{menuitem}}{[\code{\link{GtkMenuItem}}] the object which received the signal.}
\item{\code{arg1}}{[R object] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
}}
\section{Style Properties}{\describe{
\item{\code{arrow-spacing} [integer : Read]}{

Space between label and arrow.  Allowed values: >= 0  Default value: 10

}
\item{\code{horizontal-padding} [integer : Read]}{

Padding to left and right of the menu item.  Allowed values: >= 0  Default value: 3

}
\item{\code{selected-shadow-type} [\code{\link{GtkShadowType}} : Read]}{

Shadow type when item is selected.  Default value: GTK_SHADOW_NONE

}
\item{\code{toggle-spacing} [integer : Read]}{

Space between icon and label.  Allowed values: >= 0  Default value: 5

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkMenuItem.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
