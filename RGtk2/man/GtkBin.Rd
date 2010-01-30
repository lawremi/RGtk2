\alias{GtkBin}
\name{GtkBin}
\title{GtkBin}
\description{A container with just one child}
\section{Methods and Functions}{
\code{\link{gtkBinGetChild}(object)}\cr

}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBin
                                 +----GtkWindow
                                 +----GtkAlignment
                                 +----GtkFrame
                                 +----GtkButton
                                 +----GtkItem
                                 +----GtkComboBox
                                 +----GtkEventBox
                                 +----GtkExpander
                                 +----GtkHandleBox
                                 +----GtkToolItem
                                 +----GtkScrolledWindow
                                 +----GtkViewport}}
\section{Interfaces}{GtkBin implements
 AtkImplementorIface and  \verb{\link{GtkBuildable}}.}
\section{Detailed Description}{The \verb{\link{GtkBin}} widget is a container with just one child.
It is not very useful itself, but it is useful for deriving subclasses,
since it provides common code needed for handling a single child widget.
  
Many GTK+ widgets are subclasses of \verb{\link{GtkBin}}, including \verb{\link{GtkWindow}}, \verb{\link{GtkButton}},
\verb{\link{GtkFrame}}, \verb{\link{GtkHandleBox}}, and \verb{\link{GtkScrolledWindow}}.}
\section{Structures}{\describe{\item{\verb{GtkBin}}{
The \verb{\link{GtkBin}} struct contains the following fields.
(These fields should be considered read-only. They should never be set by
an application.)

\tabular{ll}{\verb{\link{GtkWidget}}   *child; \tab the child widget. \cr}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkBin.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
