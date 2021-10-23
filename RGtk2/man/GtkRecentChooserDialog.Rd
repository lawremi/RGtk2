\alias{GtkRecentChooserDialog}
\alias{gtkRecentChooserDialog}
\name{GtkRecentChooserDialog}
\title{GtkRecentChooserDialog}
\description{Displays recently used files in a dialog}
\section{Methods and Functions}{
\code{\link{gtkRecentChooserDialogNew}(title = NULL, parent = NULL, ..., show = TRUE)}\cr
\code{\link{gtkRecentChooserDialogNewForManager}(title = NULL, parent = NULL, manager, ..., show = TRUE)}\cr
\code{gtkRecentChooserDialog(title = NULL, parent = NULL, ..., show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBin
                                 +----GtkWindow
                                       +----GtkDialog
                                             +----GtkRecentChooserDialog}}
\section{Interfaces}{GtkRecentChooserDialog implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkRecentChooser}}.}
\section{Detailed Description}{\code{\link{GtkRecentChooserDialog}} is a dialog box suitable for displaying the recently
used documents.  This widgets works by putting a \code{\link{GtkRecentChooserWidget}} inside
a \code{\link{GtkDialog}}.  It exposes the \verb{GtkRecentChooserIface} interface, so you can use
all the \code{\link{GtkRecentChooser}} functions on the recent chooser dialog as well as
those for \code{\link{GtkDialog}}.
  
Note that \code{\link{GtkRecentChooserDialog}} does not have any methods of its own.
Instead, you should use the functions that work on a \code{\link{GtkRecentChooser}}.
  
 \emph{Typical usage}
\preformatted{
dialog <- gtkRecentChooserDialog("Recent Documents", parent_window,
                                 "gtk-cancel", GtkResponseType["cancel"],
                                 "gtk-open", GtkResponseType["accept"])
					
if (dialog$run() == GtkResponseType["accept"])
{
  info <- dialog$getCurrentItem()
  open_file(info$getUri())
}
}  
Recently used files are supported since GTK+ 2.10.}
\section{Structures}{\describe{\item{\verb{GtkRecentChooserDialog}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkRecentChooserDialog} is the equivalent of \code{\link{gtkRecentChooserDialogNew}}.}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkRecentChooserDialog.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkRecentChooser}}
\code{\link{GtkDialog}}
}
\keyword{internal}
