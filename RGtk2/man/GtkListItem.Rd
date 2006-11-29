\alias{GtkListItem}
\alias{gtkListItem}
\name{GtkListItem}
\title{GtkListItem}
\description{An item in a GtkList}
\section{Methods and Functions}{
\code{\link{gtkListItemNew}(show = TRUE)}\cr
\code{\link{gtkListItemNewWithLabel}(label, show = TRUE)}\cr
\code{\link{gtkListItemSelect}(object)}\cr
\code{\link{gtkListItemDeselect}(object)}\cr
\code{gtkListItem(label, show = TRUE)}
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkWidget}
                     +----\link{GtkContainer}
                           +----\link{GtkBin}
                                 +----\link{GtkItem}
                                       +----GtkListItem}}
\section{Interfaces}{GtkListItem implements
 AtkImplementorIface.}
\section{Detailed Description}{The \code{\link{GtkListItem}} widget is used for each item in a \code{\link{GtkList}}.
  \code{\link{GtkListItem}}  \code{GtkListItem}  \code{\link{GtkList}}  \code{GtkList}  
GtkList has has been deprecated since GTK+ 2.0 and should not be used
in newly written code. Use \code{\link{GtkTreeView}} instead.
  \code{\link{GtkTreeView}}  \code{GtkTreeView}}
\section{Structures}{\describe{\item{\code{GtkListItem}}{
\strong{WARNING: \code{GtkListItem} is deprecated and should not be used in newly-written code.}
The \code{\link{GtkListItem}} struct contains private data only, and should
only be accessed using the functions below.

}}}
\section{Convenient Construction}{\code{gtkListItem} is the result of collapsing the constructors of \code{GtkListItem} (\code{\link{gtkListItemNew}}, \code{\link{gtkListItemNewWithLabel}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Signals}{\describe{
\item{\code{end-selection(listitem, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{listitem}}{[\code{\link{GtkListItem}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{extend-selection(listitem, scroll.type, position, auto.start.selection, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{listitem}}{[\code{\link{GtkListItem}}] the object which received the signal.}
\item{\code{scroll.type}}{[\code{\link{GtkScrollType}}] }
\item{\code{position}}{[numeric] }
\item{\code{auto.start.selection}}{[logical] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{scroll-horizontal(listitem, scroll.type, position, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{listitem}}{[\code{\link{GtkListItem}}] the object which received the signal.}
\item{\code{scroll.type}}{[\code{\link{GtkScrollType}}] }
\item{\code{position}}{[numeric] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{scroll-vertical(listitem, scroll.type, position, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{listitem}}{[\code{\link{GtkListItem}}] the object which received the signal.}
\item{\code{scroll.type}}{[\code{\link{GtkScrollType}}] }
\item{\code{position}}{[numeric] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{select-all(listitem, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{listitem}}{[\code{\link{GtkListItem}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{start-selection(listitem, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{listitem}}{[\code{\link{GtkListItem}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{toggle-add-mode(listitem, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{listitem}}{[\code{\link{GtkListItem}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{toggle-focus-row(listitem, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{listitem}}{[\code{\link{GtkListItem}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{undo-selection(listitem, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{listitem}}{[\code{\link{GtkListItem}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{unselect-all(listitem, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{listitem}}{[\code{\link{GtkListItem}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkListItem.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
