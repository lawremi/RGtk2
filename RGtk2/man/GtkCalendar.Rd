\alias{GtkCalendar}
\alias{gtkCalendar}
\alias{GtkCalendarDetailFunc}
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
\code{\link{gtkCalendarGetDate}(object)}\cr
\code{\link{gtkCalendarSetDetailFunc}(object, func, data)}\cr
\code{\link{gtkCalendarGetDetailWidthChars}(object)}\cr
\code{\link{gtkCalendarSetDetailWidthChars}(object, chars)}\cr
\code{\link{gtkCalendarGetDetailHeightRows}(object)}\cr
\code{\link{gtkCalendarSetDetailHeightRows}(object, rows)}\cr
\code{\link{gtkCalendarDisplayOptions}(object, flags)}\cr
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
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{\code{\link{GtkCalendar}} is a widget that displays a calendar, one month at a time.
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
These options can be used to influence the display and behaviour of a \code{\link{GtkCalendar}}.

\describe{
\item{\verb{show-heading}}{Specifies that the month and year should be displayed.}
\item{\verb{show-day-names}}{Specifies that three letter day descriptions should be present.}
\item{\verb{no-month-change}}{Prevents the user from switching months with the calendar.}
\item{\verb{show-week-numbers}}{Displays each week numbers of the current year, down the
left side of the calendar.}
\item{\verb{week-start-monday}}{Since GTK+ 2.4, this option is deprecated and ignored by GTK+.
The information on which day the calendar week starts is derived from the locale.}
}

}}}
\section{User Functions}{\describe{\item{\code{GtkCalendarDetailFunc(calendar, year, month, day, user.data)}}{
This kind of functions provide Pango markup with detail information for the
specified day. Examples for such details are holidays or appointments. The
function returns \code{NULL} when no information is available.
  Since 2.14

\describe{
\item{\code{calendar}}{a \code{\link{GtkCalendar}}.}
\item{\code{year}}{the year for which details are needed.}
\item{\code{month}}{the month for which details are needed.}
\item{\code{day}}{the day of \code{month} for which details are needed.}
\item{\code{user.data}}{the data passed with \code{\link{gtkCalendarSetDetailFunc}}.}
}

\emph{Returns:} [character] Newly allocated string with Pango markup with details
for the specified day, or \code{NULL}.

}}}
\section{Signals}{\describe{
\item{\code{day-selected(calendar, user.data)}}{
Emitted when the user selects a day.

\describe{
\item{\code{calendar}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{day-selected-double-click(calendar, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{calendar}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{month-changed(calendar, user.data)}}{
Emitted when the user clicks a button to change the selected month on a
calendar.

\describe{
\item{\code{calendar}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{next-month(calendar, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{calendar}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{next-year(calendar, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{calendar}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{prev-month(calendar, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{calendar}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{prev-year(calendar, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{calendar}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\verb{day} [integer : Read / Write]}{

The selected day (as a number between 1 and 31, or 0
to unselect the currently selected day).
This property gets initially set to the current day.
  Allowed values: [0,31]  Default value: 0

}
\item{\verb{detail-height-rows} [integer : Read / Write]}{

Height of a detail cell, in rows.
A value of 0 allows any width. See \code{\link{gtkCalendarSetDetailFunc}}.
  Allowed values: [0,127]  Default value: 0  Since 2.14

}
\item{\verb{detail-width-chars} [integer : Read / Write]}{

Width of a detail cell, in characters.
A value of 0 allows any width. See \code{\link{gtkCalendarSetDetailFunc}}.
  Allowed values: [0,127]  Default value: 0  Since 2.14

}
\item{\verb{month} [integer : Read / Write]}{

The selected month (as a number between 0 and 11).
This property gets initially set to the current month.
  Allowed values: [0,11]  Default value: 0

}
\item{\verb{no-month-change} [logical : Read / Write]}{

Determines whether the selected month can be changed.
  Default value: FALSE  Since 2.4

}
\item{\verb{show-day-names} [logical : Read / Write]}{

Determines whether day names are displayed.
  Default value: TRUE  Since 2.4

}
\item{\verb{show-details} [logical : Read / Write]}{

Determines whether details are shown directly in the widget, or if they are
available only as tooltip. When this property is set days with details are
marked.
  Default value: TRUE  Since 2.14

}
\item{\verb{show-heading} [logical : Read / Write]}{

Determines whether a heading is displayed.
  Default value: TRUE  Since 2.4

}
\item{\verb{show-week-numbers} [logical : Read / Write]}{

Determines whether week numbers are displayed.
  Default value: FALSE  Since 2.4

}
\item{\verb{year} [integer : Read / Write]}{

The selected year.
This property gets initially set to the current year.
  Allowed values: [0,4194303]  Default value: 0

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkCalendar.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
