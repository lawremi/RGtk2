\alias{GtkVolumeButton}
\alias{gtkVolumeButton}
\name{GtkVolumeButton}
\title{GtkVolumeButton}
\description{A button which pops up a volume control}
\section{Methods and Functions}{
\code{\link{gtkVolumeButtonNew}(show = TRUE)}\cr
\code{gtkVolumeButton(show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBin
                                 +----GtkButton
                                       +----GtkScaleButton
                                             +----GtkVolumeButton}}
\section{Interfaces}{GtkVolumeButton implements
 AtkImplementorIface,  \code{\link{GtkBuildable}},  \code{\link{GtkActivatable}} and  \code{\link{GtkOrientable}}.}
\section{Detailed Description}{\code{\link{GtkVolumeButton}} is a subclass of \code{\link{GtkScaleButton}} that has
been tailored for use as a volume control widget with suitable
icons, tooltips and accessible labels.}
\section{Structures}{\describe{\item{\verb{GtkVolumeButton}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkVolumeButton} is the equivalent of \code{\link{gtkVolumeButtonNew}}.}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkVolumeButton.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
