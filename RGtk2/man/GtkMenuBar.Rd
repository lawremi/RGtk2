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
 AtkImplementorIface and  \verb{\link{GtkBuildable}}.}
\section{Detailed Description}{The \verb{\link{GtkMenuBar}} is a subclass of \verb{\link{GtkMenuShell}} which contains one to many \verb{\link{GtkMenuItem}}. The result is a standard menu bar which can hold many menu items. \verb{\link{GtkMenuBar}} allows for a shadow type to be set for aesthetic purposes. The shadow types are defined in the \verb{gtk_menu_bar_set_shadow_type} function.}
\section{Structures}{\describe{\item{\verb{GtkMenuBar}}{
The \verb{\link{GtkMenuBar}} struct contains the following fields. (These fields should be considered read-only.  They should never be set by an application.)

}}}
\section{Convenient Construction}{\code{gtkMenuBar} is the equivalent of \code{\link{gtkMenuBarNew}}.}
\section{Enums and Flags}{\describe{\item{\verb{GtkPackDirection}}{
\emph{undocumented
}

\describe{
\item{\verb{ltr}}{\emph{undocumented
}}
\item{\verb{rtl}}{\emph{undocumented
}}
\item{\verb{ttb}}{\emph{undocumented
}}
\item{\verb{btt}}{\emph{undocumented
}}
}

}}}
\section{Properties}{\describe{
\item{\verb{child-pack-direction} [\code{\link{GtkPackDirection}} : Read / Write]}{

The pack direction of the menubar. It determines how
the widgets contained in child menuitems are arranged.  

  Default value: GTK_PACK_DIRECTION_LTR  Since  2.8

}
\item{\verb{pack-direction} [\code{\link{GtkPackDirection}} : Read / Write]}{

The pack direction of the menubar. It determines how
menuitems are arranged in the menubar.  

  Default value: GTK_PACK_DIRECTION_LTR  Since  2.8

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
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkMenuBar.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\verb{\link{GtkMenuShell}}
\verb{\link{GtkMenu}}
\verb{\link{GtkMenuItem}}
}
\keyword{internal}
