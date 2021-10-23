\alias{GtkFileChooserWidget}
\alias{gtkFileChooserWidget}
\name{GtkFileChooserWidget}
\title{GtkFileChooserWidget}
\description{File chooser widget that can be embedded in other widgets}
\section{Methods and Functions}{
\code{\link{gtkFileChooserWidgetNew}(action, show = TRUE)}\cr
\code{\link{gtkFileChooserWidgetNewWithBackend}(action, backend, show = TRUE)}\cr
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
 AtkImplementorIface,  \code{\link{GtkBuildable}},  \code{\link{GtkOrientable}},  \code{\link{GtkFileChooser}} and  GtkFileChooserEmbed.}
\section{Detailed Description}{\code{\link{GtkFileChooserWidget}} is a widget suitable for selecting files.
      It is the main building block of a \code{\link{GtkFileChooserDialog}}.  Most
      applications will only need to use the latter; you can use
      \code{\link{GtkFileChooserWidget}} as part of a larger window if you have
      special needs.
      
      Note that \code{\link{GtkFileChooserWidget}} does not have any methods of its
      own.  Instead, you should use the functions that work on a
      \code{\link{GtkFileChooser}}.
    }
\section{Structures}{\describe{\item{\verb{GtkFileChooserWidget}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkFileChooserWidget} is the result of collapsing the constructors of \code{GtkFileChooserWidget} (\code{\link{gtkFileChooserWidgetNew}}, \code{\link{gtkFileChooserWidgetNewWithBackend}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkFileChooserWidget.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkFileChooser}}
\code{\link{GtkFileChooserDialog}}
}
\keyword{internal}
