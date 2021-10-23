\alias{GtkVBox}
\alias{gtkVBox}
\name{GtkVBox}
\title{GtkVBox}
\description{A vertical container box}
\section{Methods and Functions}{
\code{\link{gtkVBoxNew}(homogeneous = NULL, spacing = NULL, show = TRUE)}\cr
\code{gtkVBox(homogeneous = NULL, spacing = NULL, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBox
                                 +----GtkVBox
                                       +----GtkColorSelection
                                       +----GtkFileChooserWidget
                                       +----GtkFontSelection
                                       +----GtkGammaCurve
                                       +----GtkRecentChooserWidget}}
\section{Interfaces}{GtkVBox implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkOrientable}}.}
\section{Detailed Description}{A \code{\link{GtkVBox}} is a container that organizes child widgets into a single column.
  
Use the \code{\link{GtkBox}} packing interface to determine the arrangement,
spacing, height, and alignment of \code{\link{GtkVBox}} children.
  
All children are allocated the same width.}
\section{Structures}{\describe{\item{\verb{GtkVBox}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkVBox} is the equivalent of \code{\link{gtkVBoxNew}}.}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkVBox.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
