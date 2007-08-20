\alias{GtkRange}
\alias{GtkSensitivityType}
\name{GtkRange}
\title{GtkRange}
\description{Base class for widgets which visualize an adjustment}
\section{Methods and Functions}{
\code{\link{gtkRangeGetFillLevel}(object)}\cr
\code{\link{gtkRangeGetRestrictToFillLevel}(object)}\cr
\code{\link{gtkRangeGetShowFillLevel}(object)}\cr
\code{\link{gtkRangeSetFillLevel}(object, fill.level)}\cr
\code{\link{gtkRangeSetRestrictToFillLevel}(object, restrict.to.fill.level)}\cr
\code{\link{gtkRangeSetShowFillLevel}(object, show.fill.level)}\cr
\code{\link{gtkRangeGetAdjustment}(object)}\cr
\code{\link{gtkRangeSetUpdatePolicy}(object, policy)}\cr
\code{\link{gtkRangeSetAdjustment}(object, adjustment)}\cr
\code{\link{gtkRangeGetInverted}(object)}\cr
\code{\link{gtkRangeSetInverted}(object, setting)}\cr
\code{\link{gtkRangeGetUpdatePolicy}(object)}\cr
\code{\link{gtkRangeGetValue}(object)}\cr
\code{\link{gtkRangeSetIncrements}(object, step, page)}\cr
\code{\link{gtkRangeSetRange}(object, min, max)}\cr
\code{\link{gtkRangeSetValue}(object, value)}\cr
\code{\link{gtkRangeSetLowerStepperSensitivity}(object, sensitivity)}\cr
\code{\link{gtkRangeGetLowerStepperSensitivity}(object)}\cr
\code{\link{gtkRangeSetUpperStepperSensitivity}(object, sensitivity)}\cr
\code{\link{gtkRangeGetUpperStepperSensitivity}(object)}\cr

}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkWidget}
                     +----GtkRange
                           +----\link{GtkScale}
                           +----\link{GtkScrollbar}}}
\section{Interfaces}{GtkRange implements
 \code{\link{GtkBuildable}} and  AtkImplementorIface.}
