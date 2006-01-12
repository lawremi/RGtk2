\alias{GtkFixed}
\alias{GtkFixedChild}
\alias{gtkFixed}
\name{GtkFixed}
\title{GtkFixed}
\description{A container which allows you to position widgets at fixed coordinates}
\usage{
\link{gtkFixedNew}(show = TRUE)
\link{gtkFixedPut}(object, widget, x, y)
\link{gtkFixedMove}(object, widget, x, y)
\link{gtkFixedGetHasWindow}(object)
\link{gtkFixedSetHasWindow}(object, has.window)
gtkFixed(show = TRUE)
}
\details{The \code{\link{GtkFixed}} widget is a container which can place child widgets at fixed
positions and with fixed sizes, given in pixels. \code{\link{GtkFixed}} performs no
automatic layout management.
  
For most applications, you should not use this container! It keeps
you from having to learn about the other GTK+ containers, but it
results in broken applications.
With \code{\link{GtkFixed}}, the following things will result in truncated text, 
overlapping widgets, and other display bugs:
\itemize{
\item Themes, which may change widget sizes.
\item Fonts other than the one you used to write the app will of
course change the size of widgets containing text; keep in mind that
users may use a larger font because of difficulty reading the default,
or they may be using Windows or the framebuffer port of GTK+, where
different fonts are available.
\item Translation of text into other languages changes its size. Also,
display of non-English text will use a different font in many cases.
}
  
In addition, the fixed widget can't properly be mirrored in
right-to-left languages such as Hebrew and Arabic. i.e. normally GTK+
will flip the interface to put labels to the right of the thing they
label, but it can't do that with \code{\link{GtkFixed}}. So your application will 
not be usable in right-to-left languages.
  
Finally, fixed positioning makes it kind of annoying to add/remove GUI
elements, since you have to reposition all the other elements. This is
a long-term maintenance problem for your application.
  
If you know none of these things are an issue for your application,
and prefer the simplicity of \code{\link{GtkFixed}}, by all means use the
widget. But you should be aware of the tradeoffs.}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----GtkFixed}}
\section{Structures}{\describe{
\item{\code{GtkFixed}}{
The \code{\link{GtkFixed}} struct contains the following fields.
(These fields should be considered read-only. They should never be set by
an application.)

\tabular{ll}{\code{list}   *children; \tab a list of   \code{\link{GtkFixedChild}}   elements, containing the child widgets and
their positions. \cr}

}
\item{\code{GtkFixedChild}}{
The \code{\link{GtkFixedChild}} struct contains the following fields.
(These fields should be considered read-only. They should never be set by
an application.)

\tabular{ll}{
\code{\link{GtkWidget}}   *widget; \tab the child   \code{\link{GtkWidget}}  . \cr
\code{integer}   x; \tab the horizontal position of the widget within the   \code{\link{GtkFixed}}  
container. \cr
\code{integer}   y; \tab the vertical position of the widget within the   \code{\link{GtkFixed}}  
container. \cr
}

}
}}
\section{Convenient Construction}{\code{gtkFixed} is the equivalent of \code{\link{gtkFixedNew}}.}
\section{Interfaces}{GtkFixed implements
 AtkImplementorIface.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkFixed.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
