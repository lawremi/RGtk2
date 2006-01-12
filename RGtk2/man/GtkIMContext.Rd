\alias{GtkIMContext}
\name{GtkIMContext}
\title{GtkIMContext}
\description{Base class for input method contexts}
\usage{
\link{gtkIMContextSetClientWindow}(object, window)
\link{gtkIMContextGetPreeditString}(object)
\link{gtkIMContextFilterKeypress}(object, event)
\link{gtkIMContextFocusIn}(object)
\link{gtkIMContextFocusOut}(object)
\link{gtkIMContextReset}(object)
\link{gtkIMContextSetCursorLocation}(object, area)
\link{gtkIMContextSetUsePreedit}(object, use.preedit)
\link{gtkIMContextSetSurrounding}(object, text, cursor.index)
\link{gtkIMContextGetSurrounding}(object)
\link{gtkIMContextDeleteSurrounding}(object, offset, n.chars)
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GtkIMContext
         +----\link{GtkIMContextSimple}
         +----\link{GtkIMMulticontext}}}
\section{Structures}{\describe{\item{\code{GtkIMContext}}{\emph{undocumented
}}}}
\section{Signals}{\describe{
\item{\code{commit(imcontext, arg1, user.data)}}{


\describe{
\item{\code{imcontext}}{[\code{\link{GtkIMContext}}] the object which received the signal.}
\item{\code{arg1}}{[character] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{delete-surrounding(imcontext, arg1, arg2, user.data)}}{


\describe{
\item{\code{imcontext}}{[\code{\link{GtkIMContext}}] the object which received the signal.}
\item{\code{arg1}}{[integer] }
\item{\code{arg2}}{[integer] }
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{preedit-changed(imcontext, user.data)}}{


\describe{
\item{\code{imcontext}}{[\code{\link{GtkIMContext}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{preedit-end(imcontext, user.data)}}{


\describe{
\item{\code{imcontext}}{[\code{\link{GtkIMContext}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{preedit-start(imcontext, user.data)}}{


\describe{
\item{\code{imcontext}}{[\code{\link{GtkIMContext}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{retrieve-surrounding(imcontext, user.data)}}{


\describe{
\item{\code{imcontext}}{[\code{\link{GtkIMContext}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkIMContext.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
