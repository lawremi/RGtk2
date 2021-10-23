\alias{GtkPaned}
\name{GtkPaned}
\title{GtkPaned}
\description{Base class for widgets with two adjustable panes}
\section{Methods and Functions}{
\code{\link{gtkPanedAdd1}(object, child)}\cr
\code{\link{gtkPanedAdd2}(object, child)}\cr
\code{\link{gtkPanedPack1}(object, child, resize = FALSE, shrink = TRUE)}\cr
\code{\link{gtkPanedPack2}(object, child, resize = TRUE, shrink = TRUE)}\cr
\code{\link{gtkPanedGetChild1}(object)}\cr
\code{\link{gtkPanedGetChild2}(object)}\cr
\code{\link{gtkPanedSetPosition}(object, position)}\cr
\code{\link{gtkPanedGetPosition}(object)}\cr
\code{\link{gtkPanedGetHandleWindow}(object)}\cr

}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkPaned
                                 +----GtkHPaned
                                 +----GtkVPaned}}
\section{Interfaces}{GtkPaned implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkOrientable}}.}
\section{Detailed Description}{\code{\link{GtkPaned}} is the base class for widgets with two panes,
arranged either horizontally (\code{\link{GtkHPaned}}) or
vertically (\code{\link{GtkVPaned}}). Child widgets are
added to the panes of the widget with
\code{\link{gtkPanedPack1}} and \code{\link{gtkPanedPack2}}. The division
beween the two children is set by default from the
size requests of the children, but it can be adjusted
by the user.
  
A paned widget draws a separator between the two
child widgets and a small handle that the user
can drag to adjust the division. It does not
draw any relief around the children or around
the separator. (The space in which the separator
is called the gutter.) Often, it is useful
to put each child inside a \code{\link{GtkFrame}} with the
shadow type set to \code{GTK_SHADOW_IN} so that the
gutter appears as a ridge. No separator is drawn
if one of the children is missing.
  
Each child has two options that can be set,
\code{resize} and \code{shrink}. If \code{resize} is true, then when the
\code{\link{GtkPaned}} is resized, that child will expand
or shrink along with the paned widget. If \code{shrink}
is true, then when that child can be made smaller
than its requisition by the user. Setting \code{shrink}
to \code{FALSE} allows the application to set a minimum
size. If \code{resize} is false for both children, then
this is treated as if \code{resize} is true for both
children.
  
The application can set the position of the slider
as if it were set by the user, by calling
\code{\link{gtkPanedSetPosition}}.
  
 \emph{Creating a paned widget with minimum sizes.}
\preformatted{
hpaned <- gtkHPaned()
frame1 <- gtkFrame()
frame2 <- gtkFrame()
frame1$setShadowType("in")
frame2$setShadowType("in")

hpaned$setSizeRequest(200 + hpaned$styleGet("handle-size"), -1)

hpaned$pack1(frame1, TRUE, FALSE)
frame1$setSizeRequest(50, -1)

hpaned$pack2(frame2, FALSE, FALSE)
frame2$setSizeRequest(50, -1)

}}
\section{Structures}{\describe{\item{\verb{GtkPaned}}{
\emph{undocumented
}

}}}
\section{Signals}{\describe{
\item{\code{accept-position(widget, user.data)}}{
The ::accept-position signal is a
keybinding signal
which gets emitted to accept the current position of the handle when
moving it using key bindings.
  
The default binding for this signal is Return or Space.
  Since 2.0

\describe{
\item{\code{widget}}{the object that received the signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{cancel-position(widget, user.data)}}{
The ::cancel-position signal is a
keybinding signal
which gets emitted to cancel moving the position of the handle using key
bindings. The position of the handle will be reset to the value prior to
moving it.
  
The default binding for this signal is Escape.
  Since 2.0

\describe{
\item{\code{widget}}{the object that received the signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{cycle-child-focus(widget, reversed, user.data)}}{
The ::cycle-child-focus signal is a
keybinding signal
which gets emitted to cycle the focus between the children of the paned.
  
The default binding is f6.
  Since 2.0

\describe{
\item{\code{widget}}{the object that received the signal}
\item{\code{reversed}}{whether cycling backward or forward}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{cycle-handle-focus(widget, reversed, user.data)}}{
The ::cycle-handle-focus signal is a
keybinding signal
which gets emitted to cycle whether the paned should grab focus to allow
the user to change position of the handle by using key bindings.
  
The default binding for this signal is f8.
  Since 2.0

\describe{
\item{\code{widget}}{the object that received the signal}
\item{\code{reversed}}{whether cycling backward or forward}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{move-handle(widget, scroll.type, user.data)}}{
The ::move-handle signal is a
keybinding signal
which gets emitted to move the handle when the user is using key bindings
to move it.
  Since 2.0

\describe{
\item{\code{widget}}{the object that received the signal}
\item{\code{scroll.type}}{a \code{\link{GtkScrollType}}}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{toggle-handle-focus(widget, user.data)}}{
The ::toggle-handle-focus is a
keybinding signal
which gets emitted to accept the current position of the handle and then
move focus to the next widget in the focus chain.
  
The default binding is Tab.
  Since 2.0

\describe{
\item{\code{widget}}{the object that received the signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\verb{max-position} [integer : Read]}{

The largest possible value for the position property. This property is derived from the
size and shrinkability of the widget's children.
  Allowed values: >= 0  Default value: 2147483647  Since 2.4

}
\item{\verb{min-position} [integer : Read]}{

The smallest possible value for the position property. This property is derived from the
size and shrinkability of the widget's children.
  Allowed values: >= 0  Default value: 0  Since 2.4

}
\item{\verb{position} [integer : Read / Write]}{

Position of paned separator in pixels (0 means all the way to the left/top).  Allowed values: >= 0  Default value: 0

}
\item{\verb{position-set} [logical : Read / Write]}{

TRUE if the Position property should be used.  Default value: FALSE

}
}}
\section{Style Properties}{\describe{\item{\verb{handle-size} [integer : Read]}{

Width of handle.  Allowed values: >= 0  Default value: 5

}}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkPaned.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
