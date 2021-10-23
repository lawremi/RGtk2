\alias{GtkToggleButton}
\alias{gtkToggleButton}
\name{GtkToggleButton}
\title{GtkToggleButton}
\description{Create buttons which retain their state}
\section{Methods and Functions}{
\code{\link{gtkToggleButtonNew}(show = TRUE)}\cr
\code{\link{gtkToggleButtonNewWithLabel}(label, show = TRUE)}\cr
\code{\link{gtkToggleButtonNewWithMnemonic}(label, show = TRUE)}\cr
\code{\link{gtkToggleButtonSetMode}(object, draw.indicator)}\cr
\code{\link{gtkToggleButtonGetMode}(object)}\cr
\code{\link{gtkToggleButtonToggled}(object)}\cr
\code{\link{gtkToggleButtonGetActive}(object)}\cr
\code{\link{gtkToggleButtonSetActive}(object, is.active)}\cr
\code{\link{gtkToggleButtonGetInconsistent}(object)}\cr
\code{\link{gtkToggleButtonSetInconsistent}(object, setting)}\cr
\code{gtkToggleButton(label, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBin
                                 +----GtkButton
                                       +----GtkToggleButton
                                             +----GtkCheckButton}}
\section{Interfaces}{GtkToggleButton implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkActivatable}}.}
\section{Detailed Description}{A \code{\link{GtkToggleButton}} is a \code{\link{GtkButton}} which will remain 'pressed-in' when
clicked. Clicking again will cause the toggle button to return to its
normal state.
  
A toggle button is created by calling either \code{\link{gtkToggleButtonNew}} or
\code{\link{gtkToggleButtonNewWithLabel}}. If using the former, it is advisable to
pack a widget, (such as a \code{\link{GtkLabel}} and/or a \code{\link{GtkPixmap}}), into the toggle
button's container. (See \code{\link{GtkButton}} for more information).
  
The state of a \code{\link{GtkToggleButton}} can be set specifically using
\code{\link{gtkToggleButtonSetActive}}, and retrieved using
\code{\link{gtkToggleButtonGetActive}}.
  
To simply switch the state of a toggle button, use gtk_toggle_button_toggled.
  
 \emph{Creating two   \code{GtkToggleButton}   widgets.}
\preformatted{
# Let's make two toggle buttons
make_toggles <- function() {
  dialog <- gtkDialog(show = F)
  toggle1 <- gtkToggleButton("Hi, i'm a toggle button.")
  
  ## Makes this toggle button invisible
  toggle1$setMode(TRUE)
   
  gSignalConnect(toggle1, "toggled", output_state)
  dialog[["actionArea"]]$packStart(toggle1, FALSE, FALSE, 2)

  toggle2 <- gtkToggleButton("Hi, i'm another button.")
  toggle2$setMode(FALSE)
  gSignalConnect(toggle2, "toggled", output_state)
  dialog[["actionArea"]]$packStart(toggle2, FALSE, FALSE, 2)

  dialog$showAll()
}
}}
\section{Structures}{\describe{\item{\verb{GtkToggleButton}}{
The \code{\link{GtkToggleButton}} struct contains private data only, and should be manipulated using the functions below.

\describe{\item{\verb{drawIndicator}}{[logical] }}

}}}
\section{Convenient Construction}{\code{gtkToggleButton} is the result of collapsing the constructors of \code{GtkToggleButton} (\code{\link{gtkToggleButtonNew}}, \code{\link{gtkToggleButtonNewWithLabel}}, \code{\link{gtkToggleButtonNewWithMnemonic}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Signals}{\describe{\item{\code{toggled(togglebutton, user.data)}}{
Should be connected if you wish to perform an action whenever the
\code{\link{GtkToggleButton}}'s state is changed.

\describe{
\item{\code{togglebutton}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}}}
\section{Properties}{\describe{
\item{\verb{active} [logical : Read / Write]}{

If the toggle button should be pressed in or not.  Default value: FALSE

}
\item{\verb{draw-indicator} [logical : Read / Write]}{

If the toggle part of the button is displayed.  Default value: FALSE

}
\item{\verb{inconsistent} [logical : Read / Write]}{

If the toggle button is in an "in between" state.  Default value: FALSE

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkToggleButton.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
