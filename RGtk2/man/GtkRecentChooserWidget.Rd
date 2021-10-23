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
 AtkImplementorIface,  \code{\link{GtkBuildable}},  \code{\link{GtkOrientable}} and  \code{\link{GtkRecentChooser}}.}
\section{Detailed Description}{\code{\link{GtkRecentChooserWidget}} is a widget suitable for selecting recently used
files.  It is the main building block of a \code{\link{GtkRecentChooserDialog}}.  Most
applications will only need to use the latter; you can use
\code{\link{GtkRecentChooserWidget}} as part of a larger window if you have special needs.
  
Note that \code{\link{GtkRecentChooserWidget}} does not have any methods of its own.
Instead, you should use the functions that work on a \code{\link{GtkRecentChooser}}.
  
Recently used files are supported since GTK+ 2.10.}
\section{Structures}{\describe{\item{\verb{GtkRecentChooserWidget}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkRecentChooserWidget} is the equivalent of \code{\link{gtkRecentChooserWidgetNewForManager}}.}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkRecentChooserWidget.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkRecentChooser}}
\code{\link{GtkRecentChooserDialog}}
}
\keyword{internal}
