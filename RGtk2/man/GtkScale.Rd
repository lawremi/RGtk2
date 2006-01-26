\alias{GtkScale}
\name{GtkScale}
\title{GtkScale}
\description{Base class for GtkHScale and GtkVScale}
\section{Methods and Functions}{
\code{\link{gtkScaleSetDigits}(object, digits)}\cr
\code{\link{gtkScaleSetDrawValue}(object, draw.value)}\cr
\code{\link{gtkScaleSetValuePos}(object, pos)}\cr
\code{\link{gtkScaleGetDigits}(object)}\cr
\code{\link{gtkScaleGetDrawValue}(object)}\cr
\code{\link{gtkScaleGetValuePos}(object)}\cr
\code{\link{gtkScaleGetLayout}(object)}\cr
\code{\link{gtkScaleGetLayoutOffsets}(object)}\cr

}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkRange}
                     +----GtkScale
                           +----\link{GtkHScale}
                           +----\link{GtkVScale}}}
\section{Interfaces}{GtkScale implements
 AtkImplementorIface.}
\section{Detailed Description}{A \code{\link{GtkScale}} is a slider control used to select a numeric value.
To use it, you'll probably want to investigate the methods on 
its base class, \code{\link{GtkRange}}, in addition to the methods for \code{\link{GtkScale}} itself.
To set the value of a scale, you would normally use \code{\link{gtkRangeSetValue}}. 
To detect changes to the value, you would normally use the "value_changed" 
signal.
  
The \code{\link{GtkScale}} widget is an abstract class, used only for deriving the
subclasses \code{\link{GtkHScale}} and \code{\link{GtkVScale}}. To create a scale widget, 
call \code{\link{gtkHScaleNewWithRange}} or \code{\link{gtkVScaleNewWithRange}}.}
\section{Structures}{\describe{\item{\code{GtkScale}}{
The \code{\link{GtkScale}} struct contains the following fields.
(These fields should be considered read-only. They should never be set by
an application.)

\tabular{ll}{
\code{numeric}     \code{draw_value}  ; \tab non-zero if the scale's current value is displayed next to the
slider. \cr
\code{numeric}     \code{value_pos}  ; \tab the position in which the textual value is displayed, selected from
  \code{\link{GtkPositionType}}  . \cr
}

}}}
\section{Signals}{\describe{\item{\code{format-value(scale, arg1, user.data)}}{
Signal which allows you to change how the scale value is displayed.  Connect a
signal handler which returns an allocated string representing \code{value}.
That string will then be used to display the scale's value.
Here's an example signal handler which displays a value 1.0 as
with "-->1.0<--".
\preformatted{
format_value_callback <- function(scale, value)
{
  return(paste("-->", format(value, nsmall=scale$getDigits()), "<--"), sep="")
}
}

\describe{
\item{\code{scale}}{[\code{\link{GtkScale}}] the object which received the signal.}
\item{\code{arg1}}{[numeric] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}}}
\section{Properties}{\describe{
\item{\code{digits} [integer : Read / Write]}{

The number of decimal places that are displayed in the value.  Allowed values: [-1,64]  Default value: 1

}
\item{\code{draw-value} [logical : Read / Write]}{

Whether the current value is displayed as a string next to the slider.  Default value: TRUE

}
\item{\code{value-pos} [\code{\link{GtkPositionType}} : Read / Write]}{

The position in which the current value is displayed.  Default value: GTK_POS_TOP

}
}}
\section{Style Properties}{\describe{
\item{\code{slider-length} [integer : Read]}{

Length of scale's slider.  Allowed values: >= 0  Default value: 31

}
\item{\code{value-spacing} [integer : Read]}{

Space between value text and the slider/trough area.  Allowed values: >= 0  Default value: 2

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkScale.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
