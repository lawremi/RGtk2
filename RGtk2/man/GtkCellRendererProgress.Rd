\alias{GtkCellRendererProgress}
\alias{gtkCellRendererProgress}
\name{GtkCellRendererProgress}
\title{GtkCellRendererProgress}
\description{Renders numbers as progress bars}
\section{Methods and Functions}{
\code{\link{gtkCellRendererProgressNew}()}\cr
\code{gtkCellRendererProgress()}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkCellRenderer
                     +----GtkCellRendererProgress}}
\section{Detailed Description}{\code{\link{GtkCellRendererProgress}} renders a numeric value as a progress par in a cell.
Additionally, it can display a text on top of the progress bar.
  
The \code{\link{GtkCellRendererProgress}} cell renderer was added in GTK+ 2.6.}
\section{Structures}{\describe{\item{\verb{GtkCellRendererProgress}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkCellRendererProgress} is the equivalent of \code{\link{gtkCellRendererProgressNew}}.}
\section{Properties}{\describe{
\item{\verb{orientation} [\code{\link{GtkProgressBarOrientation}} : Read / Write]}{

The "orientation" property controls the direction and growth
direction of the progress bar (left-to-right, right-to-left,
top-to-bottom or bottom-to-top).
  Default value: GTK_PROGRESS_LEFT_TO_RIGHT  Since 2.12

}
\item{\verb{pulse} [integer : Read / Write]}{

Setting this to a non-negative value causes the cell renderer to
enter "activity mode", where a block bounces back and forth to
indicate that some progress is made, without specifying exactly how
much.
  
Each increment of the property causes the block to move by a little
bit.
  
To indicate that the activity has not started yet, set the property
to zero. To indicate completion, set the property to \code{G_MAXINT}.
  Allowed values: >= -1  Default value: -1  Since 2.12

}
\item{\verb{text} [character : *                : Read / Write]}{

The "text" property determines the label which will be drawn
over the progress bar. Setting this property to \code{NULL} causes the default
label to be displayed. Setting this property to an empty string causes
no label to be displayed.
  Default value: NULL  Since 2.6

}
\item{\verb{text-xalign} [numeric : Read / Write]}{

The "text-xalign" property controls the horizontal alignment of the
text in the progress bar.  Valid values range from 0 (left) to 1
(right).  Reserved for RTL layouts.
  Allowed values: [0,1]  Default value: 0.5  Since 2.12

}
\item{\verb{text-yalign} [numeric : Read / Write]}{

The "text-yalign" property controls the vertical alignment of the
text in the progress bar.  Valid values range from 0 (top) to 1
(bottom).
  Allowed values: [0,1]  Default value: 0.5  Since 2.12

}
\item{\verb{value} [integer : Read / Write]}{

The "value" property determines the percentage to which the
progress bar will be "filled in".
  Allowed values: [0,100]  Default value: 0  Since 2.6

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkCellRendererProgress.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
