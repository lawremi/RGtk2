\alias{GThemedIcon}
\alias{gThemedIcon}
\name{GThemedIcon}
\title{GThemedIcon}
\description{Icon theming support}
\section{Methods and Functions}{
\code{\link{gThemedIconNew}(iconname = NULL)}\cr
\code{\link{gThemedIconNewFromNames}(iconnames, len)}\cr
\code{\link{gThemedIconNewWithDefaultFallbacks}(iconname)}\cr
\code{\link{gThemedIconPrependName}(object, iconname)}\cr
\code{\link{gThemedIconAppendName}(object, iconname)}\cr
\code{\link{gThemedIconGetNames}(object)}\cr
\code{gThemedIcon(iconname, iconnames, len)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GThemedIcon}}
\section{Interfaces}{GThemedIcon implements
 \code{\link{GIcon}}.}
\section{Detailed Description}{\code{\link{GThemedIcon}} is an implementation of \code{\link{GIcon}} that supports icon themes.
\code{\link{GThemedIcon}} contains a list of all of the icons present in an icon
theme, so that icons can be looked up quickly. \code{\link{GThemedIcon}} does
not provide actual pixmaps for icons, just the icon names.
Ideally something like \code{\link{gtkIconThemeChooseIcon}} should be used to
resolve the list of names so that fallback icons work nicely with
themes that inherit other themes.}
\section{Structures}{\describe{\item{\verb{GThemedIcon}}{
An implementation of \code{\link{GIcon}} for themed icons.

}}}
\section{Convenient Construction}{\code{gThemedIcon} is the result of collapsing the constructors of \code{GThemedIcon} (\code{\link{gThemedIconNew}}, \code{\link{gThemedIconNewWithDefaultFallbacks}}, \code{\link{gThemedIconNewFromNames}}) and accepts a subset of its arguments matching the required arguments of one of its delegate constructors.}
\section{Properties}{\describe{
\item{\verb{name} [character : *                : Write / Construct Only]}{

The icon name.
  Default value: NULL

}
\item{\verb{names} [character list : Read / Write / Construct Only]}{

A list of icon names.

}
\item{\verb{use-default-fallbacks} [logical : Read / Write / Construct Only]}{

Whether to use the default fallbacks found by shortening the icon name
at '-' characters. If the "names" list has more than one element,
ignores any past the first.
  
For example, if the icon name was "gnome-dev-cdrom-audio", the list
would become
\preformatted{
c("gnome-dev-cdrom-audio", "gnome-dev-cdrom", "gnome-dev", "gnome")

}
  Default value: FALSE

}
}}
\references{\url{https://developer-old.gnome.org/gio/stable/GThemedIcon.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
