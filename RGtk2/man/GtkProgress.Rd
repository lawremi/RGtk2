\alias{GtkProgress}
\name{GtkProgress}
\title{GtkProgress}
\description{Base class for GtkProgressBar}
\section{Methods and Functions}{
\code{\link{gtkProgressSetShowText}(object, show.text)}\cr
\code{\link{gtkProgressSetTextAlignment}(object, x.align, y.align)}\cr
\code{\link{gtkProgressSetFormatString}(object, format)}\cr
\code{\link{gtkProgressSetAdjustment}(object, adjustment)}\cr
\code{\link{gtkProgressSetPercentage}(object, percentage)}\cr
\code{\link{gtkProgressSetValue}(object, value)}\cr
\code{\link{gtkProgressGetValue}(object)}\cr
\code{\link{gtkProgressSetActivityMode}(object, activity.mode)}\cr
\code{\link{gtkProgressGetCurrentText}(object)}\cr
\code{\link{gtkProgressGetTextFromValue}(object, value)}\cr
\code{\link{gtkProgressGetCurrentPercentage}(object)}\cr
\code{\link{gtkProgressGetPercentageFromValue}(object, value)}\cr
\code{\link{gtkProgressConfigure}(object, value, min, max)}\cr

}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkWidget}
                     +----GtkProgress
                           +----\link{GtkProgressBar}}}
\section{Interfaces}{GtkProgress implements
 \code{\link{GtkBuildable}} and  AtkImplementorIface.}
\section{Detailed Description}{A \code{\link{GtkProgress}} is the abstract base class used to derive
a \code{\link{GtkProgressBar}} which provides a visual representation of
the progress of a long running operation.  }
\section{Structures}{\describe{\item{\code{GtkProgress}}{
The \code{\link{GtkProgress}} struct contains private data only.
and should be accessed using the functions below.

}}}
\section{Properties}{\describe{
\item{\code{activity-mode} [logical : Read / Write]}{

If TRUE, the GtkProgress is in activity mode, meaning that it signals something is happening, but not how much of the activity is finished. This is used when you're doing something but don't know how long it will take.  Default value: FALSE

}
\item{\code{show-text} [logical : Read / Write]}{

Whether the progress is shown as text.  Default value: FALSE

}
\item{\code{text-xalign} [numeric : Read / Write]}{

The horizontal text alignment, from 0 (left) to 1 (right). Reversed for RTL layouts.  Allowed values: [0,1]  Default value: 0.5

}
\item{\code{text-yalign} [numeric : Read / Write]}{

The vertical text alignment, from 0 (top) to 1 (bottom).  Allowed values: [0,1]  Default value: 0.5

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkProgress.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
