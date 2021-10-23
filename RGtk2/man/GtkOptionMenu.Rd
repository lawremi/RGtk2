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
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBin
                                 +----GtkButton
                                       +----GtkOptionMenu}}
\section{Interfaces}{GtkOptionMenu implements
 AtkImplementorIface,  \code{\link{GtkBuildable}} and  \code{\link{GtkActivatable}}.}
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
\section{Structures}{\describe{\item{\verb{GtkOptionMenu}}{
\strong{WARNING: \code{GtkOptionMenu} has been deprecated since version 2.4 and should not be used in newly-written code. Use \code{\link{GtkComboBox}} instead.}
The \code{\link{GtkOptionMenu}} struct contains private data only, and
should be accessed using the functions below.

}}}
\section{Convenient Construction}{\code{gtkOptionMenu} is the equivalent of \code{\link{gtkOptionMenuNew}}.}
\section{Signals}{\describe{\item{\code{changed(optionmenu, user.data)}}{
\emph{undocumented
}

\describe{
\item{\code{optionmenu}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}}}
\section{Properties}{\describe{\item{\verb{menu} [\code{\link{GtkMenu}} : *              : Read / Write]}{

The menu of options.

}}}
\section{Style Properties}{\describe{
\item{\verb{indicator-size} [\code{\link{GtkRequisition}} : *       : Read]}{

Size of dropdown indicator.

}
\item{\verb{indicator-spacing} [\code{\link{GtkBorder}} : *            : Read]}{

Spacing around indicator.

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkOptionMenu.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
