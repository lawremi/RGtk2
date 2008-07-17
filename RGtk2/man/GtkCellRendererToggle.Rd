\alias{GtkCellRendererToggle}
\alias{gtkCellRendererToggle}
\name{GtkCellRendererToggle}
\title{GtkCellRendererToggle}
\description{Renders a toggle button in a cell}
\section{Methods and Functions}{
\code{\link{gtkCellRendererToggleNew}()}\cr
\code{\link{gtkCellRendererToggleGetRadio}(object)}\cr
\code{\link{gtkCellRendererToggleSetRadio}(object, radio)}\cr
\code{\link{gtkCellRendererToggleGetActive}(object)}\cr
\code{\link{gtkCellRendererToggleSetActive}(object, setting)}\cr
\code{gtkCellRendererToggle()}
}
\section{Hierarchy}{\preformatted{\link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkCellRenderer}
                     +----GtkCellRendererToggle}}
\section{Detailed Description}{\code{\link{GtkCellRendererToggle}} renders a toggle button in a cell. The 
button is drawn as a radio- or checkbutton, depending on the 
radio 
property. When activated, it emits the toggled signal.}
\section{Structures}{\describe{\item{\code{GtkCellRendererToggle}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkCellRendererToggle} is the equivalent of \code{\link{gtkCellRendererToggleNew}}.}
\section{Signals}{\describe{\item{\code{toggled(cell.renderer, path, user.data)}}{
The ::toggled signal is emitted when the cell is toggled.  

\describe{
\item{\code{cell.renderer}}{[\code{\link{GtkCellRendererToggle}}]  the object which received the signal}
\item{\code{path}}{[character]  string representation of \code{\link{GtkTreePath}} describing the 
       event location}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}}}
\section{Properties}{\describe{
\item{\code{activatable} [logical : Read / Write]}{

The toggle button can be activated.  Default value: TRUE

}
\item{\code{active} [logical : Read / Write]}{

The toggle state of the button.  Default value: FALSE

}
\item{\code{inconsistent} [logical : Read / Write]}{

The inconsistent state of the button.  Default value: FALSE

}
\item{\code{indicator-size} [integer : Read / Write]}{

Size of check or radio indicator.  Allowed values: >= 0  Default value: 13

}
\item{\code{radio} [logical : Read / Write]}{

Draw the toggle button as a radio button.  Default value: FALSE

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkCellRendererToggle.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
