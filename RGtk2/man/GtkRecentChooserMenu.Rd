\alias{GtkRecentChooserMenu}
\alias{gtkRecentChooserMenu}
\name{GtkRecentChooserMenu}
\title{GtkRecentChooserMenu}
\description{Displays recently used files in a menu}
\section{Methods and Functions}{
\code{\link{gtkRecentChooserMenuNew}()}\cr
\code{\link{gtkRecentChooserMenuNewForManager}(manager = NULL, show = TRUE)}\cr
\code{\link{gtkRecentChooserMenuGetShowNumbers}(object)}\cr
\code{\link{gtkRecentChooserMenuSetShowNumbers}(object, show.numbers)}\cr
\code{gtkRecentChooserMenu(manager = NULL, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkMenuShell
                                 +----GtkMenu
                                       +----GtkRecentChooserMenu}}
\section{Interfaces}{GtkRecentChooserMenu implements
 AtkImplementorIface,  \verb{\link{GtkBuildable}} and  \verb{\link{GtkRecentChooser}}.}
\section{Detailed Description}{\verb{\link{GtkRecentChooserMenu}} is a widget suitable for displaying recently used files
inside a menu.  It can be used to set a sub-menu of a \verb{\link{GtkMenuItem}} using
\code{\link{gtkMenuItemSetSubmenu}}, or as the menu of a \verb{\link{GtkMenuToolButton}}.
  
Note that \verb{\link{GtkRecentChooserMenu}} does not have any methods of its own.  Instead,
you should use the functions that work on a \verb{\link{GtkRecentChooser}}.
  
Note also that \verb{\link{GtkRecentChooserMenu}} does not support multiple filters, as it
has no way to let the user choose between them as the \verb{\link{GtkRecentChooserWidget}}
and \verb{\link{GtkRecentChooserDialog}} widgets do. Thus using \code{\link{gtkRecentChooserAddFilter}}
on a \verb{\link{GtkRecentChooserMenu}} widget will yield the same effects as using
\code{\link{gtkRecentChooserSetFilter}}, replacing any currently set filter
with the supplied filter; \code{\link{gtkRecentChooserRemoveFilter}} will remove
any currently set \verb{\link{GtkRecentFilter}} object and will unset the current filter;
\code{\link{gtkRecentChooserListFilters}} will return a list containing a single
\verb{\link{GtkRecentFilter}} object.
  
Recently used files are supported since GTK+ 2.10.}
\section{Structures}{\describe{\item{\verb{GtkRecentChooserMenu}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkRecentChooserMenu} is the equivalent of \code{\link{gtkRecentChooserMenuNewForManager}}.}
\section{Properties}{\describe{\item{\verb{show-numbers} [logical : Read / Write]}{

Whether the first ten items in the menu should be prepended by
a number acting as a unique mnemonic.  

  Default value: FALSE  Since  2.10

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkRecentChooserMenu.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{\verb{\link{GtkRecentChooser}}}
\keyword{internal}
