\alias{GtkToolItem}
\alias{gtkToolItem}
\name{GtkToolItem}
\title{GtkToolItem}
\description{The base class of widgets that can be added to GtkToolbar}
\section{Methods and Functions}{
\code{\link{gtkToolItemNew}(show = TRUE)}\cr
\code{\link{gtkToolItemSetHomogeneous}(object, homogeneous)}\cr
\code{\link{gtkToolItemGetHomogeneous}(object)}\cr
\code{\link{gtkToolItemSetExpand}(object, expand)}\cr
\code{\link{gtkToolItemGetExpand}(object)}\cr
\code{\link{gtkToolItemSetTooltip}(object, tooltips, tip.text = NULL, tip.private = NULL)}\cr
\code{\link{gtkToolItemSetUseDragWindow}(object, use.drag.window)}\cr
\code{\link{gtkToolItemGetUseDragWindow}(object)}\cr
\code{\link{gtkToolItemSetVisibleHorizontal}(object, visible.horizontal)}\cr
\code{\link{gtkToolItemGetVisibleHorizontal}(object)}\cr
\code{\link{gtkToolItemSetVisibleVertical}(object, visible.vertical)}\cr
\code{\link{gtkToolItemGetVisibleVertical}(object)}\cr
\code{\link{gtkToolItemSetIsImportant}(object, is.important)}\cr
\code{\link{gtkToolItemGetIsImportant}(object)}\cr
\code{\link{gtkToolItemGetIconSize}(object)}\cr
\code{\link{gtkToolItemGetOrientation}(object)}\cr
\code{\link{gtkToolItemGetToolbarStyle}(object)}\cr
\code{\link{gtkToolItemGetReliefStyle}(object)}\cr
\code{\link{gtkToolItemRetrieveProxyMenuItem}(object)}\cr
\code{\link{gtkToolItemGetProxyMenuItem}(object, menu.item.id)}\cr
\code{\link{gtkToolItemSetProxyMenuItem}(object, menu.item.id, menu.item = NULL)}\cr
\code{\link{gtkToolItemRebuildMenu}(object)}\cr
\code{gtkToolItem(show = TRUE)}
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkWidget}
                     +----\link{GtkContainer}
                           +----\link{GtkBin}
                                 +----GtkToolItem
                                       +----\link{GtkToolButton}
                                       +----\link{GtkSeparatorToolItem}}}
\section{Interfaces}{GtkToolItem implements
 AtkImplementorIface.}
\section{Detailed Description}{\code{\link{GtkToolItem}}s are widgets that can appear on a toolbar. To
create a toolbar item that contain something else than a button, use
\code{\link{gtkToolItemNew}}. Use \code{\link{gtkContainerAdd}} to add a child
widget to the tool item.
  
For toolbar items that contain buttons, see the \code{\link{GtkToolButton}},
\code{\link{GtkToggleToolButton}} and \code{\link{GtkRadioToolButton}} classes.
  \code{\link{GtkToolbar}}  }
\section{Structures}{\describe{\item{\code{GtkToolItem}}{
The GtkToolItem struct contains only private data. It should only be
accessed through the functions described below.

}}}
\section{Convenient Construction}{\code{gtkToolItem} is the equivalent of \code{\link{gtkToolItemNew}}.}
\section{Signals}{\describe{
\item{\code{create-menu-proxy(toolitem, user.data)}}{
This signal is emitted when the toolbar needs information from \code{tool.item}
about whether the item should appear in the toolbar overflow menu. In
response the tool item should either
\itemize{
\item 
\item 
\item 
}
  
The toolbar may cache the result of this signal. When the tool item changes
how it will respond to this signal it must call \code{\link{gtkToolItemRebuildMenu}}
to invalidate the cache and ensure that the toolbar rebuilds its overflow
menu.  

\describe{
\item{\code{toolitem}}{[\code{\link{GtkToolItem}}]  the object the signal was emitted on}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

\emph{Returns:} [logical]  \code{TRUE} if the signal was handled, \code{FALSE} if not

}
\item{\code{set-tooltip(toolitem, tooltips, tip.text, tip.private, user.data)}}{
This signal is emitted when the toolitem's tooltip changes.
Application developers can use \code{\link{gtkToolItemSetTooltip}} to
set the item's tooltip.  

\describe{
\item{\code{toolitem}}{[\code{\link{GtkToolItem}}]  the object the signal was emitted on}
\item{\code{tooltips}}{[\code{\link{GtkTooltips}}]  the \code{\link{GtkTooltips}}}
\item{\code{tip.text}}{[character]  the tooltip text}
\item{\code{tip.private}}{[character]  the tooltip private text}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

\emph{Returns:} [logical]  \code{TRUE} if the signal was handled, \code{FALSE} if not

}
\item{\code{toolbar-reconfigured(toolitem, user.data)}}{
This signal is emitted when some property of the toolbar that the
item is a child of changes. For custom subclasses of \code{\link{GtkToolItem}},
the default handler of this signal use the functions
\itemize{
\item 
\item 
\item 
\item 
}
to find out what the toolbar should look like and change
themselves accordingly.  

\describe{
\item{\code{toolitem}}{[\code{\link{GtkToolItem}}]  the object the signal was emitted on}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\code{is-important} [logical : Read / Write]}{

Whether the toolbar item is considered important. When TRUE, toolbar buttons show text in GTK\_TOOLBAR\_BOTH\_HORIZ mode.  Default value: FALSE

}
\item{\code{visible-horizontal} [logical : Read / Write]}{

Whether the toolbar item is visible when the toolbar is in a horizontal orientation.  Default value: TRUE

}
\item{\code{visible-vertical} [logical : Read / Write]}{

Whether the toolbar item is visible when the toolbar is in a vertical orientation.  Default value: TRUE

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkToolItem.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
