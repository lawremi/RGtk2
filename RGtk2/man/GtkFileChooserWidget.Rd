\alias{GtkFileChooserWidget}
\alias{gtkFileChooserWidget}
\name{GtkFileChooserWidget}
\title{GtkFileChooserWidget}
\description{File chooser widget that can be embedded in other widgets}
\usage{
\link{gtkFileChooserWidgetNew}(action, show = TRUE)
\link{gtkFileChooserWidgetNewWithBackend}(action, backend, show = TRUE)
gtkFileChooserWidget(action, backend, show = TRUE)
}
\details{      \code{\link{GtkFileChooserWidget}} is a widget suitable for selecting files.
      It is the main building block of a \code{\link{GtkFileChooserDialog}}.  Most
      applications will only need to use the latter; you can use
      \code{\link{GtkFileChooserWidget}} as part of a larger window if you have
      special needs.
      
      Note that \code{\link{GtkFileChooserWidget}} does not have any methods of its
      own.  Instead, you should use the functions that work on a
      \code{\link{GtkFileChooser}}.
    }
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----\link{GtkBox}
                           +----\link{GtkVBox}
                                 +----GtkFileChooserWidget}}
\section{Structures}{\describe{\item{\code{GtkFileChooserWidget}}{\emph{undocumented
}}}}
\section{Convenient Construction}{\code{gtkFileChooserWidget} is the result of collapsing the constructors of \code{GtkFileChooserWidget} (\code{\link{gtkFileChooserWidgetNew}}, \code{\link{gtkFileChooserWidgetNewWithBackend}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Interfaces}{GtkFileChooserWidget implements
 AtkImplementorIface,  \code{\link{GtkFileChooser}} and  GtkFileChooserEmbed.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkFileChooserWidget.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkFileChooser}}
\code{\link{GtkFileChooserDialog}}
}
\keyword{internal}
