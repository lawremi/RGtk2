\alias{GtkRecentAction}
\alias{gtkRecentAction}
\name{GtkRecentAction}
\title{GtkRecentAction}
\description{An action of which represents a list of recently used files}
\section{Methods and Functions}{
\code{\link{gtkRecentActionNew}(name, label, tooltip, stock.id)}\cr
\code{\link{gtkRecentActionNewForManager}(name, label, tooltip, stock.id, manager)}\cr
\code{\link{gtkRecentActionGetShowNumbers}(object)}\cr
\code{\link{gtkRecentActionSetShowNumbers}(object, show.numbers)}\cr
\code{gtkRecentAction(name, label, tooltip, stock.id)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GtkAction
         +----GtkRecentAction}}
\section{Interfaces}{GtkRecentAction implements
 \code{\link{GtkBuildable}} and  \code{\link{GtkRecentChooser}}.}
\section{Detailed Description}{A GtkRecentAction represents a list of recently used files, which
can be shown by widgets such as \code{\link{GtkRecentChooserDialog}} or
\code{\link{GtkRecentChooserMenu}}.
  
To construct a submenu showing recently used files, use a GtkRecentAction
as the action for a <menuitem>. To construct a menu toolbutton showing
the recently used files in the popup menu, use a GtkRecentAction as the
action for a <toolitem> element.}
\section{Structures}{\describe{\item{\verb{GtkRecentAction}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkRecentAction} is the equivalent of \code{\link{gtkRecentActionNew}}.}
\section{Properties}{\describe{\item{\verb{show-numbers} [logical : Read / Write]}{

Whether the items should be displayed with a number.  Default value: FALSE

}}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkRecentAction.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
