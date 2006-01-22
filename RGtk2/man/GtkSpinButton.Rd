\alias{GtkSpinButton}
\alias{gtkSpinButton}
\alias{GtkSpinButtonUpdatePolicy}
\alias{GtkSpinType}
\name{GtkSpinButton}
\title{GtkSpinButton}
\description{Retrieve an integer or floating-point number from the user}
\usage{gtkSpinButton(adjustment = NULL, climb.rate = NULL, digits = NULL, min, max, step, show = TRUE)}
\section{Methods and Functions}{
\link{gtkSpinButtonConfigure}(object, adjustment = NULL, climb.rate, digits)
\link{gtkSpinButtonNew}(adjustment = NULL, climb.rate = NULL, digits = NULL, show = TRUE)
\link{gtkSpinButtonNewWithRange}(min, max, step, show = TRUE)
\link{gtkSpinButtonSetAdjustment}(object, adjustment)
\link{gtkSpinButtonGetAdjustment}(object)
\link{gtkSpinButtonSetDigits}(object, digits)
\link{gtkSpinButtonSetIncrements}(object, step, page)
\link{gtkSpinButtonSetRange}(object, min, max)
\link{gtkSpinButtonGetValueAsInt}(object)
\link{gtkSpinButtonSetValue}(object, value)
\link{gtkSpinButtonSetUpdatePolicy}(object, policy)
\link{gtkSpinButtonSetNumeric}(object, numeric)
\link{gtkSpinButtonSpin}(object, direction, increment)
\link{gtkSpinButtonSetWrap}(object, wrap)
\link{gtkSpinButtonSetSnapToTicks}(object, snap.to.ticks)
\link{gtkSpinButtonUpdate}(object)
\link{gtkSpinButtonGetDigits}(object)
\link{gtkSpinButtonGetIncrements}(object)
\link{gtkSpinButtonGetNumeric}(object)
\link{gtkSpinButtonGetRange}(object)
\link{gtkSpinButtonGetSnapToTicks}(object)
\link{gtkSpinButtonGetUpdatePolicy}(object)
\link{gtkSpinButtonGetValue}(object)
\link{gtkSpinButtonGetWrap}(object)
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkEntry}
                     +----GtkSpinButton}}
\section{Interfaces}{GtkSpinButton implements
 AtkImplementorIface,  \code{\link{GtkCellEditable}} and  \code{\link{GtkEditable}}.}
