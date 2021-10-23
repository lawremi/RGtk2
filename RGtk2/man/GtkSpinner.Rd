\alias{GtkSpinner}
\alias{gtkSpinner}
\name{GtkSpinner}
\title{GtkSpinner}
\description{Show a spinner animation}
\section{Methods and Functions}{
\code{\link{gtkSpinnerNew}(show = TRUE)}\cr
\code{\link{gtkSpinnerStart}(object)}\cr
\code{\link{gtkSpinnerStop}(object)}\cr
\code{gtkSpinner(show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkDrawingArea
                           +----GtkSpinner}}
\section{Interfaces}{GtkSpinner implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{A GtkSpinner widget displays an icon-size spinning animation.
It is often used as an alternative to a \code{\link{GtkProgressBar}} for
displaying indefinite activity, instead of actual progress.
  
To start the animation, use \code{\link{gtkSpinnerStart}}, to stop it
use \code{\link{gtkSpinnerStop}}.}
\section{Structures}{\describe{\item{\verb{GtkSpinner}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkSpinner} is the equivalent of \code{\link{gtkSpinnerNew}}.}
\section{Properties}{\describe{\item{\verb{active} [logical : Read / Write]}{

Whether the spinner is active.  Default value: FALSE

}}}
\section{Style Properties}{\describe{
\item{\verb{cycle-duration} [numeric : Read]}{

The duration in milliseconds for the spinner to complete a full cycle.
  Allowed values: >= 500  Default value: 1000  Since 2.20

}
\item{\verb{num-steps} [numeric : Read]}{

The number of steps for the spinner to complete a full loop.
The animation will complete a full cycle in one second by default
(see the \verb{"cycle-duration"} style property).
  Allowed values: >= 1  Default value: 12  Since 2.20

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkSpinner.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
