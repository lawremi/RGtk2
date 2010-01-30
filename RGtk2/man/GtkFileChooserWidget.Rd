\alias{GtkFileChooserWidget}
\alias{gtkFileChooserWidget}
\name{GtkFileChooserWidget}
\title{GtkFileChooserWidget}
\description{File chooser widget that can be embedded in other widgets}
\section{Methods and Functions}{
\code{\link{gtkFileChooserWidgetNew}(action, show = TRUE)}\cr
\code{\link{gtkFileChooserWidgetNewWithBackend}(action, backend, show = TRUE)}\cr
\code{gtkFileChooserWidget(action, backend, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBox
                                 +----GtkVBox
                                       +----GtkFileChooserWidget}}
\section{Interfaces}{GtkFileChooserWidget implements
 AtkImplementorIface,  \verb{\link{GtkBuildable}},  \verb{\link{GtkFileChooser}} and  GtkFileChooserEmbed.}
\section{Detailed Description}{\verb{\link{GtkFileChooserWidget}} is a widget suitable for selecting files.
      It is the main building block of a \verb{\link{GtkFileChooserDialog}}.  Most
      applications will only need to use the latter; you can use
      \verb{\link{GtkFileChooserWidget}} as part of a larger window if you have
      special needs.
      
      Note that \verb{\link{GtkFileChooserWidget}} does not have any methods of its
      own.  Instead, you should use the functions that work on a
      \verb{\link{GtkFileChooser}}.
    }
\section{Structures}{\describe{\item{\verb{GtkFileChooserWidget}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkFileChooserWidget} is the result of collapsing the constructors of \code{GtkFileChooserWidget} (\code{\link{gtkFileChooserWidgetNew}}, \code{\link{gtkFileChooserWidgetNewWithBackend}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkFileChooserWidget.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\verb{\link{GtkFileChooser}}
\verb{\link{GtkFileChooserDialog}}
}
\keyword{internal}
