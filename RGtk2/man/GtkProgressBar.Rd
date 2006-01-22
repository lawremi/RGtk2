\alias{GtkProgressBar}
\alias{gtkProgressBar}
\alias{GtkProgressBarOrientation}
\alias{GtkProgressBarStyle}
\name{GtkProgressBar}
\title{GtkProgressBar}
\description{A widget which indicates progress visually}
\usage{gtkProgressBar(adjustment = NULL, show = TRUE)}
\section{Methods and Functions}{
\link{gtkProgressBarNew}(show = TRUE)
\link{gtkProgressBarPulse}(object)
\link{gtkProgressBarSetText}(object, text)
\link{gtkProgressBarSetFraction}(object, fraction)
\link{gtkProgressBarSetPulseStep}(object, fraction)
\link{gtkProgressBarSetOrientation}(object, orientation)
\link{gtkProgressBarSetEllipsize}(object, mode)
\link{gtkProgressBarGetText}(object)
\link{gtkProgressBarGetFraction}(object)
\link{gtkProgressBarGetPulseStep}(object)
\link{gtkProgressBarGetOrientation}(object)
\link{gtkProgressBarGetEllipsize}(object)
\link{gtkProgressBarNewWithAdjustment}(adjustment = NULL, show = TRUE)
\link{gtkProgressBarSetBarStyle}(object, style)
\link{gtkProgressBarSetDiscreteBlocks}(object, blocks)
\link{gtkProgressBarSetActivityStep}(object, step)
\link{gtkProgressBarSetActivityBlocks}(object, blocks)
\link{gtkProgressBarUpdate}(object, percentage)
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkProgress}
                     +----GtkProgressBar}}
\section{Interfaces}{GtkProgressBar implements
 AtkImplementorIface.}
\section{Detailed Description}{The \code{\link{GtkProgressBar}} is typically used to display the progress of a long
running operation.  It provides a visual clue that processing
is underway.  The \code{\link{GtkProgressBar}} can be used in two different
modes: percentage mode and activity mode.
  
When an application can determine how much work needs to take place 
(e.g. read a fixed number of bytes from a file) and can monitor its
progress, it can use the \code{\link{GtkProgressBar}} in percentage mode and the user
sees a growing bar indicating the percentage of the work that has
been completed.  In this mode, the application is required to call
\code{\link{gtkProgressBarSetFraction}} periodically to update the progress bar.
  
When an application has no accurate way of knowing the amount of work
to do, it can use the \code{\link{GtkProgressBar}} in activity mode, which shows activity 
by a block moving back and forth within the progress area. In this mode,
the application is required to call \code{\link{gtkProgressBarPulse}} perodically
to update the progress bar.
  
There is quite a bit of flexibility provided to control the appearance
of the \code{\link{GtkProgressBar}}.  Functions are provided to control the 
orientation of the bar, optional text can be displayed along with
the bar, and the step size used in activity mode can be set.
  \emph{  
The \code{\link{GtkProgressBar}}/\code{\link{GtkProgress}} API in GTK 1.2 was bloated, needlessly complex
and hard to use properly.  Therefore \code{\link{GtkProgress}} has been deprecated
completely and the \code{\link{GtkProgressBar}} API has been reduced to the following 10
functions: \code{\link{gtkProgressBarNew}}, \code{\link{gtkProgressBarPulse}}, 
\code{\link{gtkProgressBarSetText}}, \code{\link{gtkProgressBarSetFraction}}, 
\code{\link{gtkProgressBarSetPulseStep}}, \code{\link{gtkProgressBarSetOrientation}}, 
\code{\link{gtkProgressBarGetText}}, \code{\link{gtkProgressBarGetFraction}}, 
\code{\link{gtkProgressBarGetPulseStep}}, \code{\link{gtkProgressBarGetOrientation}}. 
These have been grouped at the beginning of this section, followed by 
a large chunk of deprecated 1.2 compatibility functions.
  }}
