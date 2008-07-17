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
\section{Hierarchy}{\preformatted{\link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkWidget}
                     +----\link{GtkContainer}
                           +----\link{GtkMenuShell}
                                 +----GtkMenuBar}}
\section{Interfaces}{GtkMenuBar implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{The \code{\link{GtkMenuBar}} is a subclass of \code{\link{GtkMenuShell}} which contains one to many \code{\link{GtkMenuItem}}. The result is a standard menu bar which can hold many menu items. \code{\link{GtkMenuBar}} allows for a shadow type to be set for aesthetic purposes. The shadow types are defined in the \code{gtk_menu_bar_set_shadow_type} function.}
\section{Structures}{\describe{\item{\code{GtkMenuBar}}{
The \code{\link{GtkMenuBar}} struct contains the following fields. (These fields should be considered read-only.  They should never be set by an application.)

}}}
\section{Convenient Construction}{\code{gtkMenuBar} is the equivalent of \code{\link{gtkMenuBarNew}}.}
\section{Enums and Flags}{\describe{\item{\code{GtkPackDirection}}{
\emph{undocumented
}

\describe{
\item{\code{ltr}}{\emph{undocumented
}}
\item{\code{rtl}}{\emph{undocumented
}}
\item{\code{ttb}}{\emph{undocumented
}}
\item{\code{btt}}{\emph{undocumented
}}
}

}}}
\section{Properties}{\describe{
\item{\code{child-pack-direction} [\code{\link{GtkPackDirection}} : Read / Write]}{

The pack direction of the menubar. It determines how
the widgets contained in child menuitems are arranged.  

  Default value: GTK\_PACK\_DIRECTION\_LTR  Since  2.8

}
\item{\code{pack-direction} [\code{\link{GtkPackDirection}} : Read / Write]}{

The pack direction of the menubar. It determines how
menuitems are arranged in the menubar.  

  Default value: GTK\_PACK\_DIRECTION\_LTR  Since  2.8

}
}}
\section{Style Properties}{\describe{
\item{\code{internal-padding} [integer : Read]}{

Amount of border space between the menubar shadow and the menu items.  Allowed values: >= 0  Default value: 1

}
\item{\code{shadow-type} [\code{\link{GtkShadowType}} : Read]}{

Style of bevel around the menubar.  Default value: GTK\_SHADOW\_OUT

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkMenuBar.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkMenuShell}}
\code{\link{GtkMenu}}
\code{\link{GtkMenuItem}}
}
\keyword{internal}
