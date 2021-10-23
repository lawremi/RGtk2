\alias{GtkImageMenuItem}
\alias{gtkImageMenuItem}
\name{GtkImageMenuItem}
\title{GtkImageMenuItem}
\description{A menu item with an icon}
\section{Methods and Functions}{
\code{\link{gtkImageMenuItemSetImage}(object, image = NULL)}\cr
\code{\link{gtkImageMenuItemGetImage}(object)}\cr
\code{\link{gtkImageMenuItemNew}(show = TRUE)}\cr
\code{\link{gtkImageMenuItemNewFromStock}(stock.id, accel.group, show = TRUE)}\cr
\code{\link{gtkImageMenuItemNewWithLabel}(label, show = TRUE)}\cr
\code{\link{gtkImageMenuItemNewWithMnemonic}(label, show = TRUE)}\cr
\code{\link{gtkImageMenuItemGetUseStock}(object)}\cr
\code{\link{gtkImageMenuItemSetUseStock}(object, use.stock)}\cr
\code{\link{gtkImageMenuItemGetAlwaysShowImage}(object)}\cr
\code{\link{gtkImageMenuItemSetAlwaysShowImage}(object, always.show)}\cr
\code{\link{gtkImageMenuItemSetAccelGroup}(object, accel.group)}\cr
\code{gtkImageMenuItem(label, stock.id, accel.group, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBin
                                 +----GtkItem
                                       +----GtkMenuItem
                                             +----GtkImageMenuItem}}
\section{Interfaces}{GtkImageMenuItem implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkActivatable}}.}
\section{Detailed Description}{A GtkImageMenuItem is a menu item which has an icon next to the text label.
  
Note that the user can disable display of menu icons, so make sure to still
fill in the text label.}
\section{Structures}{\describe{\item{\verb{GtkImageMenuItem}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkImageMenuItem} is the result of collapsing the constructors of \code{GtkImageMenuItem} (\code{\link{gtkImageMenuItemNew}}, \code{\link{gtkImageMenuItemNewWithLabel}}, \code{\link{gtkImageMenuItemNewWithMnemonic}}, \code{\link{gtkImageMenuItemNewFromStock}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Properties}{\describe{
\item{\verb{accel-group} [\code{\link{GtkAccelGroup}} : *        : Write]}{

The Accel Group to use for stock accelerator keys
  Since 2.16

}
\item{\verb{always-show-image} [logical : Read / Write / Construct]}{

If \code{TRUE}, the menu item will ignore the \verb{"gtk-menu-images"}
setting and always show the image, if available.
  
Use this property if the menuitem would be useless or hard to use
without the image.
  Default value: FALSE  Since 2.16

}
\item{\verb{image} [\code{\link{GtkWidget}} : *            : Read / Write]}{

Child widget to appear next to the menu text.

}
\item{\verb{use-stock} [logical : Read / Write / Construct]}{

If \code{TRUE}, the label set in the menuitem is used as a
stock id to select the stock item for the item.
  Default value: FALSE  Since 2.16

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkImageMenuItem.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
