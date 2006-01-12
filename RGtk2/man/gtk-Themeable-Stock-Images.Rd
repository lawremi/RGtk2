\alias{gtk-Themeable-Stock-Images}
\alias{GtkIconSource}
\alias{GtkIconFactory}
\alias{GtkIconSet}
\alias{gtkIconFactory}
\alias{GtkIconSize}
\name{gtk-Themeable-Stock-Images}
\title{Themeable Stock Images}
\description{Manipulating stock icons}
\usage{
\link{gtkIconSourceCopy}(object)
\link{gtkIconFactoryAdd}(object, stock.id, icon.set)
\link{gtkIconFactoryAddDefault}(object)
\link{gtkIconFactoryLookup}(object, stock.id)
\link{gtkIconFactoryLookupDefault}(stock.id)
\link{gtkIconFactoryNew}()
\link{gtkIconFactoryRemoveDefault}(object)
\link{gtkIconSetAddSource}(object, source)
\link{gtkIconSetCopy}(object)
\link{gtkIconSetNew}()
\link{gtkIconSetNewFromPixbuf}(pixbuf)
\link{gtkIconSetRenderIcon}(object, style, direction, state, size, widget = NULL, detail = NULL)
\link{gtkIconSizeLookup}(size)
\link{gtkIconSizeLookupForSettings}(settings, size)
\link{gtkIconSizeRegister}(name, width, height)
\link{gtkIconSizeRegisterAlias}(alias, target)
\link{gtkIconSizeFromName}(name)
\link{gtkIconSizeGetName}(size)
\link{gtkIconSetGetSizes}(object)
\link{gtkIconSourceGetDirection}(object)
\link{gtkIconSourceGetDirectionWildcarded}(object)
\link{gtkIconSourceGetFilename}(object)
\link{gtkIconSourceGetPixbuf}(object)
\link{gtkIconSourceGetIconName}(object)
\link{gtkIconSourceGetSize}(object)
\link{gtkIconSourceGetSizeWildcarded}(object)
\link{gtkIconSourceGetState}(object)
\link{gtkIconSourceGetStateWildcarded}(object)
\link{gtkIconSourceNew}()
\link{gtkIconSourceSetDirection}(object, direction)
\link{gtkIconSourceSetDirectionWildcarded}(object, setting)
\link{gtkIconSourceSetFilename}(object, filename)
\link{gtkIconSourceSetPixbuf}(object, pixbuf)
\link{gtkIconSourceSetIconName}(object, icon.name)
\link{gtkIconSourceSetSize}(object, size)
\link{gtkIconSourceSetSizeWildcarded}(object, setting)
\link{gtkIconSourceSetState}(object, state)
\link{gtkIconSourceSetStateWildcarded}(object, setting)
gtkIconFactory()
}
\details{Browse the available stock icons in the list of stock IDs found here. You can also use 
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
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GtkIconFactory}}
\section{Structures}{\describe{
\item{\code{GtkIconSource}}{\emph{undocumented
}}
\item{\code{GtkIconFactory}}{\emph{undocumented
}}
\item{\code{GtkIconSet}}{\emph{undocumented
}}
}}
\section{Convenient Construction}{\code{gtkIconFactory} is the equivalent of \code{\link{gtkIconFactoryNew}}.}
\section{Enums and Flags}{\describe{\item{\code{enum GtkIconSize}}{


\describe{
\item{\code{GTK_ICON_SIZE_INVALID (invalid)}}{\emph{undocumented
}}
\item{\code{GTK_ICON_SIZE_MENU (menu)}}{\emph{undocumented
}}
\item{\code{GTK_ICON_SIZE_SMALL_TOOLBAR (small-toolbar)}}{\emph{undocumented
}}
\item{\code{GTK_ICON_SIZE_LARGE_TOOLBAR (large-toolbar)}}{\emph{undocumented
}}
\item{\code{GTK_ICON_SIZE_BUTTON (button)}}{\emph{undocumented
}}
\item{\code{GTK_ICON_SIZE_DND (dnd)}}{\emph{undocumented
}}
\item{\code{GTK_ICON_SIZE_DIALOG (dialog)}}{\emph{undocumented
}}
}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/gtk-Themeable-Stock-Images.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
