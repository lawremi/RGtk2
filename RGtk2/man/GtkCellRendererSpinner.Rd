\alias{GtkCellRendererSpinner}
\alias{gtkCellRendererSpinner}
\name{GtkCellRendererSpinner}
\title{GtkCellRendererSpinner}
\description{Renders a spinning animation in a cell}
\section{Methods and Functions}{
\code{\link{gtkCellRendererSpinnerNew}()}\cr
\code{gtkCellRendererSpinner()}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkCellRenderer
                     +----GtkCellRendererSpinner}}
\section{Detailed Description}{GtkCellRendererSpinner renders a spinning animation in a cell, very
similar to \code{\link{GtkSpinner}}. It can often be used as an alternative
to a \code{\link{GtkCellRendererProgress}} for displaying indefinite activity,
instead of actual progress.
  
To start the animation in a cell, set the \verb{"active"}
property to \code{TRUE} and increment the \verb{"pulse"} property
at regular intervals. The usual way to set the cell renderer properties
for each cell is to bind them to columns in your tree model using e.g.
\code{\link{gtkTreeViewColumnAddAttribute}}.}
\section{Structures}{\describe{\item{\verb{GtkCellRendererSpinner}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkCellRendererSpinner} is the equivalent of \code{\link{gtkCellRendererSpinnerNew}}.}
\section{Properties}{\describe{
\item{\verb{active} [logical : Read / Write]}{

Whether the spinner is active (ie. shown) in the cell.  Default value: FALSE

}
\item{\verb{pulse} [numeric : Read / Write]}{

Pulse of the spinner. Increment this value to draw the next frame of the
spinner animation. Usually, you would update this value in a timeout.
  
The \code{\link{GtkSpinner}} widget draws one full cycle of the animation per second by default.
You can learn about the number of frames used by the theme
by looking at the \verb{"num-steps"} style property and the duration
of the cycle by looking at \verb{"cycle-duration"}.
  Default value: 0  Since 2.20

}
\item{\verb{size} [\code{\link{GtkIconSize}} : Read / Write]}{

The \code{\link{GtkIconSize}} value that specifies the size of the rendered spinner.
  Default value: GTK_ICON_SIZE_MENU  Since 2.20

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkCellRendererSpinner.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
