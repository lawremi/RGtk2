\alias{GtkItem}
\name{GtkItem}
\title{GtkItem}
\description{Abstract base class for GtkMenuItem, GtkListItem and GtkTreeItem}
\section{Methods and Functions}{
\code{\link{gtkItemSelect}(object)}\cr
\code{\link{gtkItemDeselect}(object)}\cr
\code{\link{gtkItemToggle}(object)}\cr

}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBin
                                 +----GtkItem
                                       +----GtkMenuItem
                                       +----GtkListItem
                                       +----GtkTreeItem}}
\section{Interfaces}{GtkItem implements
 AtkImplementorIface and  \verb{\link{GtkBuildable}}.}
\section{Detailed Description}{The \verb{\link{GtkItem}} widget is an abstract base class for \verb{\link{GtkMenuItem}}, \verb{\link{GtkListItem}}
and \verb{GtkTreeItem}.}
\section{Structures}{\describe{\item{\verb{GtkItem}}{
The \verb{\link{GtkItem}} struct contains private data only, and
should be accessed using the functions below.

}}}
\section{Signals}{\describe{
\item{\code{deselect(item, user.data)}}{
Emitted when the item is deselected.

\describe{
\item{\code{item}}{[\verb{\link{GtkItem}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{select(item, user.data)}}{
Emitted when the item is selected.

\describe{
\item{\code{item}}{[\verb{\link{GtkItem}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{toggle(item, user.data)}}{
Emitted when the item is toggled.

\describe{
\item{\code{item}}{[\verb{\link{GtkItem}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkItem.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
