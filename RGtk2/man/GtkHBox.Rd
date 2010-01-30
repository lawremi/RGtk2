\alias{GtkHBox}
\alias{gtkHBox}
\name{GtkHBox}
\title{GtkHBox}
\description{A horizontal container box}
\section{Methods and Functions}{
\code{\link{gtkHBoxNew}(homogeneous = NULL, spacing = NULL, show = TRUE)}\cr
\code{gtkHBox(homogeneous = NULL, spacing = NULL, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBox
                                 +----GtkHBox
                                       +----GtkCombo
                                       +----GtkFileChooserButton
                                       +----GtkStatusbar}}
\section{Interfaces}{GtkHBox implements
 AtkImplementorIface and  \verb{\link{GtkBuildable}}.}
\section{Detailed Description}{GtkHBox is a container that organizes child widgets into a single row.
  
Use the \verb{\link{GtkBox}} packing interface to determine the arrangement,
spacing, width, and alignment of GtkHBox children.
  
All children are allocated the same height.}
\section{Structures}{\describe{\item{\verb{GtkHBox}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkHBox} is the equivalent of \code{\link{gtkHBoxNew}}.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkHBox.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
