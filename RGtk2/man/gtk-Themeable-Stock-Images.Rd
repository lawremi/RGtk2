\alias{gtk-Themeable-Stock-Images}
\alias{GtkIconSource}
\alias{GtkIconFactory}
\alias{GtkIconSet}
\alias{gtkIconFactory}
\alias{GtkIconSize}
\name{gtk-Themeable-Stock-Images}
\title{Themeable Stock Images}
\description{Manipulating stock icons}
\section{Methods and Functions}{
\code{\link{gtkIconSourceCopy}(object)}\cr
\code{\link{gtkIconFactoryAdd}(object, stock.id, icon.set)}\cr
\code{\link{gtkIconFactoryAddDefault}(object)}\cr
\code{\link{gtkIconFactoryLookup}(object, stock.id)}\cr
\code{\link{gtkIconFactoryLookupDefault}(stock.id)}\cr
\code{\link{gtkIconFactoryNew}()}\cr
\code{\link{gtkIconFactoryRemoveDefault}(object)}\cr
\code{\link{gtkIconSetAddSource}(object, source)}\cr
\code{\link{gtkIconSetCopy}(object)}\cr
\code{\link{gtkIconSetNew}()}\cr
\code{\link{gtkIconSetNewFromPixbuf}(pixbuf)}\cr
\code{\link{gtkIconSetRenderIcon}(object, style, direction, state, size, widget = NULL, detail = NULL)}\cr
\code{\link{gtkIconSizeLookup}(size)}\cr
\code{\link{gtkIconSizeLookupForSettings}(settings, size)}\cr
\code{\link{gtkIconSizeRegister}(name, width, height)}\cr
\code{\link{gtkIconSizeRegisterAlias}(alias, target)}\cr
\code{\link{gtkIconSizeFromName}(name)}\cr
\code{\link{gtkIconSizeGetName}(size)}\cr
\code{\link{gtkIconSetGetSizes}(object)}\cr
\code{\link{gtkIconSourceGetDirection}(object)}\cr
\code{\link{gtkIconSourceGetDirectionWildcarded}(object)}\cr
\code{\link{gtkIconSourceGetFilename}(object)}\cr
\code{\link{gtkIconSourceGetPixbuf}(object)}\cr
\code{\link{gtkIconSourceGetIconName}(object)}\cr
\code{\link{gtkIconSourceGetSize}(object)}\cr
\code{\link{gtkIconSourceGetSizeWildcarded}(object)}\cr
\code{\link{gtkIconSourceGetState}(object)}\cr
\code{\link{gtkIconSourceGetStateWildcarded}(object)}\cr
\code{\link{gtkIconSourceNew}()}\cr
\code{\link{gtkIconSourceSetDirection}(object, direction)}\cr
\code{\link{gtkIconSourceSetDirectionWildcarded}(object, setting)}\cr
\code{\link{gtkIconSourceSetFilename}(object, filename)}\cr
\code{\link{gtkIconSourceSetPixbuf}(object, pixbuf)}\cr
\code{\link{gtkIconSourceSetIconName}(object, icon.name)}\cr
\code{\link{gtkIconSourceSetSize}(object, size)}\cr
\code{\link{gtkIconSourceSetSizeWildcarded}(object, setting)}\cr
\code{\link{gtkIconSourceSetState}(object, state)}\cr
\code{\link{gtkIconSourceSetStateWildcarded}(object, setting)}\cr
\code{gtkIconFactory()}
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GtkIconFactory}}
\section{Detailed Description}{Browse the available stock icons in the list of stock IDs found here. You can also use 
the \command{gtk-demo} application for this purpose.
  
 An icon factory manages a collection of \code{\link{GtkIconSet}}; a \code{\link{GtkIconSet}} manages a
 set of variants of a particular icon (i.e. a \code{\link{GtkIconSet}} contains variants for
 different sizes and widget states). Icons in an icon factory are named by a
 stock ID, which is a simple string identifying the icon. Each \code{\link{GtkStyle}} has a
 list of \code{\link{GtkIconFactory}} derived from the current theme; those icon factories
 are consulted first when searching for an icon. If the theme doesn't set a
 particular icon, GTK+ looks for the icon in a list of default icon factories,
 maintained by \code{\link{gtkIconFactoryAddDefault}} and
 \code{\link{gtkIconFactoryRemoveDefault}}. Applications with icons should add a default
 icon factory with their icons, which will allow themes to override the icons
 for the application.
  
To display an icon, always use \code{\link{gtkStyleLookupIconSet}} on the widget that
will display the icon, or the convenience function
\code{\link{gtkWidgetRenderIcon}}. These functions take the theme into account when
looking up the icon to use for a given stock ID.}
\section{Structures}{\describe{
\item{\code{GtkIconSource}}{
\emph{undocumented
}

}
\item{\code{GtkIconFactory}}{
\emph{undocumented
}

}
\item{\code{GtkIconSet}}{
\emph{undocumented
}

}
}}
\section{Convenient Construction}{\code{gtkIconFactory} is the equivalent of \code{\link{gtkIconFactoryNew}}.}
\section{Enums and Flags}{\describe{\item{\code{GtkIconSize}}{
\emph{undocumented
}

\describe{
\item{\code{invalid}}{\emph{undocumented
}}
\item{\code{menu}}{\emph{undocumented
}}
\item{\code{small-toolbar}}{\emph{undocumented
}}
\item{\code{large-toolbar}}{\emph{undocumented
}}
\item{\code{button}}{\emph{undocumented
}}
\item{\code{dnd}}{\emph{undocumented
}}
\item{\code{dialog}}{\emph{undocumented
}}
}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/gtk-Themeable-Stock-Images.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
