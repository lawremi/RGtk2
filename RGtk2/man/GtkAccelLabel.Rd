\alias{GtkAccelLabel}
\alias{gtkAccelLabel}
\name{GtkAccelLabel}
\title{GtkAccelLabel}
\description{A label which displays an accelerator key on the right of the text}
\section{Methods and Functions}{
\code{\link{gtkAccelLabelNew}(string = NULL, show = TRUE)}\cr
\code{\link{gtkAccelLabelSetAccelClosure}(object, accel.closure)}\cr
\code{\link{gtkAccelLabelGetAccelWidget}(object)}\cr
\code{\link{gtkAccelLabelSetAccelWidget}(object, accel.widget)}\cr
\code{\link{gtkAccelLabelGetAccelWidth}(object)}\cr
\code{\link{gtkAccelLabelRefetch}(object)}\cr
\code{gtkAccelLabel(string = NULL, show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkMisc
                           +----GtkLabel
                                 +----GtkAccelLabel}}
\section{Interfaces}{GtkAccelLabel implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{The \code{\link{GtkAccelLabel}} widget is a subclass of \code{\link{GtkLabel}} that also displays an
accelerator key on the right of the label text, e.g. 'Ctl+S'.
It is commonly used in menus to show the keyboard short-cuts for commands.
  
The accelerator key to display is not set explicitly.
Instead, the \code{\link{GtkAccelLabel}} displays the accelerators which have been added to
a particular widget. This widget is set by calling
\code{\link{gtkAccelLabelSetAccelWidget}}.
  
For example, a \code{\link{GtkMenuItem}} widget may have an accelerator added to emit the
"activate" signal when the 'Ctl+S' key combination is pressed.
A \code{\link{GtkAccelLabel}} is created and added to the \code{\link{GtkMenuItem}}, and
\code{\link{gtkAccelLabelSetAccelWidget}} is called with the \code{\link{GtkMenuItem}} as the
second argument. The \code{\link{GtkAccelLabel}} will now display 'Ctl+S' after its label.
  
Note that creating a \code{\link{GtkMenuItem}} with \code{\link{gtkMenuItemNewWithLabel}} (or
one of the similar functions for \code{\link{GtkCheckMenuItem}} and \code{\link{GtkRadioMenuItem}})
automatically adds a \code{\link{GtkAccelLabel}} to the \code{\link{GtkMenuItem}} and calls
\code{\link{gtkAccelLabelSetAccelWidget}} to set it up for you.
  
A \code{\link{GtkAccelLabel}} will only display accelerators which have \code{GTK_ACCEL_VISIBLE}
set (see \code{\link{GtkAccelFlags}}).
A \code{\link{GtkAccelLabel}} can display multiple accelerators and even signal names,
though it is almost always used to display just one accelerator key.

 \emph{Creating a simple menu item with an accelerator key.}
\preformatted{
## Creating a simple menu item with an accelerator key.

## Create a GtkAccelGroup and add it to the window.
accel_group = gtkAccelGroup()
window$addAccelGroup(accel_group)

## Create the menu item
save_item = gtkMenuItem("Save")
menu$add(save_item)

## Now add the accelerator to the GtkMenuItem. 
## It will be activated if the user types ctrl-s
## We just need to make sure we use the "visible" flag here to show it.
save_item$addAccelerator("activate", accel_group, GDK_S, 
                         "control-mask", "visible")
}}
\section{Structures}{\describe{\item{\verb{GtkAccelLabel}}{
The \code{\link{GtkAccelLabel}} struct contains private data only, and
should be accessed using the functions below.

}}}
\section{Convenient Construction}{\code{gtkAccelLabel} is the equivalent of \code{\link{gtkAccelLabelNew}}.}
\section{Properties}{\describe{
\item{\verb{accel-closure} [\code{\link{GClosure}} : *             : Read / Write]}{

The closure to be monitored for accelerator changes.

}
\item{\verb{accel-widget} [\code{\link{GtkWidget}} : *            : Read / Write]}{

The widget to be monitored for accelerator changes.

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkAccelLabel.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
