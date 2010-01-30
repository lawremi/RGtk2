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
\code{\link{gtkActionDisconnectProxy}(object, proxy)}\cr
\code{\link{gtkActionGetProxies}(object)}\cr
\code{\link{gtkActionConnectAccelerator}(object)}\cr
\code{\link{gtkActionDisconnectAccelerator}(object)}\cr
\code{\link{gtkActionBlockActivateFrom}(object, proxy)}\cr
\code{\link{gtkActionUnblockActivateFrom}(object, proxy)}\cr
\code{\link{gtkActionGetAccelPath}(object)}\cr
\code{\link{gtkActionSetAccelPath}(object, accel.path)}\cr
\code{\link{gtkActionGetAccelClosure}(object)}\cr
\code{\link{gtkActionSetAccelGroup}(object, accel.group)}\cr
\code{gtkAction(name = NULL, label = NULL, tooltip = NULL, stock.id = NULL)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GtkAction
         +----GtkToggleAction
         +----GtkRecentAction}}
\section{Interfaces}{GtkAction implements
 \verb{\link{GtkBuildable}}.}
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
  
Apart from regular actions, there are \verb{\link{GtkToggleAction}}, which can be toggled between two states and \verb{\link{GtkRadioAction}}, of which only one in a group 
can be in the "active" state. Other actions can be implemented as \verb{\link{GtkAction}} 
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

  Since  2.4

\describe{
\item{\code{action}}{[\verb{\link{GtkAction}}]  the \verb{\link{GtkAction}}}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}}}
\section{Properties}{\describe{
\item{\verb{action-group} [\verb{\link{GtkActionGroup}} : *       : Read / Write]}{

The GtkActionGroup this GtkAction is associated with, or NULL (for internal use).

}
\item{\verb{hide-if-empty} [logical : Read / Write]}{

When TRUE, empty menu proxies for this action are hidden.  Default value: TRUE

}
\item{\verb{icon-name} [character : *                : Read / Write]}{

The name of the icon from the icon theme. 
Note that the stock icon is preferred, if
the ::stock-id property holds the id of an
existing stock icon.  

  Default value: NULL  Since  2.10

}
\item{\verb{is-important} [logical : Read / Write]}{

Whether the action is considered important. When TRUE, toolitem proxies for this action show text in GTK_TOOLBAR_BOTH_HORIZ mode.  Default value: FALSE

}
\item{\verb{label} [character : *                : Read / Write]}{

The label used for menu items and buttons that activate
this action. If the label is \code{NULL}, GTK+ uses the stock 
label specified via the stock-id property.  

  Default value: NULL

}
\item{\verb{name} [character : *                : Read / Write / Construct Only]}{

A unique name for the action.  Default value: NULL

}
\item{\verb{sensitive} [logical : Read / Write]}{

Whether the action is enabled.  Default value: TRUE

}
\item{\verb{short-label} [character : *                : Read / Write]}{

A shorter label that may be used on toolbar buttons.  Default value: NULL

}
\item{\verb{stock-id} [character : *                : Read / Write]}{

The stock icon displayed in widgets representing this action.  Default value: NULL

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

  Default value: TRUE  Since  2.6

}
\item{\verb{visible-vertical} [logical : Read / Write]}{

Whether the toolbar item is visible when the toolbar is in a vertical orientation.  Default value: TRUE

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkAction.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\verb{\link{GtkActionGroup}}
\verb{\link{GtkUIManager}}
}
\keyword{internal}
