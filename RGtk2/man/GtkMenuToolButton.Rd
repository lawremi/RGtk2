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
\section{Hierarchy}{\preformatted{\link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkWidget}
                     +----\link{GtkContainer}
                           +----\link{GtkBin}
                                 +----\link{GtkToolItem}
                                       +----\link{GtkToolButton}
                                             +----GtkMenuToolButton}}
\section{Interfaces}{GtkMenuToolButton implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{  A \code{\link{GtkMenuToolButton}} is a \code{\link{GtkToolItem}} that contains a button and
  a small additional button with an arrow. When clicked, the arrow
  button pops up a dropdown menu.
  
  Use \code{\link{gtkMenuToolButtonNew}} to create a new
  \code{\link{GtkMenuToolButton}}. Use \code{\link{gtkMenuToolButtonNewFromStock}} to
  create a new \code{\link{GtkMenuToolButton}} containing a stock item.}
\section{Structures}{\describe{\item{\code{GtkMenuToolButton}}{
  The \code{\link{GtkMenuToolButton}} struct contains only private data and
  should only be accessed through the functions described below.

}}}
\section{Convenient Construction}{\code{gtkMenuToolButton} is the equivalent of \code{\link{gtkMenuToolButtonNew}}.}
\section{Signals}{\describe{\item{\code{show-menu(menutoolbutton, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{menutoolbutton}}{[\code{\link{GtkMenuToolButton}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}}}
\section{Properties}{\describe{\item{\code{menu} [\code{\link{GtkMenu}} : Read / Write]}{

The dropdown menu.

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkMenuToolButton.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
