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
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkCellRenderer
                     +----GtkCellRendererText
                           +----GtkCellRendererAccel}}
\section{Detailed Description}{\code{\link{GtkCellRendererAccel}} displays a keyboard accelerator (i.e. a
key combination like <Control>-a). If the cell renderer is editable, the
accelerator can be changed by simply typing the new combination.
  
The \code{\link{GtkCellRendererAccel}} cell renderer was added in GTK+ 2.10.}
\section{Structures}{\describe{\item{\verb{GtkCellRendererAccel}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkCellRendererAccel} is the equivalent of \code{\link{gtkCellRendererAccelNew}}.}
\section{Enums and Flags}{\describe{\item{\verb{GtkCellRendererAccelMode}}{
\emph{undocumented
}

\describe{
\item{\verb{gtk}}{\emph{undocumented
}}
\item{\verb{other}}{\emph{undocumented
}}
}

}}}
\section{Signals}{\describe{
\item{\code{accel-cleared(accel, path.string, user.data)}}{
Gets emitted when the user has removed the accelerator.
  Since 2.10

\describe{
\item{\code{accel}}{the object reveiving the signal}
\item{\code{path.string}}{the path identifying the row of the edited cell}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{accel-edited(accel, path.string, accel.key, accel.mods, hardware.keycode, user.data)}}{
Gets emitted when the user has selected a new accelerator.
  Since 2.10

\describe{
\item{\code{accel}}{the object reveiving the signal}
\item{\code{path.string}}{the path identifying the row of the edited cell}
\item{\code{accel.key}}{the new accelerator keyval}
\item{\code{accel.mods}}{the new acclerator modifier mask}
\item{\code{hardware.keycode}}{the keycode of the new accelerator}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\verb{accel-key} [numeric : Read / Write]}{

The keyval of the accelerator.
  Allowed values: <= G_MAXINT  Default value: 0  Since 2.10

}
\item{\verb{accel-mode} [\code{\link{GtkCellRendererAccelMode}} : Read / Write]}{

Determines if the edited accelerators are GTK+ accelerators. If
they are, consumed modifiers are suppressed, only accelerators
accepted by GTK+ are allowed, and the accelerators are rendered
in the same way as they are in menus.
  Default value: GTK_CELL_RENDERER_ACCEL_MODE_GTK  Since 2.10

}
\item{\verb{accel-mods} [\code{\link{GdkModifierType}} : Read / Write]}{

The modifier mask of the accelerator.
  Since 2.10

}
\item{\verb{keycode} [numeric : Read / Write]}{

The hardware keycode of the accelerator. Note that the hardware keycode is
only relevant if the key does not have a keyval. Normally, the keyboard
configuration should assign keyvals to all keys.
  Allowed values: <= G_MAXINT  Default value: 0  Since 2.10

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkCellRendererAccel.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
