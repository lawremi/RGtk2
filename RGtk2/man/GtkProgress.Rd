\alias{GtkProgress}
\name{GtkProgress}
\title{GtkProgress}
\description{Base class for GtkProgressBar}
\section{Methods and Functions}{
\link{gtkProgressSetShowText}(object, show.text)
\link{gtkProgressSetTextAlignment}(object, x.align, y.align)
\link{gtkProgressSetFormatString}(object, format)
\link{gtkProgressSetAdjustment}(object, adjustment)
\link{gtkProgressSetPercentage}(object, percentage)
\link{gtkProgressSetValue}(object, value)
\link{gtkProgressGetValue}(object)
\link{gtkProgressSetActivityMode}(object, activity.mode)
\link{gtkProgressGetCurrentText}(object)
\link{gtkProgressGetTextFromValue}(object, value)
\link{gtkProgressGetCurrentPercentage}(object)
\link{gtkProgressGetPercentageFromValue}(object, value)
\link{gtkProgressConfigure}(object, value, min, max)
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----GtkProgress
                     +----\link{GtkProgressBar}}}
\section{Interfaces}{GtkProgress implements
 AtkImplementorIface.}
\section{Detailed Description}{A \code{\link{GtkProgress}} is the abstract base class used to derive
a \code{\link{GtkProgressBar}} which provides a visual representation of
the progress of a long running operation.  }
\section{Structures}{\describe{\item{\code{GtkProgress}}{
The \code{\link{GtkProgress}} struct contains private data only.
and should be accessed using the functions below.

}}}
\section{Properties}{\describe{
\item{\code{activity-mode} [logical : Read / Write]}{

If TRUE the GtkProgress is in activity mode, meaning that it signals something is happening, but not how much of the activity is finished. This is used when you're doing something that you don't know how long it will take.  Default value: FALSE

}
\item{\code{show-text} [logical : Read / Write]}{

Whether the progress is shown as text.  Default value: FALSE

}
\item{\code{text-xalign} [numeric : Read / Write]}{

A number between 0.0 and 1.0 specifying the horizontal alignment of the text in the progress widget.  Allowed values: [0,1]  Default value: 0.5

}
\item{\code{text-yalign} [numeric : Read / Write]}{

A number between 0.0 and 1.0 specifying the vertical alignment of the text in the progress widget.  Allowed values: [0,1]  Default value: 0.5

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkProgress.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
