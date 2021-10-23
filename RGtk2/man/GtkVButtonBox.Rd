\alias{GtkVButtonBox}
\alias{gtkVButtonBox}
\name{GtkVButtonBox}
\title{GtkVButtonBox}
\description{A container for arranging buttons vertically}
\section{Methods and Functions}{
\code{\link{gtkVButtonBoxNew}(show = TRUE)}\cr
\code{\link{gtkVButtonBoxGetSpacingDefault}()}\cr
\code{\link{gtkVButtonBoxSetSpacingDefault}(spacing)}\cr
\code{\link{gtkVButtonBoxGetLayoutDefault}()}\cr
\code{\link{gtkVButtonBoxSetLayoutDefault}(layout)}\cr
\code{gtkVButtonBox(show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBox
                                 +----GtkButtonBox
                                       +----GtkVButtonBox}}
\section{Interfaces}{GtkVButtonBox implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkOrientable}}.}
\section{Detailed Description}{A button box should be used to provide a consistent layout of buttons
throughout your application. The layout/spacing can be altered by the
programmer, or if desired, by the user to alter the 'feel' of a
program to a small degree.
  
A \code{\link{GtkVButtonBox}} is created with \code{\link{gtkVButtonBoxNew}}. Buttons are
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
\section{Structures}{\describe{\item{\verb{GtkVButtonBox}}{
GtkVButtonBox does not contain any public fields.

}}}
\section{Convenient Construction}{\code{gtkVButtonBox} is the equivalent of \code{\link{gtkVButtonBoxNew}}.}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkVButtonBox.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
