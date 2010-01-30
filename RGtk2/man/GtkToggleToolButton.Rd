\alias{GtkToggleToolButton}
\alias{gtkToggleToolButton}
\name{GtkToggleToolButton}
\title{GtkToggleToolButton}
\description{A GtkToolItem containing a toggle button}
\section{Methods and Functions}{
\code{\link{gtkToggleToolButtonNew}(show = TRUE)}\cr
\code{\link{gtkToggleToolButtonNewFromStock}(stock.id)}\cr
\code{\link{gtkToggleToolButtonSetActive}(object, is.active)}\cr
\code{\link{gtkToggleToolButtonGetActive}(object)}\cr
\code{gtkToggleToolButton(show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBin
                                 +----GtkToolItem
                                       +----GtkToolButton
                                             +----GtkToggleToolButton
                                                   +----GtkRadioToolButton}}
\section{Interfaces}{GtkToggleToolButton implements
 AtkImplementorIface and  \verb{\link{GtkBuildable}}.}
\section{Detailed Description}{  A \verb{\link{GtkToggleToolButton}} is a \verb{\link{GtkToolItem}} that contains a toggle
  button.
  
  Use \code{\link{gtkToggleToolButtonNew}} to create a new
  \verb{\link{GtkToggleToolButton}}. Use \code{\link{gtkToggleToolButtonNewFromStock}} to
  create a new \verb{\link{GtkToggleToolButton}} containing a stock item.}
\section{Structures}{\describe{\item{\verb{GtkToggleToolButton}}{
  The \verb{\link{GtkToggleToolButton}} struct contains only private data and
  should only be accessed through the functions described below.

}}}
\section{Convenient Construction}{\code{gtkToggleToolButton} is the equivalent of \code{\link{gtkToggleToolButtonNew}}.}
\section{Signals}{\describe{\item{\code{toggled(toggle.tool.button, user.data)}}{
Emitted whenever the toggle tool button changes state.  

\describe{
\item{\code{toggle.tool.button}}{[\verb{\link{GtkToggleToolButton}}]  the object that emitted the signal}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}}}
\section{Properties}{\describe{\item{\verb{active} [logical : Read / Write]}{

If the toggle tool button should be pressed in or not.  

  Default value: FALSE  Since  2.8

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkToggleToolButton.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