\section{Detailed Description}{A \code{\link{GtkSpinButton}} is an ideal way to allow the user to set the value of some 
attribute. Rather than having to directly type a number into a \code{\link{GtkEntry}}, 
\code{\link{GtkSpinButton}} allows the user to click on one of two arrows to increment or 
decrement the displayed value. A value can still be typed in, with the bonus 
that it can be checked to ensure it is in a given range.
  
The main properties of a \code{\link{GtkSpinButton}} are through a \code{\link{GtkAdjustment}}. See the 
\code{\link{GtkAdjustment}} section for more details about an adjustment's properties.
  
\preformatted{
# Provides a function to retrieve an integer value from a GtkSpinButton
# and creates a spin button to model percentage values.

grab_int_value <- function(a_spinner, user_data) {
   return(a_spinner$getValueAsInt())
}

create_integer_spin_button <- function() {

   spinner_adj <- gtkAdjustment(50.0, 0.0, 100.0, 1.0, 5.0, 5.0)
   
   window <- gtkWindow("toplevel", show = F)
   window$setBorderWidth(5)
   
   # creates the spinner, with no decimal places
   spinner <- gtkSpinner(spinner_adj, 1.0, 0)
   window$add(spinner)
   
   window$showAll()
}
}
  
\preformatted{
# Provides a function to retrieve a floating point value from a
# GtkSpinButton, and creates a high precision spin button.

grab_value <- function(a_spinner, user_data) {
   return(a_spinner$getValue())
}

create_floating_spin_button <- function() {

   spinner_adj <- gtkAdjustment(2.500, 0.0, 5.0, 0.001, 0.1, 0.1)
   
   window <- gtkWindow("toplevel", show = F)
   window$setBorderWidth(5)
   
   # creates the spinner, with three decimal places
   spinner <- gtkSpinner(spinner_adj, 0.001, 3)
   window$add(spinner)
   
   window$showAll()
}
}}
\section{Structures}{\describe{\item{\code{GtkSpinButton}}{
\code{entry} is the \code{\link{GtkEntry}} part of the \code{\link{GtkSpinButton}} 
widget, and can be used accordingly. All other fields contain private data 
and should only be modified using the functions below.

}}}
\section{Convenient Construction}{\code{gtkSpinButton} is the result of collapsing the constructors of \code{GtkSpinButton} (\code{\link{gtkSpinButtonNew}}, \code{\link{gtkSpinButtonNewWithRange}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Enums and Flags}{\describe{
\item{\code{enum GtkSpinButtonUpdatePolicy}}{
\tabular{ll}{
GTK_UPDATE_ALWAYS \tab When refreshing your   \code{\link{GtkSpinButton}}  , the value is always displayed. \cr
GTK_UPDATE_IF_VALID \tab When refreshing your   \code{\link{GtkSpinButton}}  , the value is only displayed if it is valid within the bounds of the spin button's   \code{\link{GtkAdjustment}}  . \cr
}

}
\item{\code{enum GtkSpinType}}{
\tabular{ll}{
GTK_SPIN_STEP_FORWARD, 
GTK_SPIN_STEP_BACKWARD, 
GTK_SPIN_PAGE_FORWARD, 
GTK_SPIN_PAGE_BACKWARD \tab These values spin a   \code{\link{GtkSpinButton}}   by the relevant values of the spin button's   \code{\link{GtkAdjustment}}  . \cr
GTK_SPIN_HOME, 
GTK_SPIN_END \tab These set the spin button's value to the minimum or maxmimum possible values, (set by its   \code{\link{GtkAdjustment}}  ), respectively. \cr
GTK_SPIN_USER_DEFINED \tab The programmer must specify the exact amount to spin the   \code{\link{GtkSpinButton}}  . \cr
}

}
}}
\section{Signals}{\describe{
\item{\code{change-value(spinbutton, arg1, user.data)}}{


\describe{
\item{\code{spinbutton}}{[\code{\link{GtkSpinButton}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkScrollType}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{input(spinbutton, arg1, user.data)}}{


\describe{
\item{\code{spinbutton}}{[\code{\link{GtkSpinButton}}] the object which received the signal.}
\item{\code{arg1}}{[R object] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{output(spinbutton, user.data)}}{


\describe{
\item{\code{spinbutton}}{[\code{\link{GtkSpinButton}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{value-changed(spinbutton, user.data)}}{


\describe{
\item{\code{spinbutton}}{[\code{\link{GtkSpinButton}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
}}
\section{Properties}{\describe{
\item{\code{adjustment} [\code{\link{GtkAdjustment}} : Read / Write]}{

The adjustment that holds the value of the spinbutton.

}
\item{\code{climb-rate} [numeric : Read / Write]}{

The acceleration rate when you hold down a button.  Allowed values: >= 0  Default value: 0

}
\item{\code{digits} [numeric : Read / Write]}{

The number of decimal places to display.  Allowed values: <= 20  Default value: 0

}
\item{\code{numeric} [logical : Read / Write]}{

Whether non-numeric characters should be ignored.  Default value: FALSE

}
\item{\code{snap-to-ticks} [logical : Read / Write]}{

Whether erroneous values are automatically changed to a spin button's nearest step increment.  Default value: FALSE

}
\item{\code{update-policy} [\code{\link{GtkSpinButtonUpdatePolicy}} : Read / Write]}{

Whether the spin button should update always, or only when the value is legal.  Default value: GTK_UPDATE_ALWAYS

}
\item{\code{value} [numeric : Read / Write]}{

Reads the current value, or sets a new value.  Default value: 0

}
\item{\code{wrap} [logical : Read / Write]}{

Whether a spin button should wrap upon reaching its limits.  Default value: FALSE

}
}}
\section{Style Properties}{\describe{\item{\code{shadow-type} [\code{\link{GtkShadowType}} : Read]}{

the type of border that surrounds the arrows of a spin button.
  Default value: GTK_SHADOW_IN

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkSpinButton.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
