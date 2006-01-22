\alias{GtkAdjustment}
\alias{gtkAdjustment}
\name{GtkAdjustment}
\title{GtkAdjustment}
\description{A GtkObject representing an adjustable bounded value}
\usage{gtkAdjustment(value = NULL, lower = NULL, upper = NULL, step.incr = NULL, page.incr = NULL, page.size = NULL)}
\section{Methods and Functions}{
\link{gtkAdjustmentNew}(value = NULL, lower = NULL, upper = NULL, step.incr = NULL, page.incr = NULL, page.size = NULL)
\link{gtkAdjustmentGetValue}(object)
\link{gtkAdjustmentSetValue}(object, value)
\link{gtkAdjustmentClampPage}(object, lower, upper)
\link{gtkAdjustmentChanged}(object)
\link{gtkAdjustmentValueChanged}(object)
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----GtkAdjustment}}
\section{Detailed Description}{The \code{\link{GtkAdjustment}} object represents a value which has an associated lower
and upper bound, together with step and page increments, and a page size.
It is used within several GTK+ widgets, including
\code{\link{GtkSpinButton}}, \code{\link{GtkViewport}}, and \code{\link{GtkRange}} (which is a base class for
\code{\link{GtkHScrollbar}}, \code{\link{GtkVScrollbar}}, \code{\link{GtkHScale}}, and \code{\link{GtkVScale}}).
  
The \code{\link{GtkAdjustment}} object does not update the value itself. Instead
it is left up to the owner of the \code{\link{GtkAdjustment}} to control the value.
  
The owner of the \code{\link{GtkAdjustment}} typically calls the
\code{\link{gtkAdjustmentValueChanged}} and \code{\link{gtkAdjustmentChanged}} functions
after changing the value and its bounds. This results in the emission of the
"value_changed" or "changed" signal respectively.}
\section{Structures}{\describe{\item{\code{GtkAdjustment}}{
The \code{\link{GtkAdjustment}} struct contains the following fields.

\tabular{ll}{
\code{numeric}   lower; \tab the minimum value. \cr
\code{numeric}   upper; \tab the maximum value. \cr
\code{numeric}   value; \tab the current value. \cr
\code{numeric}   step_increment; \tab the increment to use to make minor changes to the value.
In a   \code{\link{GtkScrollbar}}   this increment is used when the mouse is clicked on the
arrows at the top and bottom of the scrollbar, to scroll by a small amount. \cr
\code{numeric}   page_increment; \tab the increment to use to make major changes to the value.
In a   \code{\link{GtkScrollbar}}   this increment is used when the mouse is clicked in the
trough, to scroll by a large amount. \cr
\code{numeric}   page_size; \tab the page size.
In a   \code{\link{GtkScrollbar}}   this is the size of the area which is currently visible. \cr
}

}}}
\section{Convenient Construction}{\code{gtkAdjustment} is the equivalent of \code{\link{gtkAdjustmentNew}}.}
\section{Signals}{\describe{
\item{\code{changed(adjustment, user.data)}}{
Emitted when one or more of the \code{\link{GtkAdjustment}} fields have been changed,
other than the value field.

\describe{
\item{\code{adjustment}}{[\code{\link{GtkAdjustment}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{value-changed(adjustment, user.data)}}{
Emitted when the \code{\link{GtkAdjustment}} value field has been changed.

\describe{
\item{\code{adjustment}}{[\code{\link{GtkAdjustment}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
}}
\section{Properties}{\describe{
\item{\code{lower} [numeric : Read / Write]}{

The minimum value of the adjustment.  

  Default value: 0  Since  2.4

}
\item{\code{page-increment} [numeric : Read / Write]}{

The page increment of the adjustment.  

  Default value: 0  Since  2.4

}
\item{\code{page-size} [numeric : Read / Write]}{

The page size of the adjustment. 
Note that the page-size is irrelevant and should be set to zero
if the adjustment is used for a simple scalar value, e.g. in a 
\code{\link{GtkSpinButton}}.  

  Default value: 0  Since  2.4

}
\item{\code{step-increment} [numeric : Read / Write]}{

The step increment of the adjustment.  

  Default value: 0  Since  2.4

}
\item{\code{upper} [numeric : Read / Write]}{

The maximum value of the adjustment. 
Note that values will be restricted by 
\code{upper - page-size} if the page-size 
property is nonzero.  

  Default value: 0  Since  2.4

}
\item{\code{value} [numeric : Read / Write]}{

The value of the adjustment.  

  Default value: 0  Since  2.4

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkAdjustment.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
