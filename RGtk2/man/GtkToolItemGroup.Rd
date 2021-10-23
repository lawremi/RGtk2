\alias{GtkToolItemGroup}
\alias{gtkToolItemGroup}
\name{GtkToolItemGroup}
\title{GtkToolItemGroup}
\description{A sub container used in a tool palette}
\section{Methods and Functions}{
\code{\link{gtkToolItemGroupGetCollapsed}(object)}\cr
\code{\link{gtkToolItemGroupGetDropItem}(object, x, y)}\cr
\code{\link{gtkToolItemGroupGetEllipsize}(object)}\cr
\code{\link{gtkToolItemGroupGetItemPosition}(object, item)}\cr
\code{\link{gtkToolItemGroupGetNItems}(object)}\cr
\code{\link{gtkToolItemGroupGetLabel}(object)}\cr
\code{\link{gtkToolItemGroupGetLabelWidget}(object)}\cr
\code{\link{gtkToolItemGroupGetNthItem}(object, index)}\cr
\code{\link{gtkToolItemGroupGetHeaderRelief}(object)}\cr
\code{\link{gtkToolItemGroupInsert}(object, item, position)}\cr
\code{\link{gtkToolItemGroupNew}(label, show = TRUE)}\cr
\code{\link{gtkToolItemGroupSetCollapsed}(object, collapsed)}\cr
\code{\link{gtkToolItemGroupSetEllipsize}(object, ellipsize)}\cr
\code{\link{gtkToolItemGroupSetItemPosition}(object, item, position)}\cr
\code{\link{gtkToolItemGroupSetLabel}(object, label)}\cr
\code{\link{gtkToolItemGroupSetLabelWidget}(object, label.widget)}\cr
\code{\link{gtkToolItemGroupSetHeaderRelief}(object, style)}\cr
\code{gtkToolItemGroup(label, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkToolItemGroup}}
\section{Interfaces}{GtkToolItemGroup implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkToolShell}}.}
\section{Detailed Description}{A \code{\link{GtkToolItemGroup}} is used together with \code{\link{GtkToolPalette}} to add
\code{\link{GtkToolItem}}s to a palette like container with different
categories and drag and drop support.}
\section{Structures}{\describe{\item{\verb{GtkToolItemGroup}}{
This should not be accessed directly. Use the accessor functions below.

}}}
\section{Convenient Construction}{\code{gtkToolItemGroup} is the equivalent of \code{\link{gtkToolItemGroupNew}}.}
\section{Properties}{\describe{
\item{\verb{collapsed} [logical : Read / Write]}{

Wether the group has been collapsed and items are hidden.  Default value: FALSE

}
\item{\verb{ellipsize} [\code{\link{PangoEllipsizeMode}} : Read / Write]}{

Ellipsize for item group headers.  Default value: PANGO_ELLIPSIZE_NONE

}
\item{\verb{header-relief} [\code{\link{GtkReliefStyle}} : Read / Write]}{

Relief of the group header button.  Default value: GTK_RELIEF_NORMAL

}
\item{\verb{label} [character : *                : Read / Write]}{

The human-readable title of this item group.  Default value: ""

}
\item{\verb{label-widget} [\code{\link{GtkWidget}} : *            : Read / Write]}{

A widget to display in place of the usual label.

}
}}
\section{Style Properties}{\describe{
\item{\verb{expander-size} [integer : Read]}{

Size of the expander arrow.  Allowed values: >= 0  Default value: 16

}
\item{\verb{header-spacing} [integer : Read]}{

Spacing between expander arrow and caption.  Allowed values: >= 0  Default value: 2

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkToolItemGroup.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
