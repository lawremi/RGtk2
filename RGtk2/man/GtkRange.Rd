\alias{GtkRange}
\name{GtkRange}
\title{GtkRange}
\description{Base class for widgets which visualize an adjustment}
\section{Methods and Functions}{
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

}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----GtkRange
                     +----\link{GtkScale}
                     +----\link{GtkScrollbar}}}
\section{Interfaces}{GtkRange implements
 AtkImplementorIface.}
\section{Structures}{\describe{\item{\code{GtkRange}}{\emph{undocumented
}}}}
\section{Signals}{\describe{
\item{\code{adjust-bounds(range, arg1, user.data)}}{


\describe{
\item{\code{range}}{[\code{\link{GtkRange}}] the object which received the signal.}
\item{\code{arg1}}{[numeric] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
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

  Since  2.6

\describe{
\item{\code{range}}{[\code{\link{GtkRange}}]  the range that received the signal.}
\item{\code{scroll}}{[\code{\link{GtkScrollType}}]  the type of scroll action that was performed.}
\item{\code{value}}{[numeric]  the new value resulting from the scroll action.}
\item{\code{returns}}{[R object]  \code{TRUE} to prevent other handlers from being invoked for the
signal.  \code{FALSE} to propagate the signal further.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

}
\item{\code{move-slider(range, arg1, user.data)}}{
Virtual function that moves the slider. Used for keybindings.

\describe{
\item{\code{range}}{[\code{\link{GtkRange}}] the \code{\link{GtkRange}}}
\item{\code{arg1}}{[\code{\link{GtkScrollType}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{value-changed(range, user.data)}}{
Emitted when the range value changes.

\describe{
\item{\code{range}}{[\code{\link{GtkRange}}] the \code{\link{GtkRange}}}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
}}
\section{Properties}{\describe{
\item{\code{adjustment} [\code{\link{GtkAdjustment}} : Read / Write / Construct]}{

The GtkAdjustment that contains the current value of this range object.

}
\item{\code{inverted} [logical : Read / Write]}{

Invert direction slider moves to increase range value.  Default value: FALSE

}
\item{\code{update-policy} [\code{\link{GtkUpdateType}} : Read / Write]}{

How the range should be updated on the screen.  Default value: GTK_UPDATE_CONTINUOUS

}
}}
\section{Style Properties}{\describe{
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

Spacing between step buttons and thumb.  Allowed values: >= 0  Default value: 0

}
\item{\code{trough-border} [integer : Read]}{

Spacing between thumb/steppers and outer trough bevel.  Allowed values: >= 0  Default value: 1

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkRange.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
