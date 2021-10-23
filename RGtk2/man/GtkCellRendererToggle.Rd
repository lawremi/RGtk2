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
\code{\link{gtkCellRendererToggleGetActivatable}(object)}\cr
\code{\link{gtkCellRendererToggleSetActivatable}(object, setting)}\cr
\code{gtkCellRendererToggle()}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkCellRenderer
                     +----GtkCellRendererToggle}}
\section{Detailed Description}{\code{\link{GtkCellRendererToggle}} renders a toggle button in a cell. The
button is drawn as a radio- or checkbutton, depending on the
radio
property. When activated, it emits the toggled signal.}
\section{Structures}{\describe{\item{\verb{GtkCellRendererToggle}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkCellRendererToggle} is the equivalent of \code{\link{gtkCellRendererToggleNew}}.}
\section{Signals}{\describe{\item{\code{toggled(cell.renderer, path, user.data)}}{
The ::toggled signal is emitted when the cell is toggled.

\describe{
\item{\code{cell.renderer}}{the object which received the signal}
\item{\code{path}}{string representation of \code{\link{GtkTreePath}} describing the
event location}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}}}
\section{Properties}{\describe{
\item{\verb{activatable} [logical : Read / Write]}{

The toggle button can be activated.  Default value: TRUE

}
\item{\verb{active} [logical : Read / Write]}{

The toggle state of the button.  Default value: FALSE

}
\item{\verb{inconsistent} [logical : Read / Write]}{

The inconsistent state of the button.  Default value: FALSE

}
\item{\verb{indicator-size} [integer : Read / Write]}{

Size of check or radio indicator.  Allowed values: >= 0  Default value: 13

}
\item{\verb{radio} [logical : Read / Write]}{

Draw the toggle button as a radio button.  Default value: FALSE

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkCellRendererToggle.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
