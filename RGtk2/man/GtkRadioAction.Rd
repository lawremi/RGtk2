\alias{GtkRadioAction}
\alias{gtkRadioAction}
\name{GtkRadioAction}
\title{GtkRadioAction}
\description{An action of which only one in a group can be active}
\section{Methods and Functions}{
\code{\link{gtkRadioActionNew}(name = NULL, label = NULL, tooltip = NULL, stock.id = NULL, value = NULL)}\cr
\code{\link{gtkRadioActionGetGroup}(object)}\cr
\code{\link{gtkRadioActionSetGroup}(object, group)}\cr
\code{\link{gtkRadioActionGetCurrentValue}(object)}\cr
\code{\link{gtkRadioActionSetCurrentValue}(object, current.value)}\cr
\code{gtkRadioAction(name = NULL, label = NULL, tooltip = NULL, stock.id = NULL, value = NULL)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GtkAction
         +----GtkToggleAction
               +----GtkRadioAction}}
\section{Interfaces}{GtkRadioAction implements
 \code{\link{GtkBuildable}}.}
\section{Detailed Description}{A \code{\link{GtkRadioAction}} is similar to \code{\link{GtkRadioMenuItem}}. A number of radio
actions can be linked together so that only one may be active at any
one time.}
\section{Structures}{\describe{\item{\verb{GtkRadioAction}}{
The \code{GtkRadioAction} struct contains
only private members and should not be accessed directly.

}}}
\section{Convenient Construction}{\code{gtkRadioAction} is the equivalent of \code{\link{gtkRadioActionNew}}.}
\section{Signals}{\describe{\item{\code{changed(action, current, user.data)}}{
The ::changed signal is emitted on every member of a radio group when the
active member is changed. The signal gets emitted after the ::activate signals
for the previous and current active members.
  Since 2.4

\describe{
\item{\code{action}}{the action on which the signal is emitted}
\item{\code{current}}{the member of \code{action}s group which has just been activated}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}}}
\section{Properties}{\describe{
\item{\verb{current-value} [integer : Read / Write]}{

The value property of the currently active member of the group to which
this action belongs.
  Default value: 0  Since 2.10

}
\item{\verb{group} [\code{\link{GtkRadioAction}} : *       : Write]}{

Sets a new group for a radio action.
  Since 2.4

}
\item{\verb{value} [integer : Read / Write]}{

The value is an arbitrary integer which can be used as a
convenient way to determine which action in the group is
currently active in an ::activate or ::changed signal handler.
See \code{\link{gtkRadioActionGetCurrentValue}} and \code{\link{GtkRadioActionEntry}}
for convenient ways to get and set this property.
  Default value: 0  Since 2.4

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkRadioAction.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
