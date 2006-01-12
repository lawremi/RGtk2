\alias{GtkCalendar}
\alias{gtkCalendar}
\alias{GtkCalendarDisplayOptions}
\name{GtkCalendar}
\title{GtkCalendar}
\description{Displays a calendar and allows the user to select a date}
\usage{
\link{gtkCalendarNew}(show = TRUE)
\link{gtkCalendarSelectMonth}(object, month, year)
\link{gtkCalendarSelectDay}(object, day)
\link{gtkCalendarMarkDay}(object, day)
\link{gtkCalendarUnmarkDay}(object, day)
\link{gtkCalendarClearMarks}(object)
\link{gtkCalendarGetDisplayOptions}(object)
\link{gtkCalendarSetDisplayOptions}(object, flags)
\link{gtkCalendarDisplayOptions}(object, flags)
\link{gtkCalendarGetDate}(object)
\link{gtkCalendarFreeze}(object)
\link{gtkCalendarThaw}(object)
gtkCalendar(show = TRUE)
}
\details{\code{\link{GtkCalendar}} is a widget that displays a calendar, one month at a time. 
It can be created with \code{\link{gtkCalendarNew}}.
  
The month and year currently displayed can be altered with 
\code{\link{gtkCalendarSelectMonth}}. The exact day can be selected from the displayed 
month using \code{\link{gtkCalendarSelectDay}}.
  
To place a visual marker on a particular day, use \code{\link{gtkCalendarMarkDay}} 
and to remove the marker, \code{\link{gtkCalendarUnmarkDay}}.
Alternative, all marks can be cleared with \code{\link{gtkCalendarClearMarks}}.
  
The way in which the calendar itself is displayed can be altered using
\code{\link{gtkCalendarSetDisplayOptions}}.
  
The selected date can be retrieved from a \code{\link{GtkCalendar}} using
\code{\link{gtkCalendarGetDate}}.}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----GtkCalendar}}
\section{Structures}{\describe{\item{\code{GtkCalendar}}{
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
\section{Enums and Flags}{\describe{\item{\code{enum GtkCalendarDisplayOptions}}{
These options can be used to influence the display and behaviour of a \code{\link{GtkCalendar}}.

\describe{
\item{\code{GTK_CALENDAR_SHOW_HEADING (show-heading)}}{Specifies that the month and year should be displayed.}
\item{\code{GTK_CALENDAR_SHOW_DAY_NAMES (show-day-names)}}{Specifies that three letter day descriptions should be present.}
\item{\code{GTK_CALENDAR_NO_MONTH_CHANGE (no-month-change)}}{Prevents the user from switching months with the calendar.}
\item{\code{GTK_CALENDAR_SHOW_WEEK_NUMBERS (show-week-numbers)}}{Displays each week numbers of the current year, down the left side 
 of the calendar.}
\item{\code{GTK_CALENDAR_WEEK_START_MONDAY (week-start-monday)}}{Since GTK+ 2.4, this option is deprecated and ignored by GTK+. 
 The information on which day the calendar week starts is derived from the locale.}
}

}}}
\section{Interfaces}{GtkCalendar implements
 AtkImplementorIface.}
\section{Signals}{\describe{
\item{\code{day-selected(calendar, user.data)}}{
Emitted when the user selects a day.

\describe{
\item{\code{calendar}}{[\code{\link{GtkCalendar}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{day-selected-double-click(calendar, user.data)}}{


\describe{
\item{\code{calendar}}{[\code{\link{GtkCalendar}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{month-changed(calendar, user.data)}}{
Emitted when the user clicks a button to change the selected month on a
calendar.

\describe{
\item{\code{calendar}}{[\code{\link{GtkCalendar}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{next-month(calendar, user.data)}}{


\describe{
\item{\code{calendar}}{[\code{\link{GtkCalendar}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{next-year(calendar, user.data)}}{


\describe{
\item{\code{calendar}}{[\code{\link{GtkCalendar}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{prev-month(calendar, user.data)}}{


\describe{
\item{\code{calendar}}{[\code{\link{GtkCalendar}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{prev-year(calendar, user.data)}}{


\describe{
\item{\code{calendar}}{[\code{\link{GtkCalendar}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
}}
\section{Properties}{\describe{
\item{\code{day} [integer : Read / Write]}{

The selected day (as a number between 1 and 31, or 0 to unselect the currently selected day).  Allowed values: [0,31]  Default value: 0

}
\item{\code{month} [integer : Read / Write]}{

The selected month (as a number between 0 and 11).  Allowed values: [0,11]  Default value: 0

}
\item{\code{no-month-change} [logical : Read / Write]}{

Determines whether the selected month can be changed.  

  Default value: FALSE  Since  2.4

}
\item{\code{show-day-names} [logical : Read / Write]}{

Determines whether day names are displayed.  

  Default value: TRUE  Since  2.4

}
\item{\code{show-heading} [logical : Read / Write]}{

Determines whether a heading is displayed.  

  Default value: TRUE  Since  2.4

}
\item{\code{show-week-numbers} [logical : Read / Write]}{

Determines whether week numbers are displayed.  

  Default value: FALSE  Since  2.4

}
\item{\code{year} [integer : Read / Write]}{

The selected year.  Allowed values: >= 0  Default value: 0

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkCalendar.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
