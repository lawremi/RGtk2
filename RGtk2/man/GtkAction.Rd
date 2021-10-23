\alias{GtkAction}
\alias{gtkAction}
\name{GtkAction}
\title{GtkAction}
\description{An action which can be triggered by a menu or toolbar item}
\section{Methods and Functions}{
\code{\link{gtkActionNew}(name = NULL, label = NULL, tooltip = NULL, stock.id = NULL)}\cr
\code{\link{gtkActionGetName}(object)}\cr
\code{\link{gtkActionIsSensitive}(object)}\cr
\code{\link{gtkActionGetSensitive}(object)}\cr
\code{\link{gtkActionSetSensitive}(object, sensitive)}\cr
\code{\link{gtkActionIsVisible}(object)}\cr
\code{\link{gtkActionGetVisible}(object)}\cr
\code{\link{gtkActionSetVisible}(object, visible)}\cr
\code{\link{gtkActionActivate}(object)}\cr
\code{\link{gtkActionCreateIcon}(object, icon.size)}\cr
\code{\link{gtkActionCreateMenuItem}(object)}\cr
\code{\link{gtkActionCreateToolItem}(object)}\cr
\code{\link{gtkActionCreateMenu}(object)}\cr
\code{\link{gtkActionConnectProxy}(object, proxy)}\cr
\code{\link{gtkActionConnectProxy}(object, proxy)}\cr
\code{\link{gtkActionDisconnectProxy}(object, proxy)}\cr
\code{\link{gtkActionDisconnectProxy}(object, proxy)}\cr
\code{\link{gtkActionGetProxies}(object)}\cr
\code{\link{gtkActionConnectAccelerator}(object)}\cr
\code{\link{gtkActionDisconnectAccelerator}(object)}\cr
\code{\link{gtkActionBlockActivate}(object)}\cr
\code{\link{gtkActionUnblockActivate}(object)}\cr
\code{\link{gtkActionBlockActivateFrom}(object, proxy)}\cr
\code{\link{gtkActionBlockActivateFrom}(object, proxy)}\cr
\code{\link{gtkActionUnblockActivateFrom}(object, proxy)}\cr
\code{\link{gtkActionUnblockActivateFrom}(object, proxy)}\cr
\code{\link{gtkActionGetAlwaysShowImage}(object)}\cr
\code{\link{gtkActionSetAlwaysShowImage}(object, always.show)}\cr
\code{\link{gtkActionGetAccelPath}(object)}\cr
\code{\link{gtkActionSetAccelPath}(object, accel.path)}\cr
\code{\link{gtkActionGetAccelClosure}(object)}\cr
\code{\link{gtkActionSetAccelGroup}(object, accel.group)}\cr
\code{\link{gtkActionSetLabel}(object, label)}\cr
\code{\link{gtkActionGetLabel}(object)}\cr
\code{\link{gtkActionSetShortLabel}(object, short.label)}\cr
\code{\link{gtkActionGetShortLabel}(object)}\cr
\code{\link{gtkActionSetTooltip}(object, tooltip)}\cr
\code{\link{gtkActionGetTooltip}(object)}\cr
\code{\link{gtkActionSetStockId}(object, stock.id)}\cr
\code{\link{gtkActionGetStockId}(object)}\cr
\code{\link{gtkActionSetGicon}(object, icon)}\cr
\code{\link{gtkActionGetGicon}(object)}\cr
\code{\link{gtkActionSetIconName}(object, icon.name)}\cr
\code{\link{gtkActionGetIconName}(object)}\cr
\code{\link{gtkActionSetVisibleHorizontal}(object, visible.horizontal)}\cr
\code{\link{gtkActionGetVisibleHorizontal}(object)}\cr
\code{\link{gtkActionSetVisibleVertical}(object, visible.vertical)}\cr
\code{\link{gtkActionGetVisibleVertical}(object)}\cr
\code{\link{gtkActionSetIsImportant}(object, is.important)}\cr
\code{\link{gtkActionGetIsImportant}(object)}\cr
\code{gtkAction(name = NULL, label = NULL, tooltip = NULL, stock.id = NULL)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GtkAction
         +----GtkToggleAction
         +----GtkRecentAction}}
\section{Interfaces}{GtkAction implements
 \code{\link{GtkBuildable}}.}
