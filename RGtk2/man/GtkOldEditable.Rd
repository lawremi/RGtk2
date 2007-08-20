\alias{GtkOldEditable}
\alias{GtkTextFunction}
\name{GtkOldEditable}
\title{GtkOldEditable}
\description{Base class for text-editing widgets}
\section{Methods and Functions}{
\code{\link{gtkOldEditableClaimSelection}(object, claim, time = "GDK_CURRENT_TIME")}\cr
\code{\link{gtkOldEditableChanged}(object)}\cr

}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkWidget}
                     +----GtkOldEditable
                           +----GtkText}}
\section{Interfaces}{GtkOldEditable implements
 \code{\link{GtkBuildable}},  AtkImplementorIface and  \code{\link{GtkEditable}}.}
\section{Detailed Description}{GtkOldEditable has been deprecated since GTK+ 2.0 and should not be used
in newly written code. Use the \code{\link{GtkEditable}} interface instead.}
\section{Structures}{\describe{\item{\code{GtkOldEditable}}{
\strong{WARNING: \code{GtkOldEditable} is deprecated and should not be used in newly-written code.}
\emph{undocumented
}

}}}
\section{User Functions}{\describe{\item{\code{GtkTextFunction(editable, time.)}}{
\emph{undocumented
}

\describe{
\item{\code{editable}}{[\code{\link{GtkOldEditable}}] }
\item{\code{time.}}{[numeric] }
}


}}}
\section{Signals}{\describe{
\item{\code{The (oldeditable, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{oldeditable}}{[\code{\link{GtkOldEditable}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{The (oldeditable, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{oldeditable}}{[\code{\link{GtkOldEditable}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{The (oldeditable, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{oldeditable}}{[\code{\link{GtkOldEditable}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{The (oldeditable, arg1, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{oldeditable}}{[\code{\link{GtkOldEditable}}] the object which received the signal.}
\item{\code{arg1}}{[integer] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{The (oldeditable, arg1, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{oldeditable}}{[\code{\link{GtkOldEditable}}] the object which received the signal.}
\item{\code{arg1}}{[integer] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{The (oldeditable, arg1, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{oldeditable}}{[\code{\link{GtkOldEditable}}] the object which received the signal.}
\item{\code{arg1}}{[integer] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{The (oldeditable, arg1, arg2, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{oldeditable}}{[\code{\link{GtkOldEditable}}] the object which received the signal.}
\item{\code{arg1}}{[integer] }
\item{\code{arg2}}{[integer] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{The (oldeditable, arg1, arg2, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{oldeditable}}{[\code{\link{GtkOldEditable}}] the object which received the signal.}
\item{\code{arg1}}{[integer] }
\item{\code{arg2}}{[integer] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{The (oldeditable, arg1, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{oldeditable}}{[\code{\link{GtkOldEditable}}] the object which received the signal.}
\item{\code{arg1}}{[integer] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{The (oldeditable, arg1, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{oldeditable}}{[\code{\link{GtkOldEditable}}] the object which received the signal.}
\item{\code{arg1}}{[integer] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{The (oldeditable, arg1, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{oldeditable}}{[\code{\link{GtkOldEditable}}] the object which received the signal.}
\item{\code{arg1}}{[integer] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{The (oldeditable, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{oldeditable}}{[\code{\link{GtkOldEditable}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{The (oldeditable, arg1, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{oldeditable}}{[\code{\link{GtkOldEditable}}] the object which received the signal.}
\item{\code{arg1}}{[logical] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\code{editable} [logical : Read / Write]}{

  Default value: FALSE

}
\item{\code{text-position} [integer : Read / Write]}{

  Default value: 0

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkOldEditable.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
