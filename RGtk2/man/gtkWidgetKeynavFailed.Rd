\alias{gtkWidgetKeynavFailed}
\name{gtkWidgetKeynavFailed}
\title{gtkWidgetKeynavFailed}
\description{This function should be called whenever keyboard navigation within
a single widget hits a boundary. The function emits the
\code{::keynav-changed} signal on the widget and its return 
value should be interpreted in a way similar to the return value of
\code{\link{gtkWidgetChildFocus}}:}
\usage{gtkWidgetKeynavFailed(object, direction)}
\arguments{
\item{\code{object}}{[\code{\link{GtkWidget}}]  a \code{\link{GtkWidget}}}
\item{\code{direction}}{[\code{\link{GtkDirectionType}}]  direction of focus movement}
}
\details{When \code{TRUE} is returned, stay in the widget, the failed keyboard
navigation is Ok and/or there is nowhere we can/should move the
focus to.
  
When \code{FALSE} is returned, the caller should continue with keyboard
navigation outside the widget, e.g. by calling
\code{\link{gtkWidgetChildFocus}} on the widget's toplevel.
  
The default ::keynav-failed handler returns \code{TRUE} for 
\code{GTK_DIR_TAB_FORWARD} and \code{GTK_DIR_TAB_BACKWARD}. For the other 
values of \code{\link{GtkDirectionType}}, it looks at the 
\code{:gtk-keynav-cursor-only}" setting and returns \code{FALSE} 
if the setting is \code{TRUE}. This way the entire user interface
becomes cursor-navigatable on input devices such as mobile phones
which only have cursor keys but no tab key.
  
Whenever the default handler returns \code{TRUE}, it also calls
\code{\link{gtkWidgetErrorBell}} to notify the user of the failed keyboard
navigation.
  
A use case for providing an own implementation of ::keynav-failed 
(either by connecting to it or by overriding it) would be a row of
\code{\link{GtkEntry}} widgets where the user should be able to navigate the
entire row with the cursor keys, as e.g. known from user interfaces 
that require entering license keys.  

  Since  2.12}
\value{[logical]  \code{TRUE} if stopping keyboard navigation is fine, \code{FALSE}
              if the emitting widget should try to handle the keyboard
              navigation attempt in its parent container(s).}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
