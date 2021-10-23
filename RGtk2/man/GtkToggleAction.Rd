\alias{GtkToggleAction}
\alias{gtkToggleAction}
\name{GtkToggleAction}
\title{GtkToggleAction}
\description{An action which can be toggled between two states}
\section{Methods and Functions}{
\code{\link{gtkToggleActionNew}(name = NULL, label = NULL, tooltip = NULL, stock.id = NULL)}\cr
\code{\link{gtkToggleActionToggled}(object)}\cr
\code{\link{gtkToggleActionSetActive}(object, is.active)}\cr
\code{\link{gtkToggleActionGetActive}(object)}\cr
\code{\link{gtkToggleActionSetDrawAsRadio}(object, draw.as.radio)}\cr
\code{\link{gtkToggleActionGetDrawAsRadio}(object)}\cr
\code{gtkToggleAction(name = NULL, label = NULL, tooltip = NULL, stock.id = NULL)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GtkAction
         +----GtkToggleAction
               +----GtkRadioAction}}
\section{Interfaces}{GtkToggleAction implements
 \code{\link{GtkBuildable}}.}
\section{Detailed Description}{A \code{\link{GtkToggleAction}} corresponds roughly to a \code{\link{GtkCheckMenuItem}}. It has an
"active" state specifying whether the action has been checked or not.}
\section{Structures}{\describe{\item{\verb{GtkToggleAction}}{
The \code{GtkToggleAction} struct contains only
private members and should not be accessed directly.

}}}
\section{Convenient Construction}{\code{gtkToggleAction} is the equivalent of \code{\link{gtkToggleActionNew}}.}
\section{Signals}{\describe{\item{\code{toggled(toggleaction, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{toggleaction}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}}}
\section{Properties}{\describe{
\item{\verb{active} [logical : Read / Write]}{

If the toggle action should be active in or not.
  Default value: FALSE  Since 2.10

}
\item{\verb{draw-as-radio} [logical : Read / Write]}{

Whether the proxies for this action look like radio action proxies.
  
This is an appearance property and thus only applies if
\verb{"use-action-appearance"} is \code{TRUE}.
  Default value: FALSE

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkToggleAction.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
