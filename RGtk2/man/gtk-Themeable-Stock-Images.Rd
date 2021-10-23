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
\code{\link{gtkIconSourceGetPixbuf}(object)}\cr
\code{\link{gtkIconSourceGetIconName}(object)}\cr
\code{\link{gtkIconSourceGetSize}(object)}\cr
\code{\link{gtkIconSourceGetSizeWildcarded}(object)}\cr
\code{\link{gtkIconSourceGetState}(object)}\cr
\code{\link{gtkIconSourceGetStateWildcarded}(object)}\cr
\code{\link{gtkIconSourceNew}()}\cr
\code{\link{gtkIconSourceSetDirection}(object, direction)}\cr
\code{\link{gtkIconSourceSetDirectionWildcarded}(object, setting)}\cr
\code{\link{gtkIconSourceSetPixbuf}(object, pixbuf)}\cr
\code{\link{gtkIconSourceSetIconName}(object, icon.name)}\cr
\code{\link{gtkIconSourceSetSize}(object, size)}\cr
\code{\link{gtkIconSourceSetSizeWildcarded}(object, setting)}\cr
\code{\link{gtkIconSourceSetState}(object, state)}\cr
\code{\link{gtkIconSourceSetStateWildcarded}(object, setting)}\cr
\code{gtkIconFactory()}
}
\section{Hierarchy}{\preformatted{
GObject
   +----GtkIconFactory
GBoxed
   +----GtkIconSet
}}
\section{Interfaces}{GtkIconFactory implements
 \code{\link{GtkBuildable}}.}
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
\section{GtkIconFactory as GtkBuildable}{GtkIconFactory supports a custom <sources> element, which
can contain multiple <source> elements.
The following attributes are allowed:
\describe{
\item{stock-id}{The stock id of the source, a string.
This attribute is mandatory}
\item{filename}{The filename of the source, a string.
This attribute is optional}
\item{icon-name}{The icon name for the source, a string.
This attribute is optional.}
\item{size}{Size of the icon, a \code{\link{GtkIconSize}} enum value.
This attribute is optional.}
\item{direction}{Direction of the source, a \code{\link{GtkTextDirection}} enum value.
This attribute is optional.}
\item{state}{State of the source, a \code{\link{GtkStateType}} enum value.
This attribute is optional.}
}
  
 \emph{A   \code{GtkIconFactory}   UI definition fragment.}\preformatted{<object class="GtkIconFactory" id="iconfactory1">
  <sources>
    <source stock-id="apple-red" filename="apple-red.png"/>
  </sources>
</object>
<object class="GtkWindow" id="window1">
  <child>
    <object class="GtkButton" id="apple_button">
      <property name="label">apple-red</property>
      <property name="use-stock">True</property>
    </object>
  </child>
</object>
}}
\section{Structures}{\describe{
\item{\verb{GtkIconSource}}{
\emph{undocumented
}

}
\item{\verb{GtkIconFactory}}{
\emph{undocumented
}

}
\item{\verb{GtkIconSet}}{
\emph{undocumented
}

}
}}
\section{Convenient Construction}{\code{gtkIconFactory} is the equivalent of \code{\link{gtkIconFactoryNew}}.}
\section{Enums and Flags}{\describe{\item{\verb{GtkIconSize}}{
\emph{undocumented
}

\describe{
\item{\verb{invalid}}{\emph{undocumented
}}
\item{\verb{menu}}{\emph{undocumented
}}
\item{\verb{small-toolbar}}{\emph{undocumented
}}
\item{\verb{large-toolbar}}{\emph{undocumented
}}
\item{\verb{button}}{\emph{undocumented
}}
\item{\verb{dnd}}{\emph{undocumented
}}
\item{\verb{dialog}}{\emph{undocumented
}}
}

}}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/gtk2-Themeable-Stock-Images.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
