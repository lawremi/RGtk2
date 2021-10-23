\alias{GtkRecentChooser}
\alias{GtkRecentSortFunc}
\alias{GtkRecentChooserError}
\alias{GtkRecentSortType}
\name{GtkRecentChooser}
\title{GtkRecentChooser}
\description{Interface implemented by widgets displaying recently used files}
\section{Methods and Functions}{
\code{\link{gtkRecentChooserSetShowPrivate}(object, show.private)}\cr
\code{\link{gtkRecentChooserGetShowPrivate}(object)}\cr
\code{\link{gtkRecentChooserSetShowNotFound}(object, show.not.found)}\cr
\code{\link{gtkRecentChooserGetShowNotFound}(object)}\cr
\code{\link{gtkRecentChooserSetShowIcons}(object, show.icons)}\cr
\code{\link{gtkRecentChooserGetShowIcons}(object)}\cr
\code{\link{gtkRecentChooserSetSelectMultiple}(object, select.multiple)}\cr
\code{\link{gtkRecentChooserGetSelectMultiple}(object)}\cr
\code{\link{gtkRecentChooserSetLocalOnly}(object, local.only)}\cr
\code{\link{gtkRecentChooserGetLocalOnly}(object)}\cr
\code{\link{gtkRecentChooserSetLimit}(object, limit)}\cr
\code{\link{gtkRecentChooserGetLimit}(object)}\cr
\code{\link{gtkRecentChooserSetShowTips}(object, show.tips)}\cr
\code{\link{gtkRecentChooserGetShowTips}(object)}\cr
\code{\link{gtkRecentChooserSetSortType}(object, sort.type)}\cr
\code{\link{gtkRecentChooserGetSortType}(object)}\cr
\code{\link{gtkRecentChooserSetSortFunc}(object, sort.func, sort.data)}\cr
\code{\link{gtkRecentChooserSetCurrentUri}(object, uri, .errwarn = TRUE)}\cr
\code{\link{gtkRecentChooserGetCurrentUri}(object)}\cr
\code{\link{gtkRecentChooserGetCurrentItem}(object)}\cr
\code{\link{gtkRecentChooserSelectUri}(object, uri, .errwarn = TRUE)}\cr
\code{\link{gtkRecentChooserUnselectUri}(object, uri)}\cr
\code{\link{gtkRecentChooserSelectAll}(object)}\cr
\code{\link{gtkRecentChooserUnselectAll}(object)}\cr
\code{\link{gtkRecentChooserGetItems}(object)}\cr
\code{\link{gtkRecentChooserGetUris}(object)}\cr
\code{\link{gtkRecentChooserAddFilter}(object, filter)}\cr
\code{\link{gtkRecentChooserRemoveFilter}(object, filter)}\cr
\code{\link{gtkRecentChooserListFilters}(object)}\cr
\code{\link{gtkRecentChooserSetFilter}(object, filter)}\cr
\code{\link{gtkRecentChooserGetFilter}(object)}\cr

}
\section{Hierarchy}{\preformatted{GInterface
   +----GtkRecentChooser}}
\section{Implementations}{GtkRecentChooser is implemented by
 \code{\link{GtkRecentAction}},  \code{\link{GtkRecentChooserDialog}},  \code{\link{GtkRecentChooserMenu}} and  \code{\link{GtkRecentChooserWidget}}.}
