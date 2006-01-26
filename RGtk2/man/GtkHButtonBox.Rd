\alias{GtkHButtonBox}
\alias{gtkHButtonBox}
\name{GtkHButtonBox}
\title{GtkHButtonBox}
\description{A container for arranging buttons horizontally}
\section{Methods and Functions}{
\code{\link{gtkHButtonBoxNew}(show = TRUE)}\cr
\code{\link{gtkHButtonBoxGetSpacingDefault}()}\cr
\code{\link{gtkHButtonBoxGetLayoutDefault}()}\cr
\code{\link{gtkHButtonBoxSetSpacingDefault}(spacing)}\cr
\code{\link{gtkHButtonBoxSetLayoutDefault}(layout)}\cr
\code{gtkHButtonBox(show = TRUE)}
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----\link{GtkBox}
                           +----\link{GtkButtonBox}
                                 +----GtkHButtonBox}}
\section{Interfaces}{GtkHButtonBox implements
 AtkImplementorIface.}
\section{Detailed Description}{A button box should be used to provide a consistent layout of buttons
throughout your application. The layout/spacing can be altered by the
programmer, or if desired, by the user to alter the 'feel' of a
program to a small degree.
  
A \code{\link{GtkHButtonBox}} is created with \code{\link{gtkHButtonBoxNew}}. Buttons are
packed into a button box the same way widgets are added to any other
container, using \code{\link{gtkContainerAdd}}. You can also use
\code{\link{gtkBoxPackStart}} or \code{\link{gtkBoxPackEnd}}, but for button boxes both
these functions work just like \code{\link{gtkContainerAdd}}, ie., they pack the
button in a way that depends on the current layout style and on
whether the button has had \code{\link{gtkButtonBoxSetChildSecondary}} called
on it.
  
The spacing between buttons can be set with \code{\link{gtkBoxSetSpacing}}. The
arrangement and layout of the buttons can be changed with
\code{\link{gtkButtonBoxSetLayout}}.}
\section{Structures}{\describe{\item{\code{GtkHButtonBox}}{
GtkHButtonBox does not contain any public fields.

}}}
\section{Convenient Construction}{\code{gtkHButtonBox} is the equivalent of \code{\link{gtkHButtonBoxNew}}.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkHButtonBox.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
