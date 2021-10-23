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
\code{\link{gtkScaleAddMark}(object, value, position, markup = NULL)}\cr
\code{\link{gtkScaleClearMarks}(object)}\cr

}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkRange
                           +----GtkScale
                                 +----GtkHScale
                                 +----GtkVScale}}
\section{Interfaces}{GtkScale implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkOrientable}}.}
\section{Detailed Description}{A \code{\link{GtkScale}} is a slider control used to select a numeric value.
To use it, you'll probably want to investigate the methods on
its base class, \code{\link{GtkRange}}, in addition to the methods for \code{\link{GtkScale}} itself.
To set the value of a scale, you would normally use \code{\link{gtkRangeSetValue}}.
To detect changes to the value, you would normally use the "value_changed"
signal.
  
The \code{\link{GtkScale}} widget is an abstract class, used only for deriving the
subclasses \code{\link{GtkHScale}} and \code{\link{GtkVScale}}. To create a scale widget,
call \code{\link{gtkHScaleNewWithRange}} or \code{\link{gtkVScaleNewWithRange}}.}
\section{GtkScale as GtkBuildable}{GtkScale supports a custom <marks> element, which
can contain multiple <mark> elements. The "value" and "position"
attributes have the same meaning as \code{\link{gtkScaleAddMark}} parameters of the
same name. If the element is not empty, its content is taken as the markup
to show at the mark. It can be translated with the usual "translatable and
"context" attributes.}
\section{Structures}{\describe{\item{\verb{GtkScale}}{
The fields of the \code{\link{GtkScale}} struct should only be accessed via
the accessor functions.

}}}
\section{Signals}{\describe{\item{\code{format-value(scale, value, user.data)}}{
Signal which allows you to change how the scale value is displayed.
Connect a signal handler which returns an allocated string representing
\code{value}. That string will then be used to display the scale's value.
  
Here's an example signal handler which displays a value 1.0 as
with "-->1.0<--".
\preformatted{
format_value_callback <- function(scale, value)
{
  return(paste("-->", format(value, nsmall=scale$getDigits()), "<--"), sep="")
}
}

\describe{
\item{\code{scale}}{the object which received the signal}
\item{\code{value}}{the value to format}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [character] allocated string representing \code{value}

}}}
\section{Properties}{\describe{
\item{\verb{digits} [integer : Read / Write]}{

The number of decimal places that are displayed in the value.  Allowed values: [-1,64]  Default value: 1

}
\item{\verb{draw-value} [logical : Read / Write]}{

Whether the current value is displayed as a string next to the slider.  Default value: TRUE

}
\item{\verb{value-pos} [\code{\link{GtkPositionType}} : Read / Write]}{

The position in which the current value is displayed.  Default value: GTK_POS_TOP

}
}}
\section{Style Properties}{\describe{
\item{\verb{slider-length} [integer : Read]}{

Length of scale's slider.  Allowed values: >= 0  Default value: 31

}
\item{\verb{value-spacing} [integer : Read]}{

Space between value text and the slider/trough area.  Allowed values: >= 0  Default value: 2

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkScale.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