\section{Detailed Description}{\code{\link{GtkRecentChooser}} is an interface that can be implemented by widgets
displaying the list of recently used files.  In GTK+, the main objects
that implement this interface are \code{\link{GtkRecentChooserWidget}},
\code{\link{GtkRecentChooserDialog}} and \code{\link{GtkRecentChooserMenu}}.
  
Recently used files are supported since GTK+ 2.10.}
\section{Structures}{\describe{\item{\verb{GtkRecentChooser}}{
\emph{undocumented
}

}}}
\section{Enums and Flags}{\describe{
\item{\verb{GtkRecentChooserError}}{
These identify the various errors that can occur while calling
\code{\link{GtkRecentChooser}} functions.

\describe{
\item{\verb{not-found}}{Indicates that a file does not exist}
\item{\verb{invalid-uri}}{Indicates a malformed URI}
}

}
\item{\verb{GtkRecentSortType}}{
Used to specify the sorting method to be applyed to the recently
used resource list.

\describe{
\item{\verb{none}}{Do not sort the returned list of recently used
  resources.}
\item{\verb{mru}}{Sort the returned list with the most recently used
  items first.}
\item{\verb{lru}}{Sort the returned list with the least recently used
  items first.}
\item{\verb{custom}}{Sort the returned list using a custom sorting
  function passed using \code{gtkRecentManagerSetSortFunc()}.}
}

}
}}
\section{User Functions}{\describe{\item{\code{GtkRecentSortFunc()}}{
\emph{undocumented
}




}}}
\section{Signals}{\describe{
\item{\code{item-activated(chooser, user.data)}}{
This signal is emitted when the user "activates" a recent item
in the recent chooser.  This can happen by double-clicking on an item
in the recently used resources list, or by pressing
\kbd{Enter}.
  Since 2.10

\describe{
\item{\code{chooser}}{the object which received the signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{selection-changed(chooser, user.data)}}{
This signal is emitted when there is a change in the set of
selected recently used resources.  This can happen when a user
modifies the selection with the mouse or the keyboard, or when
explicitely calling functions to change the selection.
  Since 2.10

\describe{
\item{\code{chooser}}{the object which received the signal}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{
\item{\verb{filter} [\code{\link{GtkRecentFilter}} : *      : Read / Write]}{

The \code{\link{GtkRecentFilter}} object to be used when displaying
the recently used resources.
  Since 2.10

}
\item{\verb{limit} [integer : Read / Write]}{

The maximum number of recently used resources to be displayed,
or -1 to display all items. By default, the
GtkSetting:gtk-recent-files-limit setting is respected: you can
override that limit on a particular instance of \code{\link{GtkRecentChooser}}
by setting this property.
  Allowed values: >= -1  Default value: -1  Since 2.10

}
\item{\verb{local-only} [logical : Read / Write]}{

Whether this \code{\link{GtkRecentChooser}} should display only local (file:)
resources.
  Default value: TRUE  Since 2.10

}
\item{\verb{recent-manager} [\code{\link{GtkRecentManager}} : *     : Write / Construct Only]}{

The \code{\link{GtkRecentManager}} instance used by the \code{\link{GtkRecentChooser}} to
display the list of recently used resources.
  Since 2.10

}
\item{\verb{select-multiple} [logical : Read / Write]}{

Allow the user to select multiple resources.
  Default value: FALSE  Since 2.10

}
\item{\verb{show-icons} [logical : Read / Write]}{

Whether this \code{\link{GtkRecentChooser}} should display an icon near the item.
  Default value: TRUE  Since 2.10

}
\item{\verb{show-not-found} [logical : Read / Write]}{

Whether this \code{\link{GtkRecentChooser}} should display the recently used resources
even if not present anymore. Setting this to \code{FALSE} will perform a
potentially expensive check on every local resource (every remote
resource will always be displayed).
  Default value: TRUE  Since 2.10

}
\item{\verb{show-private} [logical : Read / Write]}{

Whether the private items should be displayed.  Default value: FALSE

}
\item{\verb{show-tips} [logical : Read / Write]}{

Whether this \code{\link{GtkRecentChooser}} should display a tooltip containing the
full path of the recently used resources.
  Default value: FALSE  Since 2.10

}
\item{\verb{sort-type} [\code{\link{GtkRecentSortType}} : Read / Write]}{

Sorting order to be used when displaying the recently used resources.
  Default value: GTK_RECENT_SORT_NONE  Since 2.10

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkRecentChooser.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{
\code{\link{GtkRecentManager}}
\code{\link{GtkRecentChooserDialog}}
\code{\link{GtkRecentChooserWidget}}
\code{\link{GtkRecentChooserMenu}}
}
\keyword{internal}
