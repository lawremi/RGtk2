\alias{GtkRecentChooserWidget}
\alias{gtkRecentChooserWidget}
\name{GtkRecentChooserWidget}
\title{GtkRecentChooserWidget}
\description{Displays recently used files}
\section{Methods and Functions}{
\code{\link{gtkRecentChooserWidgetNew}()}\cr
\code{\link{gtkRecentChooserWidgetNewForManager}(manager = NULL, show = TRUE)}\cr
\code{gtkRecentChooserWidget(manager = NULL, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBox
                                 +----GtkVBox
                                       +----GtkRecentChooserWidget}}
\section{Interfaces}{GtkRecentChooserWidget implements
 AtkImplementorIface,  \verb{\link{GtkBuildable}} and  \verb{\link{GtkRecentChooser}}.}
\section{Detailed Description}{\verb{\link{GtkRecentChooserWidget}} is a widget suitable for selecting recently used
files.  It is the main building block of a \verb{\link{GtkRecentChooserDialog}}.  Most
applications will only need to use the latter; you can use
\verb{\link{GtkRecentChooserWidget}} as part of a larger window if you have special needs.
  
Note that \verb{\link{GtkRecentChooserWidget}} does not have any methods of its own.
Instead, you should use the functions that work on a \verb{\link{GtkRecentChooser}}.
  
Recently used files are supported since GTK+ 2.10.}
\section{Structures}{\describe{\item{\verb{GtkRecentChooserWidget}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkRecentChooserWidget} is the equivalent of \code{\link{gtkRecentChooserWidgetNewForManager}}.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkRecentChooserWidget.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\verb{\link{GtkRecentChooser}}
\verb{\link{GtkRecentChooserDialog}}
}
\keyword{internal}