\section{Detailed Description}{\code{\link{GtkRange}} is the common base class for widgets which visualize an
adjustment, e.g scales or scrollbars. 
  
Apart from signals for monitoring the parameters of the adjustment, 
GtkRange provides properties and methods for influencing the sensitivity
of the "steppers". It also provides properties and methods for setting a 
"fill level" on range widgets. See \code{\link{gtkRangeSetFillLevel}}.}
\section{Structures}{\describe{\item{\code{GtkRange}}{
\emph{undocumented
}

}}}
\section{Enums and Flags}{\describe{\item{\code{GtkSensitivityType}}{
Determines how GTK+ handles the sensitivity of stepper arrows
at the end of range widgets.

\describe{
\item{\code{auto}}{The arrow is made insensitive if the
   thumb is at the end}
\item{\code{on}}{The arrow is always sensitive}
\item{\code{off}}{The arrow is always insensitive}
}

}}}
\section{Signals}{\describe{
\item{\code{The (range, arg1, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{range}}{[\code{\link{GtkRange}}] the object which received the signal.}
\item{\code{arg1}}{[numeric] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{The (range, scroll, value, returns, user.data)}}{
The ::change-value signal is emitted when a scroll action is
performed on a range.  It allows an application to determine the
type of scroll event that occurred and the resultant new value.
The application can handle the event itself and return \code{TRUE} to
prevent further processing.  Or, by returning \code{FALSE}, it can pass
the event to other handlers until the default GTK+ handler is
reached.
  
The value parameter is unrounded.  An application that overrides
the ::change-value signal is responsible for clamping the value to
the desired number of decimal digits; the default GTK+ handler 
clamps the value based on \code{range->round.digits}.
  
It is not possible to use delayed update policies in an overridden
::change-value handler.  

  Since  2.6

\describe{
\item{\code{range}}{[\code{\link{GtkRange}}]  the range that received the signal}
\item{\code{scroll}}{[\code{\link{GtkScrollType}}]  the type of scroll action that was performed}
\item{\code{value}}{[numeric]  the new value resulting from the scroll action}
\item{\code{returns}}{[R object]  \code{TRUE} to prevent other handlers from being invoked for the
signal, \code{FALSE} to propagate the signal further}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{The (range, step, user.data)}}{
Virtual function that moves the slider. Used for keybindings.  

\describe{
\item{\code{range}}{[\code{\link{GtkRange}}]  the \code{\link{GtkRange}}}
\item{\code{step}}{[\code{\link{GtkScrollType}}]  how to move the slider}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{The (range, user.data)}}{
Emitted when the range value changes.  

\describe{
\item{\code{range}}{[\code{\link{GtkRange}}]  the \code{\link{GtkRange}}}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\code{adjustment} [\code{\link{GtkAdjustment}} : Read / Write / Construct]}{

The GtkAdjustment that contains the current value of this range object.

}
\item{\code{fill-level} [numeric : Read / Write]}{

The fill level (e.g. prebuffering of a network stream).
See \code{\link{gtkRangeSetFillLevel}}.  

  Default value: 1.79769e+308  Since  2.12

}
\item{\code{inverted} [logical : Read / Write]}{

Invert direction slider moves to increase range value.  Default value: FALSE

}
\item{\code{lower-stepper-sensitivity} [\code{\link{GtkSensitivityType}} : Read / Write]}{

The sensitivity policy for the stepper that points to the adjustment's lower side.  Default value: GTK\_SENSITIVITY\_AUTO

}
\item{\code{restrict-to-fill-level} [logical : Read / Write]}{

The restrict-to-fill-level property controls whether slider
movement is restricted to an upper boundary set by the
fill level. See \code{\link{gtkRangeSetRestrictToFillLevel}}.  

  Default value: TRUE  Since  2.12

}
\item{\code{show-fill-level} [logical : Read / Write]}{

The show-fill-level property controls whether fill level indicator
graphics are displayed on the trough. See
\code{\link{gtkRangeSetShowFillLevel}}.  

  Default value: FALSE  Since  2.12

}
\item{\code{update-policy} [\code{\link{GtkUpdateType}} : Read / Write]}{

How the range should be updated on the screen.  Default value: GTK\_UPDATE\_CONTINUOUS

}
\item{\code{upper-stepper-sensitivity} [\code{\link{GtkSensitivityType}} : Read / Write]}{

The sensitivity policy for the stepper that points to the adjustment's upper side.  Default value: GTK\_SENSITIVITY\_AUTO

}
}}
\section{Style Properties}{\describe{
\item{\code{activate-slider} [logical : Read]}{

With this option set to TRUE, sliders will be drawn ACTIVE and with shadow IN while they are dragged.  Default value: FALSE

}
\item{\code{arrow-displacement-x} [integer : Read]}{

How far in the x direction to move the arrow when the button is depressed.  Default value: 0

}
\item{\code{arrow-displacement-y} [integer : Read]}{

How far in the y direction to move the arrow when the button is depressed.  Default value: 0

}
\item{\code{slider-width} [integer : Read]}{

Width of scrollbar or scale thumb.  Allowed values: >= 0  Default value: 14

}
\item{\code{stepper-size} [integer : Read]}{

Length of step buttons at ends.  Allowed values: >= 0  Default value: 14

}
\item{\code{stepper-spacing} [integer : Read]}{

The spacing between the stepper buttons and thumb. Note that
setting this value to anything > 0 will automatically set the
trough-under-steppers style property to \code{TRUE} as well. Also,
stepper-spacing won't have any effect if there are no steppers.  

  Allowed values: >= 0  Default value: 0

}
\item{\code{trough-border} [integer : Read]}{

Spacing between thumb/steppers and outer trough bevel.  Allowed values: >= 0  Default value: 1

}
\item{\code{trough-side-details} [logical : Read]}{

When \code{TRUE}, the parts of the trough on the two sides of the 
slider are drawn with different details.  

  Default value: FALSE  Since  2.10

}
\item{\code{trough-under-steppers} [logical : Read]}{

Whether to draw the trough across the full length of the range or
to exclude the steppers and their spacing. Note that setting the
\code{:stepper-spacing} style property to any value > 0 will
automatically enable trough-under-steppers too.  

  Default value: TRUE  Since  2.10

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkRange.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
