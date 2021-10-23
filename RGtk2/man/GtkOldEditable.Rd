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
\section{User Functions}{\describe{\item{\code{GtkTextFunction()}}{
\emph{undocumented
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
\item{\code{kill-char(oldeditable, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{oldeditable}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{kill-line(oldeditable, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{oldeditable}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{kill-word(oldeditable, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{oldeditable}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{move-cursor(oldeditable, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{oldeditable}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{move-page(oldeditable, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{oldeditable}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{move-to-column(oldeditable, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{oldeditable}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{move-to-row(oldeditable, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{oldeditable}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{move-word(oldeditable, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{oldeditable}}{the object which received the signal.}
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
\item{\code{set-editable(oldeditable, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{oldeditable}}{the object which received the signal.}
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
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkOldEditable.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
