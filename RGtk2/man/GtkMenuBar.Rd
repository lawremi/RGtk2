\alias{GtkMenuBar}
\alias{gtkMenuBar}
\alias{GtkPackDirection}
\name{GtkMenuBar}
\title{GtkMenuBar}
\description{A subclass widget for GtkMenuShell which holds GtkMenuItem widgets}
\section{Methods and Functions}{
\code{\link{gtkMenuBarNew}(show = TRUE)}\cr
\code{\link{gtkMenuBarSetPackDirection}(object, pack.dir)}\cr
\code{\link{gtkMenuBarGetPackDirection}(object)}\cr
\code{\link{gtkMenuBarSetChildPackDirection}(object, child.pack.dir)}\cr
\code{\link{gtkMenuBarGetChildPackDirection}(object)}\cr
\code{gtkMenuBar(show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkMenuShell
                                 +----GtkMenuBar}}
\section{Interfaces}{GtkMenuBar implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{The \code{\link{GtkMenuBar}} is a subclass of \code{\link{GtkMenuShell}} which contains one to many \code{\link{GtkMenuItem}}. The result is a standard menu bar which can hold many menu items. \code{\link{GtkMenuBar}} allows for a shadow type to be set for aesthetic purposes. The shadow types are defined in the \verb{gtk_menu_bar_set_shadow_type} function.}
\section{Structures}{\describe{\item{\verb{GtkMenuBar}}{
The \code{\link{GtkMenuBar}} struct contains the following fields. (These fields should be considered read-only.  They should never be set by an application.)

}}}
\section{Convenient Construction}{\code{gtkMenuBar} is the equivalent of \code{\link{gtkMenuBarNew}}.}
\section{Enums and Flags}{\describe{\item{\verb{GtkPackDirection}}{
Determines how widgets should be packed insided menubars and
menuitems contained in menubars.

\describe{
\item{\verb{ltr}}{Widgets are packed left-to-right.}
\item{\verb{rtl}}{Widgets are packed right-to-left.}
\item{\verb{ttb}}{Widgets are packed top-to-bottom.}
\item{\verb{btt}}{Widgets are packed bottom-to-top.}
}

}}}
\section{Properties}{\describe{
\item{\verb{child-pack-direction} [\code{\link{GtkPackDirection}} : Read / Write]}{

The child pack direction of the menubar. It determines how
the widgets contained in child menuitems are arranged.
  Default value: GTK_PACK_DIRECTION_LTR  Since 2.8

}
\item{\verb{pack-direction} [\code{\link{GtkPackDirection}} : Read / Write]}{

The pack direction of the menubar. It determines how
menuitems are arranged in the menubar.
  Default value: GTK_PACK_DIRECTION_LTR  Since 2.8

}
}}
\section{Style Properties}{\describe{
\item{\verb{internal-padding} [integer : Read]}{

Amount of border space between the menubar shadow and the menu items.  Allowed values: >= 0  Default value: 1

}
\item{\verb{shadow-type} [\code{\link{GtkShadowType}} : Read]}{

Style of bevel around the menubar.  Default value: GTK_SHADOW_OUT

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkMenuBar.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkMenuShell}}
\code{\link{GtkMenu}}
\code{\link{GtkMenuItem}}
}
\keyword{internal}