\section{Structures}{\describe{\item{\code{GtkProgressBar}}{
The \code{\link{GtkProgressBar}} struct contains private data only, 
and should be accessed using the functions below.

}}}
\section{Convenient Construction}{\code{gtkProgressBar} is the result of collapsing the constructors of \code{GtkProgressBar} (\code{\link{gtkProgressBarNew}}, \code{\link{gtkProgressBarNewWithAdjustment}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Enums and Flags}{\describe{
\item{\code{enum GtkProgressBarOrientation}}{
An enumeration representing possible orientations and growth
directions for the visible progress bar.

\describe{
\item{\code{GTK_PROGRESS_LEFT_TO_RIGHT (left-to-right)}}{A horizontal progress bar growing from left to right.}
\item{\code{GTK_PROGRESS_RIGHT_TO_LEFT (right-to-left)}}{A horizontal progress bar growing from right to left.}
\item{\code{GTK_PROGRESS_BOTTOM_TO_TOP (bottom-to-top)}}{A vertical progress bar growing from bottom to top.}
\item{\code{GTK_PROGRESS_TOP_TO_BOTTOM (top-to-bottom)}}{A vertical progress bar growing from top to bottom.}
}

}
\item{\code{enum GtkProgressBarStyle}}{
An enumeration representing the styles for drawing the progress bar.

\describe{
\item{\code{GTK_PROGRESS_CONTINUOUS (continuous)}}{The progress bar grows in a smooth, continuous manner.}
\item{\code{GTK_PROGRESS_DISCRETE (discrete)}}{The progress bar grows in discrete, visible blocks.}
}

}
}}
\section{Properties}{\describe{
\item{\code{activity-blocks} [numeric : Read / Write]}{

The number of blocks which can fit in the progress bar area in activity mode (Deprecated).  Allowed values: >= 2  Default value: 5

}
\item{\code{activity-step} [numeric : Read / Write]}{

The increment used for each iteration in activity mode (Deprecated).  Allowed values: >= 1  Default value: 3

}
\item{\code{adjustment} [\code{\link{GtkAdjustment}} : Read / Write]}{

The GtkAdjustment connected to the progress bar (Deprecated).

}
\item{\code{bar-style} [\code{\link{GtkProgressBarStyle}} : Read / Write]}{

Specifies the visual style of the bar in percentage mode (Deprecated).  Default value: GTK_PROGRESS_CONTINUOUS

}
\item{\code{discrete-blocks} [numeric : Read / Write]}{

The number of discrete blocks in a progress bar (when shown in the discrete style).  Allowed values: >= 2  Default value: 10

}
\item{\code{ellipsize} [\code{\link{PangoEllipsizeMode}} : Read / Write]}{

The preferred place to ellipsize the string, if the progressbar does 
not have enough room to display the entire string, specified as a 
\code{PangoEllisizeMode}. 
  
Note that setting this property to a value other than 
\code{PANGO_ELLIPSIZE_NONE} has the side-effect that the progressbar requests 
only enough space to display the ellipsis "...". Another means to set a 
progressbar's width is \code{\link{gtkWidgetSetSizeRequest}}.  

  Default value: PANGO_ELLIPSIZE_NONE  Since  2.6

}
\item{\code{fraction} [numeric : Read / Write]}{

The fraction of total work that has been completed.  Allowed values: [0,1]  Default value: 0

}
\item{\code{orientation} [\code{\link{GtkProgressBarOrientation}} : Read / Write]}{

Orientation and growth direction of the progress bar.  Default value: GTK_PROGRESS_LEFT_TO_RIGHT

}
\item{\code{pulse-step} [numeric : Read / Write]}{

The fraction of total progress to move the bouncing block when pulsed.  Allowed values: [0,1]  Default value: 0.1

}
\item{\code{text} [character : Read / Write]}{

Text to be displayed in the progress bar.  Default value: "%P %%"

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkProgressBar.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
