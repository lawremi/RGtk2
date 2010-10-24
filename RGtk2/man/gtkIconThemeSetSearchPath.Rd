\alias{gtkIconThemeSetSearchPath}
\name{gtkIconThemeSetSearchPath}
\title{gtkIconThemeSetSearchPath}
\description{Sets the search path for the icon theme object. When looking
for an icon theme, GTK+ will search for a subdirectory of
one or more of the directories in \code{path} with the same name
as the icon theme. (Themes from multiple of the path elements
are combined to allow themes to be extended by adding icons
in the user's home directory.)}
\usage{gtkIconThemeSetSearchPath(object, path)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkIconTheme}}}
\item{\verb{path}}{array of directories that are searched for icon themes}
}
\details{In addition if an icon found isn't found either in the current
icon theme or the default icon theme, and an image file with
the right name is found directly in one of the elements of
\code{path}, then that image will be used for the icon name.
(This is legacy feature, and new icons should be put
into the default icon theme, which is called DEFAULT_THEME_NAME,
rather than directly on the icon path.)
  Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
