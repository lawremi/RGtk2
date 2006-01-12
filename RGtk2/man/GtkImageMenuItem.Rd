\alias{GtkImageMenuItem}
\alias{gtkImageMenuItem}
\name{GtkImageMenuItem}
\title{GtkImageMenuItem}
\description{A menu item with an icon}
\usage{
\link{gtkImageMenuItemSetImage}(object, image = NULL)
\link{gtkImageMenuItemGetImage}(object)
\link{gtkImageMenuItemNew}(show = TRUE)
\link{gtkImageMenuItemNewFromStock}(stock.id, accel.group, show = TRUE)
\link{gtkImageMenuItemNewWithLabel}(label, show = TRUE)
\link{gtkImageMenuItemNewWithMnemonic}(label, show = TRUE)
gtkImageMenuItem(label, stock.id, accel.group, show = TRUE)
}
\details{A GtkImageMenuItem is a menu item which has an icon next to the text label.
  
Note that the user can disable display of menu icons, so make sure to still
fill in the text label.}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----\link{GtkBin}
                           +----\link{GtkItem}
                                 +----\link{GtkMenuItem}
                                       +----GtkImageMenuItem}}
\section{Structures}{\describe{\item{\code{GtkImageMenuItem}}{\emph{undocumented
}}}}
\section{Convenient Construction}{\code{gtkImageMenuItem} is the result of collapsing the constructors of \code{GtkImageMenuItem} (\code{\link{gtkImageMenuItemNew}}, \code{\link{gtkImageMenuItemNewWithLabel}}, \code{\link{gtkImageMenuItemNewWithMnemonic}}, \code{\link{gtkImageMenuItemNewFromStock}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Interfaces}{GtkImageMenuItem implements
 AtkImplementorIface.}
\section{Properties}{\describe{\item{\code{image} [\code{\link{GtkWidget}} : Read / Write]}{

Child widget to appear next to the menu text.

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkImageMenuItem.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
