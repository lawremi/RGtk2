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
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{The \code{\link{GtkItem}} widget is an abstract base class for \code{\link{GtkMenuItem}}, \code{\link{GtkListItem}}
and \verb{GtkTreeItem}.}
\section{Structures}{\describe{\item{\verb{GtkItem}}{
The \code{\link{GtkItem}} struct contains private data only, and
should be accessed using the functions below.

}}}
\section{Signals}{\describe{
\item{\code{deselect(item, user.data)}}{
Emitted when the item is deselected.

\describe{
\item{\code{item}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{select(item, user.data)}}{
Emitted when the item is selected.

\describe{
\item{\code{item}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{toggle(item, user.data)}}{
Emitted when the item is toggled.

\describe{
\item{\code{item}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkItem.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
