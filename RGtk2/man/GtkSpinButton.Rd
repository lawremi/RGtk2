\alias{GtkSpinButton}
\alias{gtkSpinButton}
\alias{GtkSpinButtonUpdatePolicy}
\alias{GtkSpinType}
\name{GtkSpinButton}
\title{GtkSpinButton}
\description{Retrieve an integer or floating-point number from the user}
\section{Methods and Functions}{
\code{\link{gtkSpinButtonConfigure}(object, adjustment = NULL, climb.rate, digits)}\cr
\code{\link{gtkSpinButtonNew}(adjustment = NULL, climb.rate = NULL, digits = NULL, show = TRUE)}\cr
\code{\link{gtkSpinButtonNewWithRange}(min, max, step, show = TRUE)}\cr
\code{\link{gtkSpinButtonSetAdjustment}(object, adjustment)}\cr
\code{\link{gtkSpinButtonGetAdjustment}(object)}\cr
\code{\link{gtkSpinButtonSetDigits}(object, digits)}\cr
\code{\link{gtkSpinButtonSetIncrements}(object, step, page)}\cr
\code{\link{gtkSpinButtonSetRange}(object, min, max)}\cr
\code{\link{gtkSpinButtonGetValueAsInt}(object)}\cr
\code{\link{gtkSpinButtonSetValue}(object, value)}\cr
\code{\link{gtkSpinButtonSetUpdatePolicy}(object, policy)}\cr
\code{\link{gtkSpinButtonSetNumeric}(object, numeric)}\cr
\code{\link{gtkSpinButtonSpin}(object, direction, increment)}\cr
\code{\link{gtkSpinButtonSetWrap}(object, wrap)}\cr
\code{\link{gtkSpinButtonSetSnapToTicks}(object, snap.to.ticks)}\cr
\code{\link{gtkSpinButtonUpdate}(object)}\cr
\code{\link{gtkSpinButtonGetDigits}(object)}\cr
\code{\link{gtkSpinButtonGetIncrements}(object)}\cr
\code{\link{gtkSpinButtonGetNumeric}(object)}\cr
\code{\link{gtkSpinButtonGetRange}(object)}\cr
\code{\link{gtkSpinButtonGetSnapToTicks}(object)}\cr
\code{\link{gtkSpinButtonGetUpdatePolicy}(object)}\cr
\code{\link{gtkSpinButtonGetValue}(object)}\cr
\code{\link{gtkSpinButtonGetWrap}(object)}\cr
\code{gtkSpinButton(adjustment = NULL, climb.rate = NULL, digits = NULL, min, max, step, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkEntry
                           +----GtkSpinButton}}
\section{Interfaces}{GtkSpinButton implements
 AtkImplementorIface,  \code{\link{GtkBuildable}},  \code{\link{GtkEditable}} and  \code{\link{GtkCellEditable}}.}
\section{Detailed Description}{A \code{\link{GtkSpinButton}} is an ideal way to allow the user to set the value of some
attribute. Rather than having to directly type a number into a \code{\link{GtkEntry}},
\code{\link{GtkSpinButton}} allows the user to click on one of two arrows to increment or
decrement the displayed value. A value can still be typed in, with the bonus
that it can be checked to ensure it is in a given range.
  
The main properties of a \code{\link{GtkSpinButton}} are through a \code{\link{GtkAdjustment}}. See the
\code{\link{GtkAdjustment}} section for more details about an adjustment's properties.
  
 \emph{Using a   \code{GtkSpinButton}   to get an integer.}
\preformatted{
## Provides a function to retrieve an integer value from a GtkSpinButton
## and creates a spin button to model percentage values.

grab_int_value <- function(a_spinner, user_data) {
   return(a_spinner$getValueAsInt())
}

create_integer_spin_button <- function() {

  spinner_adj <- gtkAdjustment(50.0, 0.0, 100.0, 1.0, 5.0, 5.0)
  
  window <- gtkWindow("toplevel", show = F)
  window$setBorderWidth(5)
   
  ## creates the spinner, with no decimal places
  spinner <- gtkSpinner(spinner_adj, 1.0, 0)
  window$add(spinner)
  
  window$showAll()
}
}  
 \emph{Using a   \code{GtkSpinButton}   to get a floating point value.}
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
  
  ## creates the spinner, with three decimal places
  spinner <- gtkSpinner(spinner_adj, 0.001, 3)
  window$add(spinner)
  
  window$showAll()
}
}}
\section{Structures}{\describe{\item{\verb{GtkSpinButton}}{
\code{entry} is the \code{\link{GtkEntry}} part of the \code{\link{GtkSpinButton}}
widget, and can be used accordingly. All other fields contain private data
and should only be modified using the functions below.

}}}
\section{Convenient Construction}{\code{gtkSpinButton} is the result of collapsing the constructors of \code{GtkSpinButton} (\code{\link{gtkSpinButtonNew}}, \code{\link{gtkSpinButtonNewWithRange}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Enums and Flags}{\describe{
\item{\verb{GtkSpinButtonUpdatePolicy}}{
\tabular{ll}{
GTK_UPDATE_ALWAYS \tab When refreshing your   \code{\link{GtkSpinButton}}  , the value is always displayed. \cr
GTK_UPDATE_IF_VALID \tab When refreshing your   \code{\link{GtkSpinButton}}  , the value is only displayed if it is valid within the bounds of the spin button's   \code{\link{GtkAdjustment}}  . \cr
}

\describe{
\item{\verb{always}}{\emph{undocumented
}}
\item{\verb{if-valid}}{\emph{undocumented
}}
}

}
\item{\verb{GtkSpinType}}{
\tabular{ll}{
GTK_SPIN_STEP_FORWARD,
GTK_SPIN_STEP_BACKWARD,
GTK_SPIN_PAGE_FORWARD,
GTK_SPIN_PAGE_BACKWARD \tab These values spin a   \code{\link{GtkSpinButton}}   by the relevant values of the spin button's   \code{\link{GtkAdjustment}}  . \cr
GTK_SPIN_HOME,
GTK_SPIN_END \tab These set the spin button's value to the minimum or maxmimum possible values, (set by its   \code{\link{GtkAdjustment}}  ), respectively. \cr
GTK_SPIN_USER_DEFINED \tab The programmer must specify the exact amount to spin the   \code{\link{GtkSpinButton}}  . \cr
}

\describe{
\item{\verb{step-forward}}{\emph{undocumented
}}
\item{\verb{step-backward}}{\emph{undocumented
}}
\item{\verb{page-forward}}{\emph{undocumented
}}
\item{\verb{page-backward}}{\emph{undocumented
}}
\item{\verb{home}}{\emph{undocumented
}}
\item{\verb{end}}{\emph{undocumented
}}
\item{\verb{user-defined}}{\emph{undocumented
}}
}

}
}}
\section{Signals}{\describe{
\item{\code{change-value(spinbutton, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{spinbutton}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{input(spinbutton, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{spinbutton}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{output(spin.button, user.data)}}{
The ::output signal can be used to change to formatting
of the value that is displayed in the spin buttons entry.
\preformatted{/* show leading zeros */
static gboolean
on_output (GtkSpinButton *spin,
           gpointer       data)
{
   GtkAdjustment *adj;
   gchar *text;
   int value;

   adj = gtk_spin_button_get_adjustment (spin);
   value = (int)gtk_adjustment_get_value (adj);
   text = g_strdup_printf ("\%02d", value);
   gtk_entry_set_text (GTK_ENTRY (spin), text);
   g_free (text);

   return TRUE;
}
}

\describe{
\item{\code{spin.button}}{the object which received the signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} if the value has been displayed.

}
\item{\code{value-changed(spinbutton, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{spinbutton}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{wrapped(spinbutton, user.data)}}{
The wrapped signal is emitted right after the spinbutton wraps
from its maximum to minimum value or vice-versa.
  Since 2.10

\describe{
\item{\code{spinbutton}}{the object which received the signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\verb{adjustment} [\code{\link{GtkAdjustment}} : *        : Read / Write]}{

The adjustment that holds the value of the spinbutton.

}
\item{\verb{climb-rate} [numeric : Read / Write]}{

The acceleration rate when you hold down a button.  Allowed values: >= 0  Default value: 0

}
\item{\verb{digits} [numeric : Read / Write]}{

The number of decimal places to display.  Allowed values: <= 20  Default value: 0

}
\item{\verb{numeric} [logical : Read / Write]}{

Whether non-numeric characters should be ignored.  Default value: FALSE

}
\item{\verb{snap-to-ticks} [logical : Read / Write]}{

Whether erroneous values are automatically changed to a spin button's nearest step increment.  Default value: FALSE

}
\item{\verb{update-policy} [\code{\link{GtkSpinButtonUpdatePolicy}} : Read / Write]}{

Whether the spin button should update always, or only when the value is legal.  Default value: GTK_UPDATE_ALWAYS

}
\item{\verb{value} [numeric : Read / Write]}{

Reads the current value, or sets a new value.  Default value: 0

}
\item{\verb{wrap} [logical : Read / Write]}{

Whether a spin button should wrap upon reaching its limits.  Default value: FALSE

}
}}
\section{Style Properties}{\describe{\item{\verb{shadow-type} [\code{\link{GtkShadowType}} : Read]}{

the type of border that surrounds the arrows of a spin button.
  Default value: GTK_SHADOW_IN

}}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkSpinButton.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
