\alias{GtkTooltip}
\name{GtkTooltip}
\title{GtkTooltip}
\description{Add tips to your widgets}
\section{Methods and Functions}{
\code{\link{gtkTooltipsetMarkup}(object, markup)}\cr
\code{\link{gtkTooltipsetText}(object, text)}\cr
\code{\link{gtkTooltipsetIcon}(object, pixbuf)}\cr
\code{\link{gtkTooltipsetIconFromStock}(object, stock.id, size)}\cr
\code{\link{gtkTooltipsetCustom}(object, custom.widget)}\cr
\code{\link{gtkTooltipTriggerTooltipQuery}(display)}\cr
\code{\link{gtkTooltipsetTipArea}(object, area)}\cr

}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GtkTooltip}}
\section{Detailed Description}{\code{\link{GtkTooltip}} belongs to the new tooltips API that was
introduced in GTK+ 2.12 and which deprecates the old
\code{\link{GtkTooltips}} API. 
  
Basic tooltips can be realized simply by using \code{\link{gtkWidgetSetTooltipText}}
or \code{\link{gtkWidgetSetTooltipMarkup}} without any explicit tooltip object. 
  
When you need a tooltip with a little more fancy contents, like
adding an image, or you want the tooltip to have different contents
per GtkTreeView row or cell, you will have to do a little more work:
\itemize{
\item Set the \code{:has-tooltip} property to \code{TRUE}, this will
make GTK+ monitor the widget for motion and related events
which are needed to determine when and where to show a tooltip.
\item Connect to the \code{::query-tooltip} signal.  This signal
will be emitted when a tooltip is supposed to be shown. One
of the arguments passed to the signal handler is a \code{\link{GtkTooltip}}
object. This is the object that we are about to display as a 
tooltip, and can be manipulated in your callback using functions
like \code{\link{gtkTooltipsetIcon}}. There are functions for setting
the tooltip's markup, setting an image from a stock icon, or
even putting in a custom widget.
\item Return \code{TRUE} from your query-tooltip handler. This causes
the tooltip to be show. If you return \code{FALSE}, it will not be shown. 
}
  
In the probably rare case where you want to have even more control
over the tooltip that is about to be shown, you can set your own
\code{\link{GtkWindow}} which will be used as tooltip window.  This works as
follows:
\itemize{
\item Set \code{:has-tooltip} and connect to \code{::query-tooltip} as 
before.
\item Use \code{\link{gtkWidgetSetTooltipWindow}} to set a \code{\link{GtkWindow}} created
by you as tooltip window.
\item In the ::query-tooltip callback you can access your window
using \code{\link{gtkWidgetGetTooltipWindow}} and manipulate as you
wish. The semantics of the return value are exactly as before,
return \code{TRUE} to show the window, \code{FALSE} to not show it.
}}
\section{Structures}{\describe{\item{\code{GtkTooltip}}{
\emph{undocumented
}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkTooltip.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
