\alias{GtkCellRendererAccel}
\alias{gtkCellRendererAccel}
\alias{GtkCellRendererAccelMode}
\name{GtkCellRendererAccel}
\title{GtkCellRendererAccel}
\description{Renders a keyboard accelerator in a cell}
\section{Methods and Functions}{
\code{\link{gtkCellRendererAccelNew}()}\cr
\code{gtkCellRendererAccel()}
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkCellRenderer}
                     +----\link{GtkCellRendererText}
                           +----GtkCellRendererAccel}}
\section{Detailed Description}{\code{\link{GtkCellRendererAccel}} displays a keyboard accelerator (i.e. a 
key combination like <Control>-a). If the cell renderer is editable, the 
accelerator can be changed by simply typing the new combination.
  
The \code{\link{GtkCellRendererAccel}} cell renderer was added in GTK+ 2.10.}
\section{Structures}{\describe{\item{\code{GtkCellRendererAccel}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkCellRendererAccel} is the equivalent of \code{\link{gtkCellRendererAccelNew}}.}
\section{Enums and Flags}{\describe{\item{\code{GtkCellRendererAccelMode}}{
\emph{undocumented
}

\describe{
\item{\code{gtk}}{\emph{undocumented
}}
\item{\code{other}}{\emph{undocumented
}}
}

}}}
\section{Signals}{\describe{
\item{\code{accel-cleared(accel, path.string, user.data)}}{
Gets emitted when the user has removed the accelerator.  

  Since  2.10

\describe{
\item{\code{accel}}{[\code{\link{GtkCellRendererAccel}}]  the object reveiving the signal}
\item{\code{path.string}}{[character]  the path identifying the row of the edited cell}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{accel-edited(accel, path.string, accel.key, accel.mods, hardware.keycode, user.data)}}{
Gets emitted when the user has selected a new accelerator.  

  Since  2.10

\describe{
\item{\code{accel}}{[\code{\link{GtkCellRendererAccel}}]  the object reveiving the signal}
\item{\code{path.string}}{[character]  the path identifying the row of the edited cell}
\item{\code{accel.key}}{[numeric]  the new accelerator keyval}
\item{\code{accel.mods}}{[\code{\link{GdkModifierType}}]  the new acclerator modifier mask}
\item{\code{hardware.keycode}}{[numeric]  the keycode of the new accelerator}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\code{accel-key} [numeric : Read / Write]}{

The keyval of the accelerator.  

  Allowed values: <= G\_MAXINT  Default value: 0  Since  2.10

}
\item{\code{accel-mode} [\code{\link{GtkCellRendererAccelMode}} : Read / Write]}{

Determines if the edited accelerators are GTK+ accelerators. If
they are, consumed modifiers are suppressed, only accelerators
accepted by GTK+ are allowed, and the accelerators are rendered
in the same way as they are in menus.  

  Default value: GTK\_CELL\_RENDERER\_ACCEL\_MODE\_GTK  Since  2.10

}
\item{\code{accel-mods} [\code{\link{GdkModifierType}} : Read / Write]}{

The modifier mask of the accelerator.  

  Since  2.10

}
\item{\code{keycode} [numeric : Read / Write]}{

The hardware keycode of the accelerator. Note that the hardware keycode is
only relevant if the key does not have a keyval. Normally, the keyboard
configuration should assign keyvals to all keys.  

  Allowed values: <= G\_MAXINT  Default value: 0  Since  2.10

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkCellRendererAccel.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
