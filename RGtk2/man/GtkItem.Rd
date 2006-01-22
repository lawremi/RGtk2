\alias{GtkItem}
\name{GtkItem}
\title{GtkItem}
\description{Abstract base class for GtkMenuItem, GtkListItem and GtkTreeItem}
\section{Methods and Functions}{
\link{gtkItemSelect}(object)
\link{gtkItemDeselect}(object)
\link{gtkItemToggle}(object)
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----\link{GtkBin}
                           +----GtkItem
                                 +----\link{GtkMenuItem}
                                 +----\link{GtkListItem}
                                 +----GtkTreeItem}}
\section{Interfaces}{GtkItem implements
 AtkImplementorIface.}
\section{Detailed Description}{The \code{\link{GtkItem}} widget is an abstract base class for \code{\link{GtkMenuItem}}, \code{\link{GtkListItem}}
and \code{GtkTreeItem}.}
\section{Structures}{\describe{\item{\code{GtkItem}}{
The \code{\link{GtkItem}} struct contains private data only, and
should be accessed using the functions below.

}}}
\section{Signals}{\describe{
\item{\code{deselect(item, user.data)}}{
Emitted when the item is deselected.

\describe{
\item{\code{item}}{[\code{\link{GtkItem}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{select(item, user.data)}}{
Emitted when the item is selected.

\describe{
\item{\code{item}}{[\code{\link{GtkItem}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{toggle(item, user.data)}}{
Emitted when the item is toggled.

\describe{
\item{\code{item}}{[\code{\link{GtkItem}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkItem.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
