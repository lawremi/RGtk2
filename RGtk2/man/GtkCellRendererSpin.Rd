\alias{GtkCellRendererSpin}
\alias{gtkCellRendererSpin}
\name{GtkCellRendererSpin}
\title{GtkCellRendererSpin}
\description{Renders a spin button in a cell}
\section{Methods and Functions}{
\code{\link{gtkCellRendererSpinNew}()}\cr
\code{gtkCellRendererSpin()}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkCellRenderer
                     +----GtkCellRendererText
                           +----GtkCellRendererSpin}}
\section{Detailed Description}{\verb{\link{GtkCellRendererSpin}} renders text in a cell like \verb{\link{GtkCellRendererText}} from 
which it is derived. But while \verb{\link{GtkCellRendererText}} offers a simple entry to 
edit the text, \verb{\link{GtkCellRendererSpin}} offers a \verb{\link{GtkSpinButton}} widget. Of course,
that means that the text has to be parseable as a floating point number.
  
The range of the spinbutton is taken from the adjustment property of the
cell renderer, which can be set explicitly or mapped to a column in the 
tree model, like all properties of cell renders. \verb{\link{GtkCellRendererSpin}}
also has properties for the climb rate and the number of digits to
display. Other \verb{\link{GtkSpinButton}} properties can be set in a handler for the
start-editing signal.
  
The \verb{\link{GtkCellRendererSpin}} cell renderer was added in GTK+ 2.10.}
\section{Structures}{\describe{\item{\verb{GtkCellRendererSpin}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkCellRendererSpin} is the equivalent of \code{\link{gtkCellRendererSpinNew}}.}
\section{Properties}{\describe{
\item{\verb{adjustment} [\verb{\link{GtkAdjustment}} : *        : Read / Write]}{

The adjustment that holds the value of the spinbutton. 
This must be non-\code{NULL} for the cell renderer to be editable.  

  Since  2.10

}
\item{\verb{climb-rate} [numeric : Read / Write]}{

The acceleration rate when you hold down a button.  

  Allowed values: >= 0  Default value: 0  Since  2.10

}
\item{\verb{digits} [numeric : Read / Write]}{

The number of decimal places to display.  

  Allowed values: <= 20  Default value: 0  Since  2.10

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkCellRendererSpin.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\verb{\link{GtkCellRendererText}}
\verb{\link{GtkSpinButton}}
}
\keyword{internal}
