\alias{GtkToggleToolButton}
\alias{gtkToggleToolButton}
\name{GtkToggleToolButton}
\title{GtkToggleToolButton}
\description{A GtkToolItem containing a toggle button}
\usage{gtkToggleToolButton(show = TRUE)}
\section{Methods and Functions}{
\link{gtkToggleToolButtonNew}(show = TRUE)
\link{gtkToggleToolButtonNewFromStock}(stock.id)
\link{gtkToggleToolButtonSetActive}(object, is.active)
\link{gtkToggleToolButtonGetActive}(object)
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----\link{GtkBin}
                           +----\link{GtkToolItem}
                                 +----\link{GtkToolButton}
                                       +----GtkToggleToolButton
                                             +----\link{GtkRadioToolButton}}}
\section{Interfaces}{GtkToggleToolButton implements
 AtkImplementorIface.}
\section{Detailed Description}{  A \code{\link{GtkToggleToolButton}} is a \code{\link{GtkToolItem}} that contains a toggle
  button.
  
  Use \code{\link{gtkToggleToolButtonNew}} to create a new
  \code{\link{GtkToggleToolButton}}. Use \code{\link{gtkToggleToolButtonNewFromStock}} to
  create a new \code{\link{GtkToggleToolButton}} containing a stock item.}
\section{Structures}{\describe{\item{\code{GtkToggleToolButton}}{
  The \code{\link{GtkToggleToolButton}} struct contains only private data and
  should only be accessed through the functions described below.

}}}
\section{Convenient Construction}{\code{gtkToggleToolButton} is the equivalent of \code{\link{gtkToggleToolButtonNew}}.}
\section{Signals}{\describe{\item{\code{toggled(toggle.tool.button, user.data)}}{
Emitted whenever the toggle tool button changes state.  

\describe{
\item{\code{toggle.tool.button}}{[\code{\link{GtkToggleToolButton}}]  the object that emitted the signal}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}}}
\section{Properties}{\describe{\item{\code{active} [logical : Read / Write]}{

If the toggle tool button should be pressed in or not.  

  Default value: FALSE  Since  2.8

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkToggleToolButton.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
