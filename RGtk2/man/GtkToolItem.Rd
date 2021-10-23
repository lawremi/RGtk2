\alias{GtkToolItem}
\alias{gtkToolItem}
\name{GtkToolItem}
\title{GtkToolItem}
\description{The base class of widgets that can be added to GtkToolShell}
\section{Methods and Functions}{
\code{\link{gtkToolItemNew}(show = TRUE)}\cr
\code{\link{gtkToolItemSetHomogeneous}(object, homogeneous)}\cr
\code{\link{gtkToolItemGetHomogeneous}(object)}\cr
\code{\link{gtkToolItemSetExpand}(object, expand)}\cr
\code{\link{gtkToolItemGetExpand}(object)}\cr
\code{\link{gtkToolItemSetTooltip}(object, tooltips, tip.text = NULL, tip.private = NULL)}\cr
\code{\link{gtkToolItemSetTooltip}(object, tooltips, tip.text = NULL, tip.private = NULL)}\cr
\code{\link{gtkToolItemSetTooltipText}(object, text)}\cr
\code{\link{gtkToolItemSetTooltipMarkup}(object, markup)}\cr
\code{\link{gtkToolItemSetUseDragWindow}(object, use.drag.window)}\cr
\code{\link{gtkToolItemGetUseDragWindow}(object)}\cr
\code{\link{gtkToolItemSetVisibleHorizontal}(object, visible.horizontal)}\cr
\code{\link{gtkToolItemGetVisibleHorizontal}(object)}\cr
\code{\link{gtkToolItemSetVisibleVertical}(object, visible.vertical)}\cr
\code{\link{gtkToolItemGetVisibleVertical}(object)}\cr
\code{\link{gtkToolItemSetIsImportant}(object, is.important)}\cr
\code{\link{gtkToolItemGetIsImportant}(object)}\cr
\code{\link{gtkToolItemGetEllipsizeMode}(object)}\cr
\code{\link{gtkToolItemGetIconSize}(object)}\cr
\code{\link{gtkToolItemGetOrientation}(object)}\cr
\code{\link{gtkToolItemGetToolbarStyle}(object)}\cr
\code{\link{gtkToolItemGetReliefStyle}(object)}\cr
\code{\link{gtkToolItemGetTextAlignment}(object)}\cr
\code{\link{gtkToolItemGetTextOrientation}(object)}\cr
\code{\link{gtkToolItemRetrieveProxyMenuItem}(object)}\cr
\code{\link{gtkToolItemGetProxyMenuItem}(object, menu.item.id)}\cr
\code{\link{gtkToolItemSetProxyMenuItem}(object, menu.item.id, menu.item = NULL)}\cr
\code{\link{gtkToolItemRebuildMenu}(object)}\cr
\code{\link{gtkToolItemToolbarReconfigured}(object)}\cr
\code{\link{gtkToolItemGetTextSizeGroup}(object)}\cr
\code{gtkToolItem(show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBin
                                 +----GtkToolItem
                                       +----GtkToolButton
                                       +----GtkSeparatorToolItem}}
\section{Interfaces}{GtkToolItem implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkActivatable}}.}
\section{Detailed Description}{\code{\link{GtkToolItem}}s are widgets that can appear on a toolbar. To
create a toolbar item that contain something else than a button, use
\code{\link{gtkToolItemNew}}. Use \code{\link{gtkContainerAdd}} to add a child
widget to the tool item.
  
For toolbar items that contain buttons, see the \code{\link{GtkToolButton}},
\code{\link{GtkToggleToolButton}} and \code{\link{GtkRadioToolButton}} classes.
  
See the \code{\link{GtkToolbar}} class for a description of the toolbar widget, and
\code{\link{GtkToolShell}} for a description of the tool shell interface.}
\section{Structures}{\describe{\item{\verb{GtkToolItem}}{
The GtkToolItem struct contains only private data.
It should only be accessed through the functions described below.

}}}
\section{Convenient Construction}{\code{gtkToolItem} is the equivalent of \code{\link{gtkToolItemNew}}.}
\section{Signals}{\describe{
\item{\code{create-menu-proxy(tool.item, user.data)}}{
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
\item{\code{tool.item}}{the object the signal was emitted on}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} if the signal was handled, \code{FALSE} if not

}
\item{\code{set-tooltip(tool.item, tooltips, tip.text, tip.private, user.data)}}{
This signal is emitted when the toolitem's tooltip changes.
Application developers can use \code{\link{gtkToolItemSetTooltip}} to
set the item's tooltip.

\describe{
\item{\code{tool.item}}{the object the signal was emitted on}
\item{\code{tooltips}}{the \code{\link{GtkTooltips}}}
\item{\code{tip.text}}{the tooltip text}
\item{\code{tip.private}}{the tooltip private text}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} if the signal was handled, \code{FALSE} if not

}
\item{\code{toolbar-reconfigured(tool.item, user.data)}}{
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
\item{\code{tool.item}}{the object the signal was emitted on}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\verb{is-important} [logical : Read / Write]}{

Whether the toolbar item is considered important. When TRUE, toolbar buttons show text in GTK_TOOLBAR_BOTH_HORIZ mode.  Default value: FALSE

}
\item{\verb{visible-horizontal} [logical : Read / Write]}{

Whether the toolbar item is visible when the toolbar is in a horizontal orientation.  Default value: TRUE

}
\item{\verb{visible-vertical} [logical : Read / Write]}{

Whether the toolbar item is visible when the toolbar is in a vertical orientation.  Default value: TRUE

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkToolItem.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
