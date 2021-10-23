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
\code{\link{gtkRangeGetFlippable}(object)}\cr
\code{\link{gtkRangeSetFlippable}(object, flippable)}\cr
\code{\link{gtkRangeGetMinSliderSize}(object)}\cr
\code{\link{gtkRangeGetRangeRect}(object)}\cr
\code{\link{gtkRangeGetSliderRange}(object)}\cr
\code{\link{gtkRangeGetSliderSizeFixed}(object)}\cr
\code{\link{gtkRangeSetMinSliderSize}(object, min.size)}\cr
\code{\link{gtkRangeSetSliderSizeFixed}(object, size.fixed)}\cr

}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkRange
                           +----GtkScale
                           +----GtkScrollbar}}
\section{Interfaces}{GtkRange implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkOrientable}}.}
\section{Detailed Description}{\code{\link{GtkRange}} is the common base class for widgets which visualize an
adjustment, e.g scales or scrollbars.
  
Apart from signals for monitoring the parameters of the adjustment,
GtkRange provides properties and methods for influencing the sensitivity
of the "steppers". It also provides properties and methods for setting a
"fill level" on range widgets. See \code{\link{gtkRangeSetFillLevel}}.}
\section{Structures}{\describe{\item{\verb{GtkRange}}{
\emph{undocumented
}

}}}
\section{Enums and Flags}{\describe{\item{\verb{GtkSensitivityType}}{
Determines how GTK+ handles the sensitivity of stepper arrows
at the end of range widgets.

\describe{
\item{\verb{auto}}{The arrow is made insensitive if the
   thumb is at the end}
\item{\verb{on}}{The arrow is always sensitive}
\item{\verb{off}}{The arrow is always insensitive}
}

}}}
\section{Signals}{\describe{
\item{\code{adjust-bounds(range, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{range}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{change-value(range, scroll, value, returns, user.data)}}{
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
  Since 2.6

\describe{
\item{\code{range}}{the range that received the signal}
\item{\code{scroll}}{the type of scroll action that was performed}
\item{\code{value}}{the new value resulting from the scroll action}
\item{\code{returns}}{\code{TRUE} to prevent other handlers from being invoked for the
signal, \code{FALSE} to propagate the signal further}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{move-slider(range, step, user.data)}}{
Virtual function that moves the slider. Used for keybindings.

\describe{
\item{\code{range}}{the \code{\link{GtkRange}}}
\item{\code{step}}{how to move the slider}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{value-changed(range, user.data)}}{
Emitted when the range value changes.

\describe{
\item{\code{range}}{the \code{\link{GtkRange}}}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\verb{adjustment} [\code{\link{GtkAdjustment}} : *        : Read / Write / Construct]}{

The GtkAdjustment that contains the current value of this range object.

}
\item{\verb{fill-level} [numeric : Read / Write]}{

The fill level (e.g. prebuffering of a network stream).
See \code{\link{gtkRangeSetFillLevel}}.
  Default value: 1.79769e+308  Since 2.12

}
\item{\verb{inverted} [logical : Read / Write]}{

Invert direction slider moves to increase range value.  Default value: FALSE

}
\item{\verb{lower-stepper-sensitivity} [\code{\link{GtkSensitivityType}} : Read / Write]}{

The sensitivity policy for the stepper that points to the adjustment's lower side.  Default value: GTK_SENSITIVITY_AUTO

}
\item{\verb{restrict-to-fill-level} [logical : Read / Write]}{

The restrict-to-fill-level property controls whether slider
movement is restricted to an upper boundary set by the
fill level. See \code{\link{gtkRangeSetRestrictToFillLevel}}.
  Default value: TRUE  Since 2.12

}
\item{\verb{show-fill-level} [logical : Read / Write]}{

The show-fill-level property controls whether fill level indicator
graphics are displayed on the trough. See
\code{\link{gtkRangeSetShowFillLevel}}.
  Default value: FALSE  Since 2.12

}
\item{\verb{update-policy} [\code{\link{GtkUpdateType}} : Read / Write]}{

How the range should be updated on the screen.  Default value: GTK_UPDATE_CONTINUOUS

}
\item{\verb{upper-stepper-sensitivity} [\code{\link{GtkSensitivityType}} : Read / Write]}{

The sensitivity policy for the stepper that points to the adjustment's upper side.  Default value: GTK_SENSITIVITY_AUTO

}
}}
\section{Style Properties}{\describe{
\item{\verb{activate-slider} [logical : Read]}{

With this option set to TRUE, sliders will be drawn ACTIVE and with shadow IN while they are dragged.  Default value: FALSE

}
\item{\verb{arrow-displacement-x} [integer : Read]}{

How far in the x direction to move the arrow when the button is depressed.  Default value: 0

}
\item{\verb{arrow-displacement-y} [integer : Read]}{

How far in the y direction to move the arrow when the button is depressed.  Default value: 0

}
\item{\verb{arrow-scaling} [numeric : Read]}{

The arrow size proportion relative to the scroll button size.
  Allowed values: [0,1]  Default value: 0.5  Since 2.14

}
\item{\verb{slider-width} [integer : Read]}{

Width of scrollbar or scale thumb.  Allowed values: >= 0  Default value: 14

}
\item{\verb{stepper-size} [integer : Read]}{

Length of step buttons at ends.  Allowed values: >= 0  Default value: 14

}
\item{\verb{stepper-spacing} [integer : Read]}{

The spacing between the stepper buttons and thumb. Note that
setting this value to anything > 0 will automatically set the
trough-under-steppers style property to \code{TRUE} as well. Also,
stepper-spacing won't have any effect if there are no steppers.
  Allowed values: >= 0  Default value: 0

}
\item{\verb{trough-border} [integer : Read]}{

Spacing between thumb/steppers and outer trough bevel.  Allowed values: >= 0  Default value: 1

}
\item{\verb{trough-side-details} [logical : Read]}{

When \code{TRUE}, the parts of the trough on the two sides of the
slider are drawn with different details.
  Default value: FALSE  Since 2.10

}
\item{\verb{trough-under-steppers} [logical : Read]}{

Whether to draw the trough across the full length of the range or
to exclude the steppers and their spacing. Note that setting the
\verb{"stepper-spacing"} style property to any value > 0 will
automatically enable trough-under-steppers too.
  Default value: TRUE  Since 2.10

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkRange.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
