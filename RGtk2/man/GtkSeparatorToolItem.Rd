\alias{GtkSeparatorToolItem}
\alias{gtkSeparatorToolItem}
\name{GtkSeparatorToolItem}
\title{GtkSeparatorToolItem}
\description{A toolbar item that separates groups of other toolbar items}
\usage{gtkSeparatorToolItem(show = TRUE)}
\section{Methods and Functions}{
\link{gtkSeparatorToolItemNew}(show = TRUE)
\link{gtkSeparatorToolItemSetDraw}(object, draw)
\link{gtkSeparatorToolItemGetDraw}(object)
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----\link{GtkBin}
                           +----\link{GtkToolItem}
                                 +----GtkSeparatorToolItem}}
\section{Interfaces}{GtkSeparatorToolItem implements
 AtkImplementorIface.}
\section{Detailed Description}{  A \code{GtkSeparatorItem} is a \code{\link{GtkToolItem}} that separates groups of other
  \code{GtkToolItems}. Depending on the theme, a \code{\link{GtkSeparatorToolItem}} will
  often look like a vertical line on horizontally docked toolbars.
  
If the property "expand" is \code{TRUE} and the property "draw" is \code{FALSE}, a
\code{\link{GtkSeparatorToolItem}} will act as a "spring" that forces other items
to the ends of the toolbar.
  
  Use \code{\link{gtkSeparatorToolItemNew}} to create a new \code{\link{GtkSeparatorToolItem}}.}
\section{Structures}{\describe{\item{\code{GtkSeparatorToolItem}}{
The \code{\link{GtkSeparatorToolItem}} struct contains only private data and
should only be accessed through the functions described below.

}}}
\section{Convenient Construction}{\code{gtkSeparatorToolItem} is the equivalent of \code{\link{gtkSeparatorToolItemNew}}.}
\section{Properties}{\describe{\item{\code{draw} [logical : Read / Write]}{

Whether the separator is drawn, or just blank.  Default value: TRUE

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkSeparatorToolItem.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
