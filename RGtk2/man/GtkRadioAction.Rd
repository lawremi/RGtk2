\alias{GtkRadioAction}
\alias{gtkRadioAction}
\name{GtkRadioAction}
\title{GtkRadioAction}
\description{An action of which only one in a group can be active}
\usage{gtkRadioAction(name = NULL, label = NULL, tooltip = NULL, stock.id = NULL, value = NULL)}
\section{Methods and Functions}{
\link{gtkRadioActionNew}(name = NULL, label = NULL, tooltip = NULL, stock.id = NULL, value = NULL)
\link{gtkRadioActionGetGroup}(object)
\link{gtkRadioActionSetGroup}(object, group)
\link{gtkRadioActionGetCurrentValue}(object)
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkAction}
         +----\link{GtkToggleAction}
               +----GtkRadioAction}}
\section{Detailed Description}{A \code{\link{GtkRadioAction}} is similar to \code{\link{GtkRadioMenuItem}}. A number of radio
actions can be linked together so that only one may be active at any 
one time.}
\section{Structures}{\describe{\item{\code{GtkRadioAction}}{
The \code{GtkRadioAction} struct contains 
only private members and should not be accessed directly.

}}}
\section{Convenient Construction}{\code{gtkRadioAction} is the equivalent of \code{\link{gtkRadioActionNew}}.}
\section{Signals}{\describe{\item{\code{changed(action, current, user.data)}}{
The ::changed signal is emitted on every member of a radio group when the
active member is changed. The signal gets emitted after the ::activate signals
for the previous and current active members.  

  Since  2.4

\describe{
\item{\code{action}}{[\code{\link{GtkRadioAction}}]  the action on which the signal is emitted}
\item{\code{current}}{[\code{\link{GtkRadioAction}}]  the member of \code{action}s group which has just been activated}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}}}
\section{Properties}{\describe{
\item{\code{group} [\code{\link{GtkRadioAction}} : Write]}{

Sets a new group for a radio action.  

  Since  2.4

}
\item{\code{value} [integer : Read / Write]}{

The value is an arbitrary integer which can be used as a
convenient way to determine which action in the group is 
currently active in an ::activate or ::changed signal handler.
See \code{\link{gtkRadioActionGetCurrentValue}} and \code{\link{GtkRadioActionEntry}}
for convenient ways to get and set this property.  

  Default value: 0  Since  2.4

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkRadioAction.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
