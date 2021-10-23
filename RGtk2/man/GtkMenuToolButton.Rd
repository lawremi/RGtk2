\alias{GtkMenuToolButton}
\alias{gtkMenuToolButton}
\name{GtkMenuToolButton}
\title{GtkMenuToolButton}
\description{A GtkToolItem containing a button with an additional dropdown menu}
\section{Methods and Functions}{
\code{\link{gtkMenuToolButtonNew}(icon.widget, label, show = TRUE)}\cr
\code{\link{gtkMenuToolButtonNewFromStock}(stock.id)}\cr
\code{\link{gtkMenuToolButtonSetMenu}(object, menu)}\cr
\code{\link{gtkMenuToolButtonGetMenu}(object)}\cr
\code{\link{gtkMenuToolButtonSetArrowTooltip}(object, tooltips, tip.text = NULL, tip.private = NULL)}\cr
\code{\link{gtkMenuToolButtonSetArrowTooltip}(object, tooltips, tip.text = NULL, tip.private = NULL)}\cr
\code{\link{gtkMenuToolButtonSetArrowTooltipText}(object, text)}\cr
\code{\link{gtkMenuToolButtonSetArrowTooltipMarkup}(object, markup)}\cr
\code{gtkMenuToolButton(icon.widget, label, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBin
                                 +----GtkToolItem
                                       +----GtkToolButton
                                             +----GtkMenuToolButton}}
\section{Interfaces}{GtkMenuToolButton implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkActivatable}}.}
\section{Detailed Description}{  A \code{\link{GtkMenuToolButton}} is a \code{\link{GtkToolItem}} that contains a button and
  a small additional button with an arrow. When clicked, the arrow
  button pops up a dropdown menu.
  
  Use \code{\link{gtkMenuToolButtonNew}} to create a new
  \code{\link{GtkMenuToolButton}}. Use \code{\link{gtkMenuToolButtonNewFromStock}} to
  create a new \code{\link{GtkMenuToolButton}} containing a stock item.}
\section{Structures}{\describe{\item{\verb{GtkMenuToolButton}}{
  The \code{\link{GtkMenuToolButton}} struct contains only private data and
  should only be accessed through the functions described below.

}}}
\section{Convenient Construction}{\code{gtkMenuToolButton} is the equivalent of \code{\link{gtkMenuToolButtonNew}}.}
\section{Signals}{\describe{\item{\code{show-menu(button, user.data)}}{
The ::show-menu signal is emitted before the menu is shown.
  
It can be used to populate the menu on demand, using
\code{\link{gtkMenuToolButtonGetMenu}}.
  
Note that even if you populate the menu dynamically in this way,
you must set an empty menu on the \code{\link{GtkMenuToolButton}} beforehand,
since the arrow is made insensitive if the menu is not set.

\describe{
\item{\code{button}}{the object on which the signal is emitted}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}}}
\section{Properties}{\describe{\item{\verb{menu} [\code{\link{GtkMenu}} : *              : Read / Write]}{

The dropdown menu.

}}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkMenuToolButton.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
