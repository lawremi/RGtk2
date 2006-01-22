\alias{GtkTearoffMenuItem}
\alias{gtkTearoffMenuItem}
\name{GtkTearoffMenuItem}
\title{GtkTearoffMenuItem}
\description{A menu item used to tear off and reattach its menu}
\usage{gtkTearoffMenuItem(show = TRUE)}
\section{Methods and Functions}{\link{gtkTearoffMenuItemNew}(show = TRUE)}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----\link{GtkBin}
                           +----\link{GtkItem}
                                 +----\link{GtkMenuItem}
                                       +----GtkTearoffMenuItem}}
\section{Interfaces}{GtkTearoffMenuItem implements
 AtkImplementorIface.}
\section{Detailed Description}{A \code{\link{GtkTearoffMenuItem}} is a special \code{\link{GtkMenuItem}} which is used to
tear off and reattach its menu.
  
When its menu is shown normally, the \code{\link{GtkTearoffMenuItem}} is drawn as a 
dotted line indicating that the menu can be torn off.  Activating it 
causes its menu to be torn off and displayed in its own window 
as a tearoff menu.
  
When its menu is shown as a tearoff menu, the \code{\link{GtkTearoffMenuItem}} is drawn
as a dotted line which has a left pointing arrow graphic indicating that
the tearoff menu can be reattached.  Activating it will erase the tearoff 
menu window.}
\section{Structures}{\describe{\item{\code{GtkTearoffMenuItem}}{
The \code{\link{GtkTearoffMenuItem}} struct contains private data only, and
should be accessed using the functions below.

}}}
\section{Convenient Construction}{\code{gtkTearoffMenuItem} is the equivalent of \code{\link{gtkTearoffMenuItemNew}}.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkTearoffMenuItem.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
