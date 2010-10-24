\alias{GtkOldEditable}
\alias{GtkTextFunction}
\name{GtkOldEditable}
\title{GtkOldEditable}
\description{Base class for text-editing widgets}
\section{Methods and Functions}{
\code{\link{gtkOldEditableClaimSelection}(object, claim, time = "GDK_CURRENT_TIME")}\cr
\code{\link{gtkOldEditableChanged}(object)}\cr

}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkOldEditable
                           +----GtkText}}
\section{Interfaces}{GtkOldEditable implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkEditable}}.}
\section{Detailed Description}{GtkOldEditable has been deprecated since GTK+ 2.0 and should not be used
in newly written code. Use the \code{\link{GtkEditable}} interface instead.}
\section{Structures}{\describe{\item{\verb{GtkOldEditable}}{
\strong{WARNING: \code{GtkOldEditable} is deprecated and should not be used in newly-written code.}
\emph{undocumented
}

}}}
\section{User Functions}{\describe{\item{\code{GtkTextFunction(editable, time.)}}{
\emph{undocumented
}

\describe{
\item{\code{editable}}{\emph{undocumented
}}
\item{\code{time.}}{\emph{undocumented
}}
}


}}}
\section{Signals}{\describe{
\item{\code{activate(oldeditable, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{oldeditable}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{copy-clipboard(oldeditable, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{oldeditable}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{cut-clipboard(oldeditable, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{oldeditable}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{kill-char(oldeditable, arg1, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{oldeditable}}{the object which received the signal.}
\item{\code{arg1}}{\emph{undocumented
}}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{kill-line(oldeditable, arg1, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{oldeditable}}{the object which received the signal.}
\item{\code{arg1}}{\emph{undocumented
}}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{kill-word(oldeditable, arg1, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{oldeditable}}{the object which received the signal.}
\item{\code{arg1}}{\emph{undocumented
}}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{move-cursor(oldeditable, arg1, arg2, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{oldeditable}}{the object which received the signal.}
\item{\code{arg1}}{\emph{undocumented
}}
\item{\code{arg2}}{\emph{undocumented
}}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{move-page(oldeditable, arg1, arg2, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{oldeditable}}{the object which received the signal.}
\item{\code{arg1}}{\emph{undocumented
}}
\item{\code{arg2}}{\emph{undocumented
}}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{move-to-column(oldeditable, arg1, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{oldeditable}}{the object which received the signal.}
\item{\code{arg1}}{\emph{undocumented
}}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{move-to-row(oldeditable, arg1, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{oldeditable}}{the object which received the signal.}
\item{\code{arg1}}{\emph{undocumented
}}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{move-word(oldeditable, arg1, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{oldeditable}}{the object which received the signal.}
\item{\code{arg1}}{\emph{undocumented
}}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{paste-clipboard(oldeditable, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{oldeditable}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{set-editable(oldeditable, arg1, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{oldeditable}}{the object which received the signal.}
\item{\code{arg1}}{\emph{undocumented
}}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\verb{editable} [logical : Read / Write]}{

  Default value: FALSE

}
\item{\verb{text-position} [integer : Read / Write]}{

  Default value: 0

}
}}
\references{\url{http://library.gnome.org/devel//gtk/GtkOldEditable.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
