\alias{GtkTextTagTable}
\alias{gtkTextTagTable}
\alias{GtkTextTagTableForeach}
\name{GtkTextTagTable}
\title{GtkTextTagTable}
\description{Collection of tags that can be used together}
\section{Methods and Functions}{
\code{\link{gtkTextTagTableNew}()}\cr
\code{\link{gtkTextTagTableAdd}(object, tag)}\cr
\code{\link{gtkTextTagTableRemove}(object, tag)}\cr
\code{\link{gtkTextTagTableLookup}(object, name)}\cr
\code{\link{gtkTextTagTableForeach}(object, func, data = NULL)}\cr
\code{\link{gtkTextTagTableGetSize}(object)}\cr
\code{gtkTextTagTable()}
}
\section{Hierarchy}{\preformatted{GObject
   +----GtkTextTagTable}}
\section{Detailed Description}{You may wish to begin by reading the text widget
conceptual overview which gives an overview of all the objects and data
types related to the text widget and how they work together.
  }
\section{Structures}{\describe{\item{\verb{GtkTextTagTable}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkTextTagTable} is the equivalent of \code{\link{gtkTextTagTableNew}}.}
\section{User Functions}{\describe{\item{\code{GtkTextTagTableForeach()}}{
\emph{undocumented
}




}}}
\section{Signals}{\describe{
\item{\code{tag-added(texttagtable, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{texttagtable}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{tag-changed(texttagtable, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{texttagtable}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{tag-removed(texttagtable, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{texttagtable}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkTextTagTable.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