\section{Detailed Description}{Actions represent operations that the user can be perform, along with
some information how it should be presented in the interface. Each action
provides methods to create icons, menu items and toolbar items representing
itself.
  
As well as the callback that is called when the action gets activated, the
following also gets associated with the action:
\itemize{
\item a name (not translated, for path lookup)
\item a label (translated, for display)
\item an accelerator
\item whether label indicates a stock id
\item a tooltip (optional, translated)
\item a toolbar label (optional, shorter than label)
}
The action will also have some state information:
\itemize{
\item visible (shown/hidden)
\item sensitive (enabled/disabled)
}
  
Apart from regular actions, there are \code{\link{GtkToggleAction}}, which can be toggled between two states and \code{\link{GtkRadioAction}}, of which only one in a group
can be in the "active" state. Other actions can be implemented as \code{\link{GtkAction}}
subclasses.
  
Each action can have one or more proxy menu item, toolbar button or
other proxy widgets.  Proxies mirror the state of the action (text
label, tooltip, icon, visible, sensitive, etc), and should change when
the action's state changes. When the proxy is activated, it should
activate its action.}
\section{Structures}{\describe{\item{\verb{GtkAction}}{
The \code{GtkAction} struct contains only private members
and should not be accessed directly.

}}}
\section{Convenient Construction}{\code{gtkAction} is the equivalent of \code{\link{gtkActionNew}}.}
\section{Signals}{\describe{\item{\code{activate(action, user.data)}}{
The "activate" signal is emitted when the action is activated.
  Since 2.4

\describe{
\item{\code{action}}{the \code{\link{GtkAction}}}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}}}
\section{Properties}{\describe{
\item{\verb{action-group} [\code{\link{GtkActionGroup}} : *       : Read / Write]}{

The GtkActionGroup this GtkAction is associated with, or NULL (for internal use).

}
\item{\verb{always-show-image} [logical : Read / Write / Construct]}{

If \code{TRUE}, the action's menu item proxies will ignore the \verb{"gtk-menu-images"}
setting and always show their image, if available.
  
Use this property if the menu item would be useless or hard to use
without their image.
  Default value: FALSE  Since 2.20

}
\item{\verb{gicon} [\code{\link{GIcon}} : *                : Read / Write]}{

The \code{\link{GIcon}} displayed in the \code{\link{GtkAction}}.
  
Note that the stock icon is preferred, if the \verb{"stock-id"}
property holds the id of an existing stock icon.
  
This is an appearance property and thus only applies if
\verb{"use-action-appearance"} is \code{TRUE}.
  Since 2.16

}
\item{\verb{hide-if-empty} [logical : Read / Write]}{

When TRUE, empty menu proxies for this action are hidden.  Default value: TRUE

}
\item{\verb{icon-name} [character : *                : Read / Write]}{

The name of the icon from the icon theme.
  
Note that the stock icon is preferred, if the \verb{"stock-id"}
property holds the id of an existing stock icon, and the \code{\link{GIcon}} is
preferred if the \verb{"gicon"} property is set.
  
This is an appearance property and thus only applies if
\verb{"use-action-appearance"} is \code{TRUE}.
  Default value: NULL  Since 2.10

}
\item{\verb{is-important} [logical : Read / Write]}{

Whether the action is considered important. When TRUE, toolitem proxies for this action show text in GTK_TOOLBAR_BOTH_HORIZ mode.  Default value: FALSE

}
\item{\verb{label} [character : *                : Read / Write]}{

The label used for menu items and buttons that activate
this action. If the label is \code{NULL}, GTK+ uses the stock
label specified via the stock-id property.
  
This is an appearance property and thus only applies if
\verb{"use-action-appearance"} is \code{TRUE}.
  Default value: NULL

}
\item{\verb{name} [character : *                : Read / Write / Construct Only]}{

A unique name for the action.  Default value: NULL

}
\item{\verb{sensitive} [logical : Read / Write]}{

Whether the action is enabled.  Default value: TRUE

}
\item{\verb{short-label} [character : *                : Read / Write]}{

A shorter label that may be used on toolbar buttons.
  
This is an appearance property and thus only applies if
\verb{"use-action-appearance"} is \code{TRUE}.
  Default value: NULL

}
\item{\verb{stock-id} [character : *                : Read / Write]}{

The stock icon displayed in widgets representing this action.
  
This is an appearance property and thus only applies if
\verb{"use-action-appearance"} is \code{TRUE}.
  Default value: NULL

}
\item{\verb{tooltip} [character : *                : Read / Write]}{

A tooltip for this action.  Default value: NULL

}
\item{\verb{visible} [logical : Read / Write]}{

Whether the action is visible.  Default value: TRUE

}
\item{\verb{visible-horizontal} [logical : Read / Write]}{

Whether the toolbar item is visible when the toolbar is in a horizontal orientation.  Default value: TRUE

}
\item{\verb{visible-overflown} [logical : Read / Write]}{

When \code{TRUE}, toolitem proxies for this action are represented in the
toolbar overflow menu.
  Default value: TRUE  Since 2.6

}
\item{\verb{visible-vertical} [logical : Read / Write]}{

Whether the toolbar item is visible when the toolbar is in a vertical orientation.  Default value: TRUE

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkAction.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkActionGroup}}
\code{\link{GtkUIManager}}
}
\keyword{internal}
