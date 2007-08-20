\alias{GtkOptionMenu}
\alias{gtkOptionMenu}
\name{GtkOptionMenu}
\title{GtkOptionMenu}
\description{A widget used to choose from a list of valid choices}
\section{Methods and Functions}{
\code{\link{gtkOptionMenuNew}(show = TRUE)}\cr
\code{\link{gtkOptionMenuGetMenu}(object)}\cr
\code{\link{gtkOptionMenuSetMenu}(object, menu)}\cr
\code{\link{gtkOptionMenuRemoveMenu}(object)}\cr
\code{\link{gtkOptionMenuSetHistory}(object, index)}\cr
\code{\link{gtkOptionMenuGetHistory}(object)}\cr
\code{gtkOptionMenu(show = TRUE)}
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkWidget}
                     +----\link{GtkContainer}
                           +----\link{GtkBin}
                                 +----\link{GtkButton}
                                       +----GtkOptionMenu}}
\section{Interfaces}{GtkOptionMenu implements
 \code{\link{GtkBuildable}} and  AtkImplementorIface.}
\section{Detailed Description}{A \code{\link{GtkOptionMenu}} is a widget that allows the user to choose from a
list of valid choices.  The \code{\link{GtkOptionMenu}} displays the selected 
choice.  When activated the \code{\link{GtkOptionMenu}} displays a popup \code{\link{GtkMenu}} 
which allows the user to make a new choice.
  
Using a \code{\link{GtkOptionMenu}} is simple; build a \code{\link{GtkMenu}}, by calling
\code{\link{gtkMenuNew}}, then appending menu items to it with 
\code{\link{gtkMenuShellAppend}}. Set that menu on the option menu 
with \code{\link{gtkOptionMenuSetMenu}}. Set the selected menu item with
\code{\link{gtkOptionMenuSetHistory}}; connect to the "changed" signal on
the option menu; in the "changed" signal, check the new selected 
menu item with \code{\link{gtkOptionMenuGetHistory}}.
  
As of GTK+ 2.4, \code{\link{GtkOptionMenu}} has been deprecated in favor of \code{\link{GtkComboBox}}.}
\section{Structures}{\describe{\item{\code{GtkOptionMenu}}{
\strong{WARNING: \code{GtkOptionMenu} has been deprecated since version 2.4 and should not be used in newly-written code. Use \code{\link{GtkComboBox}} instead.}
The \code{\link{GtkOptionMenu}} struct contains private data only, and 
should be accessed using the functions below.

}}}
\section{Convenient Construction}{\code{gtkOptionMenu} is the equivalent of \code{\link{gtkOptionMenuNew}}.}
\section{Signals}{\describe{\item{\code{The (optionmenu, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{optionmenu}}{[\code{\link{GtkOptionMenu}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}}}
\section{Properties}{\describe{\item{\code{menu} [\code{\link{GtkMenu}} : Read / Write]}{

The menu of options.

}}}
\section{Style Properties}{\describe{
\item{\code{indicator-size} [\code{\link{GtkRequisition}} : Read]}{

Size of dropdown indicator.

}
\item{\code{indicator-spacing} [\code{\link{GtkBorder}} : Read]}{

Spacing around indicator.

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkOptionMenu.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
