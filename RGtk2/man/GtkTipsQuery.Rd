\alias{GtkTipsQuery}
\alias{gtkTipsQuery}
\name{GtkTipsQuery}
\title{GtkTipsQuery}
\description{Displays help about widgets in the user interface}
\section{Methods and Functions}{
\code{\link{gtkTipsQueryNew}(show = TRUE)}\cr
\code{\link{gtkTipsQueryStartQuery}(object)}\cr
\code{\link{gtkTipsQueryStopQuery}(object)}\cr
\code{\link{gtkTipsQuerySetCaller}(object, caller)}\cr
\code{\link{gtkTipsQuerySetLabels}(object, label.inactive, label.no.tip)}\cr
\code{gtkTipsQuery(show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkMisc
                           +----GtkLabel
                                 +----GtkTipsQuery}}
\section{Interfaces}{GtkTipsQuery implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{The \code{\link{GtkTipsQuery}} widget is a subclass of \code{\link{GtkLabel}} which is used to display
help about widgets in a user interface.
  
A query is started with a call to \code{\link{gtkTipsQueryStartQuery}}, usually
when some kind of 'Help' button is pressed. The \code{\link{GtkTipsQuery}} then grabs all
events, stopping the user interface from functioning normally.
Then as the user moves the mouse over the widgets, the \code{\link{GtkTipsQuery}} displays
each widget's tooltip text.
  
By connecting to the "widget-entered" or "widget-selected" signals, it is
possible to customize the \code{\link{GtkTipsQuery}} to perform other actions when widgets
are entered or selected. For example, a help browser could be opened with
documentation on the widget selected.
  
At some point a call to \code{\link{gtkTipsQueryStopQuery}} must be made in order to
stop the query and return the interface to its normal state.
The \code{\link{gtkTipsQuerySetCaller}} function can be used to specify a widget
which the user can select to stop the query (often the same button used to
start the query).}
\section{Structures}{\describe{\item{\verb{GtkTipsQuery}}{
\strong{WARNING: \code{GtkTipsQuery} is deprecated and should not be used in newly-written code.}
The \code{\link{GtkTipsQuery}} struct contains private data only, and
should be accessed using the functions below.

}}}
\section{Convenient Construction}{\code{gtkTipsQuery} is the equivalent of \code{\link{gtkTipsQueryNew}}.}
\section{Signals}{\describe{
\item{\code{start-query(tipsquery, user.data)}}{
Emitted when the query is started.

\describe{
\item{\code{tipsquery}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{stop-query(tipsquery, user.data)}}{
Emitted when the query is stopped.

\describe{
\item{\code{tipsquery}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{widget-entered(tipsquery, widget, tip.text, tip.private, user.data)}}{
Emitted when a widget is entered by the pointer while the query is in effect.

\describe{
\item{\code{tipsquery}}{the object which received the signal.}
\item{\code{widget}}{the widget that was entered by the pointer.}
\item{\code{tip.text}}{the widget's tooltip.}
\item{\code{tip.private}}{the widget's private tooltip (see \code{\link{gtkTooltipsSetTip}}).}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{widget-selected(tipsquery, widget, tip.text, tip.private, event, user.data)}}{
Emitted when a widget is selected during a query.

\describe{
\item{\code{tipsquery}}{the object which received the signal.}
\item{\code{widget}}{the widget that was selected.}
\item{\code{tip.text}}{the widget's tooltip.}
\item{\code{tip.private}}{the widget's private tooltip (see \code{\link{gtkTooltipsSetTip}}).}
\item{\code{event}}{the button press or button release event.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}

\emph{Returns:} [logical] \code{TRUE} if the query should be stopped.

}
}}
\section{Properties}{\describe{
\item{\verb{caller} [\code{\link{GtkWidget}} : *            : Read / Write]}{

The widget that starts the tips query, usually a button.
If it is selected while the query is in effect the query is automatically
stopped.

}
\item{\verb{emit-always} [logical : Read / Write]}{

\code{TRUE} if the widget-entered and widget-selected signals are emitted even when
the widget has no tooltip set.
  Default value: FALSE

}
\item{\verb{label-inactive} [character : *                : Read / Write]}{

The text to display in the \code{\link{GtkTipsQuery}} widget when the query is not in
effect.
  Default value: NULL

}
\item{\verb{label-no-tip} [character : *                : Read / Write]}{

The text to display in the \code{\link{GtkTipsQuery}} widget when the query is running
and the widget that the pointer is over has no tooltip.
  Default value: NULL

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkTipsQuery.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
