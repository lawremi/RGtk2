\alias{GtkIconTheme}
\alias{GtkIconInfo}
\alias{gtkIconTheme}
\alias{GtkIconLookupFlags}
\alias{GtkIconThemeError}
\name{GtkIconTheme}
\title{GtkIconTheme}
\description{Looking up icons by name}
\section{Methods and Functions}{
\code{\link{gtkIconThemeNew}()}\cr
\code{\link{gtkIconThemeGetDefault}()}\cr
\code{\link{gtkIconThemeGetForScreen}(screen)}\cr
\code{\link{gtkIconThemeSetScreen}(object, screen)}\cr
\code{\link{gtkIconThemeSetCustomTheme}(object, theme.name)}\cr
\code{\link{gtkIconThemeHasIcon}(object, icon.name)}\cr
\code{\link{gtkIconThemeLookupIcon}(object, icon.name, size, flags)}\cr
\code{\link{gtkIconThemeChooseIcon}(object, icon.names, size, flags)}\cr
\code{\link{gtkIconThemeLookupByGicon}(object, icon, size, flags)}\cr
\code{\link{gtkIconThemeLoadIcon}(object, icon.name, size, flags, .errwarn = TRUE)}\cr
\code{\link{gtkIconThemeListContexts}(object)}\cr
\code{\link{gtkIconThemeListIcons}(object, context = NULL)}\cr
\code{\link{gtkIconThemeGetIconSizes}(object, icon.name)}\cr
\code{\link{gtkIconThemeGetExampleIconName}(object)}\cr
\code{\link{gtkIconThemeRescanIfNeeded}(object)}\cr
\code{\link{gtkIconThemeAddBuiltinIcon}(icon.name, size, pixbuf)}\cr
\code{\link{gtkIconInfoCopy}(object)}\cr
\code{\link{gtkIconInfoNewForPixbuf}(icon.theme, pixbuf)}\cr
\code{\link{gtkIconInfoGetBaseSize}(object)}\cr
\code{\link{gtkIconInfoGetBuiltinPixbuf}(object)}\cr
\code{\link{gtkIconInfoLoadIcon}(object, .errwarn = TRUE)}\cr
\code{\link{gtkIconInfoSetRawCoordinates}(object, raw.coordinates)}\cr
\code{\link{gtkIconInfoGetEmbeddedRect}(object)}\cr
\code{\link{gtkIconInfoGetAttachPoints}(object)}\cr
\code{\link{gtkIconInfoGetDisplayName}(object)}\cr
\code{gtkIconTheme()}
}
\section{Hierarchy}{\preformatted{GObject
   +----GtkIconTheme}}
\section{Detailed Description}{\code{\link{GtkIconTheme}} provides a facility for looking up icons by name
and size. The main reason for using a name rather than simply
providing a filename is to allow different icons to be used
depending on what \dfn{icon theme} is selected
by the user. The operation of icon themes on Linux and Unix
follows the Icon
Theme Specification (\url{http://www.freedesktop.org/Standards/icon-theme-spec}). There is a default icon theme,
named \code{hicolor} where applications should install
their icons, but more additional application themes can be
installed as operating system vendors and users choose.
  
Named icons are similar to the 
facility, and the distinction between the two may be a bit confusing.
A few things to keep in mind:
  \itemize{
\item Stock images usually are used in conjunction with
., such as \code{GTK_STOCK_OK} or
\code{GTK_STOCK_OPEN}. Named icons are easier to set up and therefore
are more useful for new icons that an application wants to
add, such as application icons or window icons.
\item Stock images can only be loaded at the symbolic sizes defined
by the \code{\link{GtkIconSize}} enumeration, or by custom sizes defined
by \code{\link{gtkIconSizeRegister}}, while named icons are more flexible
and any pixel size can be specified.
\item Because stock images are closely tied to stock items, and thus
to actions in the user interface, stock images may come in
multiple variants for different widget states or writing
directions.
}  
A good rule of thumb is that if there is a stock image for what
you want to use, use it, otherwise use a named icon. It turns
out that internally stock images are generally defined in
terms of one or more named icons. (An example of the
more than one case is icons that depend on writing direction;
GTK_STOCK_GO_FORWARD uses the two themed icons
"gtk-stock-go-forward-ltr" and "gtk-stock-go-forward-rtl".)
  
In many cases, named themes are used indirectly, via \code{\link{GtkImage}}
or stock items, rather than directly, but looking up icons
directly is also simple. The \code{\link{GtkIconTheme}} object acts
as a database of all the icons in the current theme. You
can create new \code{\link{GtkIconTheme}} objects, but its much more
efficient to use the standard icon theme for the \code{\link{GdkScreen}}
so that the icon information is shared with other people
looking up icons. In the case where the default screen is
being used, looking up an icon can be as simple as:
  \preformatted{
icon_theme <- gtkIconThemeGetDefault()
result <- icon_theme$loadIcon("my-icon-name", 48, 0)
if (!result[[1]]) {
  warning("Couldn't load icon: ", result$error$message)
} else {
  pixbuf <- result[[1]]
  ## Use the pixbuf
}
}}
\section{Structures}{\describe{
\item{\verb{GtkIconInfo}}{
Contains information found when looking up an icon in
an icon theme.

}
\item{\verb{GtkIconTheme}}{
Acts as a database of information about an icon theme.
Normally, you retrieve the icon theme for a particular
screen using \code{\link{gtkIconThemeGetForScreen}} and it
will contain information about current icon theme for
that screen, but you can also create a new \code{\link{GtkIconTheme}}
object and set the icon theme name explicitely using
\code{\link{gtkIconThemeSetCustomTheme}}.

}
}}
\section{Convenient Construction}{\code{gtkIconTheme} is the equivalent of \code{\link{gtkIconThemeNew}}.}
\section{Enums and Flags}{\describe{
\item{\verb{GtkIconLookupFlags}}{
\emph{undocumented
}

\describe{
\item{\verb{no-svg}}{Never return SVG icons, even if gdk-pixbuf
  supports them. Cannot be used together with \code{GTK_ICON_LOOKUP_FORCE_SVG}.}
\item{\verb{force-svg}}{Return SVG icons, even if gdk-pixbuf
  doesn't support them.
  Cannot be used together with \code{GTK_ICON_LOOKUP_NO_SVG}.}
\item{\verb{use-builtin}}{When passed to
  \code{\link{gtkIconThemeLookupIcon}} includes builtin icons
  as well as files. For a builtin icon, \code{\link{gtkIconInfoGetFilename}}}
}

}
\item{\verb{GtkIconThemeError}}{
Error codes for GtkIconTheme operations.

\describe{
\item{\verb{not-found}}{The icon specified does not exist in the theme}
\item{\verb{failed}}{An unspecified error occurred.}
}

}
}}
\section{Signals}{\describe{\item{\code{changed(icon.theme, user.data)}}{
Emitted when the current icon theme is switched or GTK+ detects
that a change has occurred in the contents of the current
icon theme.

\describe{
\item{\code{icon.theme}}{the icon theme}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkIconTheme.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
