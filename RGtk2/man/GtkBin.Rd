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
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{The \code{\link{GtkBin}} widget is a container with just one child.
It is not very useful itself, but it is useful for deriving subclasses,
since it provides common code needed for handling a single child widget.
  
Many GTK+ widgets are subclasses of \code{\link{GtkBin}}, including \code{\link{GtkWindow}}, \code{\link{GtkButton}},
\code{\link{GtkFrame}}, \code{\link{GtkHandleBox}}, and \code{\link{GtkScrolledWindow}}.}
\section{Structures}{\describe{\item{\verb{GtkBin}}{
The \code{\link{GtkBin}} struct contains the following fields.
(These fields should be considered read-only. They should never be set by
an application.)
\tabular{ll}{\code{\link{GtkWidget}}   *child; \tab the child widget. \cr}

}}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkBin.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
