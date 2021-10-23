\alias{GtkTooltips}
\alias{GtkTooltipsData}
\alias{gtkTooltips}
\name{GtkTooltips}
\title{GtkTooltips}
\description{Add tips to your widgets}
\section{Methods and Functions}{
\code{\link{gtkTooltipsNew}()}\cr
\code{\link{gtkTooltipsEnable}(object)}\cr
\code{\link{gtkTooltipsDisable}(object)}\cr
\code{\link{gtkTooltipsSetDelay}(object, delay)}\cr
\code{\link{gtkTooltipsSetTip}(object, widget, tip.text = NULL, tip.private = NULL)}\cr
\code{\link{gtkTooltipsDataGet}(widget)}\cr
\code{\link{gtkTooltipsForceWindow}(object)}\cr
\code{\link{gtkTooltipsGetInfoFromTipWindow}(object)}\cr
\code{\link{gtkTooltipsGetInfoFromTipWindow}(object)}\cr
\code{gtkTooltips()}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkTooltips}}
\section{Detailed Description}{\code{\link{GtkTooltips}} has been deprecated in GTK+ 2.12, in favor of the new
\code{\link{GtkTooltip}} API.
  
Tooltips are the messages that appear next to a widget when the mouse pointer is held over it for a short amount of time. They are especially helpful for adding more verbose descriptions of things such as buttons in a toolbar.
  
An individual tooltip belongs to a group of tooltips. A group is created with a call to \code{\link{gtkTooltipsNew}}. Every tooltip in the group can then be turned off with a call to \code{\link{gtkTooltipsDisable}} and enabled with \code{\link{gtkTooltipsEnable}}.
  
The length of time the user must keep the mouse over a widget before the tip is shown, can be altered with \code{\link{gtkTooltipsSetDelay}}. This is set on a 'per group of tooltips' basis.
  
To assign a tip to a particular \code{\link{GtkWidget}}, \code{\link{gtkTooltipsSetTip}} is used.
  \strong{PLEASE NOTE:} Tooltips can only be set on widgets which have their own X window and
receive enter and leave events.
To check if a widget has its own window use \code{gtkWidgetNoWindow()}.
To add a tooltip to a widget that doesn't have its own window, place the
widget inside a \code{\link{GtkEventBox}} and add a tooltip to that instead.  
The default appearance of all tooltips in a program is determined by the current GTK+ theme that the user has selected.
  
Information about the tooltip (if any) associated with an arbitrary widget can be retrieved using \code{\link{gtkTooltipsDataGet}}.
  
 \emph{Adding tooltips to buttons.}
\preformatted{
## Let's add some tooltips to some buttons
button_bar_tips <- gtkTooltips()

## Create the buttons and pack them into a GtkHBox
hbox <- gtkHBox(TRUE, 2)
   
load_button <- gtkButton("Load a file")
hbox$packStart(load_button, TRUE, TRUE, 2)
   
save_button <- gtkButton("Save a file")
hbox$packStart(save_button, TRUE, TRUE, 2)
   
## Add the tips
button_bar_tips$setTip(load_button,
                       "Load a new document into this window",
                       paste("Requests the filename of a document.",
                             "This will then be loaded into the current",
                             "window, replacing the contents of whatever",
                             "is already loaded."))
button_bar_tips$setTip(save_button,
                       "Saves the current document to a file",
                       paste("If you have saved the document previously,",
                             "then the new version will be saved over the",
                             "old one. Otherwise, you will be prompted for",
                             "a filename.")) 
}}
\section{Structures}{\describe{
\item{\verb{GtkTooltips}}{
\strong{WARNING: \code{GtkTooltips} is deprecated and should not be used in newly-written code.}
Holds information about a group of tooltips. Fields should be changed using the functions provided, rather than directly accessing the struct's members.

}
\item{\verb{GtkTooltipsData}}{
\strong{WARNING: \code{GtkTooltipsData} has been deprecated since version 2.12 and should not be used in newly-written code. }
\code{tooltips} is the \code{\link{GtkTooltips}} group that this tooltip belongs to. \code{widget} is the \code{\link{GtkWidget}} that this tooltip data is associated with. \code{tip_text} is a string containing the tooltip message itself.  \code{tip_private} is a string that is not shown as the default tooltip. Instead, this message may be more informative and go towards forming a context-sensitive help system for your application. (FIXME: how to actually "switch on" private tips?)

}
}}
\section{Convenient Construction}{\code{gtkTooltips} is the equivalent of \code{\link{gtkTooltipsNew}}.}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkTooltips.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
