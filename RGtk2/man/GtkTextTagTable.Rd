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
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GtkTextTagTable}}
\section{Detailed Description}{You may wish to begin by reading the text widget
conceptual overview which gives an overview of all the objects and data
types related to the text widget and how they work together.
  }
\section{Structures}{\describe{\item{\code{GtkTextTagTable}}{
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkTextTagTable} is the equivalent of \code{\link{gtkTextTagTableNew}}.}
\section{User Functions}{\describe{\item{\code{GtkTextTagTableForeach(tag, data)}}{
\emph{undocumented
}

\describe{
\item{\code{tag}}{[\code{\link{GtkTextTag}}] }
\item{\code{data}}{[R object] }
}


}}}
\section{Signals}{\describe{
\item{\code{tag-added(texttagtable, arg1, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{texttagtable}}{[\code{\link{GtkTextTagTable}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkTextTag}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{tag-changed(texttagtable, arg1, arg2, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{texttagtable}}{[\code{\link{GtkTextTagTable}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkTextTag}}] }
\item{\code{arg2}}{[logical] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{tag-removed(texttagtable, arg1, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{texttagtable}}{[\code{\link{GtkTextTagTable}}] the object which received the signal.}
\item{\code{arg1}}{[\code{\link{GtkTextTag}}] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkTextTagTable.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
