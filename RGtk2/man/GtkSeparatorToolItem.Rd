\alias{GtkSeparatorToolItem}
\alias{gtkSeparatorToolItem}
\name{GtkSeparatorToolItem}
\title{GtkSeparatorToolItem}
\description{A toolbar item that separates groups of other toolbar items}
\section{Methods and Functions}{
\code{\link{gtkSeparatorToolItemNew}(show = TRUE)}\cr
\code{\link{gtkSeparatorToolItemSetDraw}(object, draw)}\cr
\code{\link{gtkSeparatorToolItemGetDraw}(object)}\cr
\code{gtkSeparatorToolItem(show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBin
                                 +----GtkToolItem
                                       +----GtkSeparatorToolItem}}
\section{Interfaces}{GtkSeparatorToolItem implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkActivatable}}.}
\section{Detailed Description}{  A \verb{GtkSeparatorItem} is a \code{\link{GtkToolItem}} that separates groups of other
  \verb{GtkToolItems}. Depending on the theme, a \code{\link{GtkSeparatorToolItem}} will
  often look like a vertical line on horizontally docked toolbars.
  
If the property "expand" is \verb{TRUE} and the property "draw" is \verb{FALSE}, a
\code{\link{GtkSeparatorToolItem}} will act as a "spring" that forces other items
to the ends of the toolbar.
  
  Use \code{\link{gtkSeparatorToolItemNew}} to create a new \code{\link{GtkSeparatorToolItem}}.}
\section{Structures}{\describe{\item{\verb{GtkSeparatorToolItem}}{
The \code{\link{GtkSeparatorToolItem}} struct contains only private data and
should only be accessed through the functions described below.

}}}
\section{Convenient Construction}{\code{gtkSeparatorToolItem} is the equivalent of \code{\link{gtkSeparatorToolItemNew}}.}
\section{Properties}{\describe{\item{\verb{draw} [logical : Read / Write]}{

Whether the separator is drawn, or just blank.  Default value: TRUE

}}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkSeparatorToolItem.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
