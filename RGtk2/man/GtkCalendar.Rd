\alias{GtkCalendar}
\alias{gtkCalendar}
\alias{GtkCalendarDisplayOptions}
\name{GtkCalendar}
\title{GtkCalendar}
\description{Displays a calendar and allows the user to select a date}
\section{Methods and Functions}{
\code{\link{gtkCalendarNew}(show = TRUE)}\cr
\code{\link{gtkCalendarSelectMonth}(object, month, year)}\cr
\code{\link{gtkCalendarSelectDay}(object, day)}\cr
\code{\link{gtkCalendarMarkDay}(object, day)}\cr
\code{\link{gtkCalendarUnmarkDay}(object, day)}\cr
\code{\link{gtkCalendarClearMarks}(object)}\cr
\code{\link{gtkCalendarGetDisplayOptions}(object)}\cr
\code{\link{gtkCalendarSetDisplayOptions}(object, flags)}\cr
\code{\link{gtkCalendarDisplayOptions}(object, flags)}\cr
\code{\link{gtkCalendarGetDate}(object)}\cr
\code{\link{gtkCalendarFreeze}(object)}\cr
\code{\link{gtkCalendarThaw}(object)}\cr
\code{gtkCalendar(show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkCalendar}}
\section{Interfaces}{GtkCalendar implements
 AtkImplementorIface and  \verb{\link{GtkBuildable}}.}
\section{Detailed Description}{\verb{\link{GtkCalendar}} is a widget that displays a calendar, one month at a time. 
It can be created with \code{\link{gtkCalendarNew}}.
  
The month and year currently displayed can be altered with 
\code{\link{gtkCalendarSelectMonth}}. The exact day can be selected from the displayed 
month using \code{\link{gtkCalendarSelectDay}}.
  
To place a visual marker on a particular day, use \code{\link{gtkCalendarMarkDay}} 
and to remove the marker, \code{\link{gtkCalendarUnmarkDay}}.
Alternative, all marks can be cleared with \code{\link{gtkCalendarClearMarks}}.
  
The way in which the calendar itself is displayed can be altered using
\code{\link{gtkCalendarSetDisplayOptions}}.
  
The selected date can be retrieved from a \verb{\link{GtkCalendar}} using
\code{\link{gtkCalendarGetDate}}.}
\section{Structures}{\describe{\item{\verb{GtkCalendar}}{
\code{num_marked_dates} is an integer containing the
number of days that have a mark over them.
  \code{marked_date} is a list containing the day numbers
that currently have a mark over them.
  \code{month}, \code{year}, and 
\code{selected_day} contain the currently visible month,
year, and selected day respectively.
  
All of these fields should be considered read only, and everything in this
struct should only be modified using the functions provided below.

}}}
\section{Convenient Construction}{\code{gtkCalendar} is the equivalent of \code{\link{gtkCalendarNew}}.}
\section{Enums and Flags}{\describe{\item{\verb{GtkCalendarDisplayOptions}}{
These options can be used to influence the display and behaviour of a \verb{\link{GtkCalendar}}.

\describe{
\item{\verb{show-heading}}{Specifies that the month and year should be displayed.}
\item{\verb{show-day-names}}{Specifies that three letter day descriptions should be present.}
\item{\verb{no-month-change}}{Prevents the user from switching months with the calendar.}
\item{\verb{show-week-numbers}}{Displays each week numbers of the current year, down the left side 
 of the calendar.}
\item{\verb{week-start-monday}}{Since GTK+ 2.4, this option is deprecated and ignored by GTK+. 
 The information on which day the calendar week starts is derived from the locale.}
}

}}}
\section{Signals}{\describe{
\item{\code{day-selected(calendar, user.data)}}{
Emitted when the user selects a day.

\describe{
\item{\code{calendar}}{[\verb{\link{GtkCalendar}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{day-selected-double-click(calendar, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{calendar}}{[\verb{\link{GtkCalendar}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{month-changed(calendar, user.data)}}{
Emitted when the user clicks a button to change the selected month on a
calendar.

\describe{
\item{\code{calendar}}{[\verb{\link{GtkCalendar}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{next-month(calendar, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{calendar}}{[\verb{\link{GtkCalendar}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{next-year(calendar, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{calendar}}{[\verb{\link{GtkCalendar}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{prev-month(calendar, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{calendar}}{[\verb{\link{GtkCalendar}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
\item{\code{prev-year(calendar, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{calendar}}{[\verb{\link{GtkCalendar}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\verb{day} [integer : Read / Write]}{

The selected day (as a number between 1 and 31, or 0 to unselect the currently selected day).  Allowed values: [0,31]  Default value: 0

}
\item{\verb{month} [integer : Read / Write]}{

The selected month (as a number between 0 and 11).  Allowed values: [0,11]  Default value: 0

}
\item{\verb{no-month-change} [logical : Read / Write]}{

Determines whether the selected month can be changed.  

  Default value: FALSE  Since  2.4

}
\item{\verb{show-day-names} [logical : Read / Write]}{

Determines whether day names are displayed.  

  Default value: TRUE  Since  2.4

}
\item{\verb{show-heading} [logical : Read / Write]}{

Determines whether a heading is displayed.  

  Default value: TRUE  Since  2.4

}
\item{\verb{show-week-numbers} [logical : Read / Write]}{

Determines whether week numbers are displayed.  

  Default value: FALSE  Since  2.4

}
\item{\verb{year} [integer : Read / Write]}{

The selected year.  Allowed values: >= 0  Default value: 0

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkCalendar.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
