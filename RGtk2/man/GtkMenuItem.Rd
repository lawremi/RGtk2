\alias{GtkMenuItem}
\alias{gtkMenuItem}
\name{GtkMenuItem}
\title{GtkMenuItem}
\description{The widget used for item in menus}
\section{Methods and Functions}{
\code{\link{gtkMenuItemNew}(show = TRUE)}\cr
\code{\link{gtkMenuItemNewWithLabel}(label, show = TRUE)}\cr
\code{\link{gtkMenuItemNewWithMnemonic}(label, show = TRUE)}\cr
\code{\link{gtkMenuItemSetRightJustified}(object, right.justified)}\cr
\code{\link{gtkMenuItemGetRightJustified}(object)}\cr
\code{\link{gtkMenuItemGetLabel}(object)}\cr
\code{\link{gtkMenuItemSetLabel}(object, label)}\cr
\code{\link{gtkMenuItemGetUseUnderline}(object)}\cr
\code{\link{gtkMenuItemSetUseUnderline}(object, setting)}\cr
\code{\link{gtkMenuItemSetSubmenu}(object, submenu)}\cr
\code{\link{gtkMenuItemGetSubmenu}(object)}\cr
\code{\link{gtkMenuItemRemoveSubmenu}(object)}\cr
\code{\link{gtkMenuItemSetAccelPath}(object, accel.path)}\cr
\code{\link{gtkMenuItemGetAccelPath}(object)}\cr
\code{\link{gtkMenuItemSelect}(object)}\cr
\code{\link{gtkMenuItemDeselect}(object)}\cr
\code{\link{gtkMenuItemActivate}(object)}\cr
\code{\link{gtkMenuItemToggleSizeRequest}(object, requisition)}\cr
\code{\link{gtkMenuItemToggleSizeAllocate}(object, allocation)}\cr
\code{gtkMenuItem(label, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBin
                                 +----GtkItem
                                       +----GtkMenuItem
                                             +----GtkCheckMenuItem
                                             +----GtkImageMenuItem
                                             +----GtkSeparatorMenuItem
                                             +----GtkTearoffMenuItem}}
\section{Interfaces}{GtkMenuItem implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkActivatable}}.}
\section{Detailed Description}{The \code{\link{GtkMenuItem}} widget and the derived widgets are the only valid
childs for menus. Their function is to correctly handle highlighting,
alignment, events and submenus.
  
As it derives from \code{\link{GtkBin}} it can hold any valid child widget, altough
only a few are really useful.}
\section{GtkMenuItem as GtkBuildable}{The GtkMenuItem implementation of the GtkBuildable interface
supports adding a submenu by specifying "submenu" as the "type"
attribute of a <child> element.
  
 \emph{A UI definition fragment with submenus}\preformatted{<object class="GtkMenuItem">
  <child type="submenu">
    <object class="GtkMenu"/>
  </child>
</object>
}}
\section{Structures}{\describe{\item{\verb{GtkMenuItem}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkMenuItem} is the result of collapsing the constructors of \code{GtkMenuItem} (\code{\link{gtkMenuItemNew}}, \code{\link{gtkMenuItemNewWithLabel}}, \code{\link{gtkMenuItemNewWithMnemonic}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Signals}{\describe{
\item{\code{activate(menuitem, user.data)}}{
Emitted when the item is activated.

\describe{
\item{\code{menuitem}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{activate-item(menuitem, user.data)}}{
Emitted when the item is activated, but also if the menu item has a
submenu. For normal applications, the relevant signal is "activate".

\describe{
\item{\code{menuitem}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{toggle-size-allocate(menuitem, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{menuitem}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{toggle-size-request(menuitem, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{menuitem}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\verb{accel-path} [character : *                : Read / Write]}{

Sets the accelerator path of the menu item, through which runtime
changes of the menu item's accelerator caused by the user can be
identified and saved to persistant storage.
  Default value: NULL  Since 2.14

}
\item{\verb{label} [character : *                : Read / Write]}{

The text for the child label.
  Default value: ""  Since 2.16

}
\item{\verb{right-justified} [logical : Read / Write]}{

Sets whether the menu item appears justified at the right side of a menu bar.
  Default value: FALSE  Since 2.14

}
\item{\verb{submenu} [\code{\link{GtkMenu}} : *              : Read / Write]}{

The submenu attached to the menu item, or NULL if it has none.
  Since 2.12

}
\item{\verb{use-underline} [logical : Read / Write]}{

\code{TRUE} if underlines in the text indicate mnemonics
  Default value: FALSE  Since 2.16

}
}}
\section{Style Properties}{\describe{
\item{\verb{arrow-scaling} [numeric : Read]}{

Amount of space used up by arrow, relative to the menu item's font size.  Allowed values: [0,2]  Default value: 0.8

}
\item{\verb{arrow-spacing} [integer : Read]}{

Space between label and arrow.  Allowed values: >= 0  Default value: 10

}
\item{\verb{horizontal-padding} [integer : Read]}{

Padding to left and right of the menu item.  Allowed values: >= 0  Default value: 3

}
\item{\verb{selected-shadow-type} [\code{\link{GtkShadowType}} : Read]}{

Shadow type when item is selected.  Default value: GTK_SHADOW_NONE

}
\item{\verb{toggle-spacing} [integer : Read]}{

Space between icon and label.  Allowed values: >= 0  Default value: 5

}
\item{\verb{width-chars} [integer : Read]}{

The minimum desired width of the menu item in characters.
  Allowed values: >= 0  Default value: 12  Since 2.14

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkMenuItem.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
