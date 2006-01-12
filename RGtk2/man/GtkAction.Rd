\alias{GtkAction}
\alias{gtkAction}
\name{GtkAction}
\title{GtkAction}
\description{An action which can be triggered by a menu or toolbar item}
\usage{
\link{gtkActionNew}(name = NULL, label = NULL, tooltip = NULL, stock.id = NULL)
\link{gtkActionGetName}(object)
\link{gtkActionIsSensitive}(object)
\link{gtkActionGetSensitive}(object)
\link{gtkActionSetSensitive}(object, sensitive)
\link{gtkActionIsVisible}(object)
\link{gtkActionGetVisible}(object)
\link{gtkActionSetVisible}(object, visible)
\link{gtkActionActivate}(object)
\link{gtkActionCreateIcon}(object, icon.size)
\link{gtkActionCreateMenuItem}(object)
\link{gtkActionCreateToolItem}(object)
\link{gtkActionConnectProxy}(object, proxy)
\link{gtkActionDisconnectProxy}(object, proxy)
\link{gtkActionGetProxies}(object)
\link{gtkActionConnectAccelerator}(object)
\link{gtkActionDisconnectAccelerator}(object)
\link{gtkActionBlockActivateFrom}(object, proxy)
\link{gtkActionUnblockActivateFrom}(object, proxy)
\link{gtkActionGetAccelPath}(object)
\link{gtkActionSetAccelPath}(object, accel.path)
\link{gtkActionGetAccelClosure}(object)
\link{gtkActionSetAccelGroup}(object, accel.group)
gtkAction(name = NULL, label = NULL, tooltip = NULL, stock.id = NULL)
}
\details{Actions represent operations that the user can be perform, along with
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
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GtkAction
         +----\link{GtkToggleAction}}}
\section{Structures}{\describe{\item{\code{GtkAction}}{
The \code{GtkAction} struct contains only private members
and should not be accessed directly.

}}}
\section{Convenient Construction}{\code{gtkAction} is the equivalent of \code{\link{gtkActionNew}}.}
\section{Signals}{\describe{\item{\code{activate(action, user.data)}}{
The "activate" signal is emitted when the action is activated.  

  Since  2.4

\describe{
\item{\code{action}}{[\code{\link{GtkAction}}]  the \code{\link{GtkAction}}}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}}}
\section{Properties}{\describe{
\item{\code{action-group} [\code{\link{GtkActionGroup}} : Read / Write]}{

The GtkActionGroup this GtkAction is associated with, or NULL (for internal use).

}
\item{\code{hide-if-empty} [logical : Read / Write]}{

When TRUE, empty menu proxies for this action are hidden.  Default value: TRUE

}
\item{\code{is-important} [logical : Read / Write]}{

Whether the action is considered important. When TRUE, toolitem proxies for this action show text in GTK_TOOLBAR_BOTH_HORIZ mode.  Default value: FALSE

}
\item{\code{label} [character : Read / Write]}{

The label used for menu items and buttons that activate this action.  Default value: NULL

}
\item{\code{name} [character : Read / Write / Construct Only]}{

A unique name for the action.  Default value: NULL

}
\item{\code{sensitive} [logical : Read / Write]}{

Whether the action is enabled.  Default value: TRUE

}
\item{\code{short-label} [character : Read / Write]}{

A shorter label that may be used on toolbar buttons.  Default value: NULL

}
\item{\code{stock-id} [character : Read / Write]}{

The stock icon displayed in widgets representing this action.  Default value: NULL

}
\item{\code{tooltip} [character : Read / Write]}{

A tooltip for this action.  Default value: NULL

}
\item{\code{visible} [logical : Read / Write]}{

Whether the action is visible.  Default value: TRUE

}
\item{\code{visible-horizontal} [logical : Read / Write]}{

Whether the toolbar item is visible when the toolbar is in a horizontal orientation.  Default value: TRUE

}
\item{\code{visible-overflown} [logical : Read / Write]}{

When \code{TRUE}, toolitem proxies for this action are represented in the 
toolbar overflow menu.  

  Default value: TRUE  Since  2.6

}
\item{\code{visible-vertical} [logical : Read / Write]}{

Whether the toolbar item is visible when the toolbar is in a vertical orientation.  Default value: TRUE

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkAction.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkActionGroup}}
\code{\link{GtkUIManager}}
}
\keyword{internal}
