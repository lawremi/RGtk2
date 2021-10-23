\alias{GtkRecentFilter}
\alias{GtkRecentFilterInfo}
\alias{gtkRecentFilter}
\alias{GtkRecentFilterFunc}
\alias{GtkRecentFilterFlags}
\name{GtkRecentFilter}
\title{GtkRecentFilter}
\description{A filter for selecting a subset of recently used files}
\section{Methods and Functions}{
\code{\link{gtkRecentFilterNew}()}\cr
\code{\link{gtkRecentFilterGetName}(object)}\cr
\code{\link{gtkRecentFilterSetName}(object, name)}\cr
\code{\link{gtkRecentFilterAddMimeType}(object, mime.type)}\cr
\code{\link{gtkRecentFilterAddPattern}(object, pattern)}\cr
\code{\link{gtkRecentFilterAddPixbufFormats}(object)}\cr
\code{\link{gtkRecentFilterAddApplication}(object, application)}\cr
\code{\link{gtkRecentFilterAddGroup}(object, group)}\cr
\code{\link{gtkRecentFilterAddAge}(object, days)}\cr
\code{\link{gtkRecentFilterAddCustom}(object, needed, func, data)}\cr
\code{\link{gtkRecentFilterGetNeeded}(object)}\cr
\code{\link{gtkRecentFilterFilter}(object, filter.info)}\cr
\code{gtkRecentFilter()}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkRecentFilter}}
\section{Detailed Description}{A \code{\link{GtkRecentFilter}} can be used to restrict the files being shown
in a \code{\link{GtkRecentChooser}}.  Files can be filtered based on their name
(with \code{\link{gtkRecentFilterAddPattern}}), on their mime type (with
\code{\link{gtkFileFilterAddMimeType}}), on the application that has
registered them (with \code{\link{gtkRecentFilterAddApplication}}), or by
a custom filter function (with \code{\link{gtkRecentFilterAddCustom}}).
  
Filtering by mime type handles aliasing and subclassing of mime
types; e.g. a filter for text/plain also matches a file with mime
type application/rtf, since application/rtf is a subclass of text/plain.
Note that \code{\link{GtkRecentFilter}} allows wildcards for the subtype of a
mime type, so you can e.g. filter for image/*.
  
Normally, filters are used by adding them to a \code{\link{GtkRecentChooser}},
see \code{\link{gtkRecentChooserAddFilter}}, but it is also possible to
manually use a filter on a file with \code{\link{gtkRecentFilterFilter}}.
  
Recently used files are supported since GTK+ 2.10.}
\section{Structures}{\describe{
\item{\verb{GtkRecentFilter}}{
The \code{GtkRecentFilter} struct contains
only private fields and should not be directly accessed.

}
\item{\verb{GtkRecentFilterInfo}}{
A \code{GtkRecentFilterInfo} struct is used
to pass information about the tested file to \code{\link{gtkRecentFilterFilter}}.
\strong{\verb{GtkRecentFilterInfo} is a \link{transparent-type}.}

\describe{
\item{\verb{contains}}{[\code{\link{GtkRecentFilterFlags}}] Flags indicating which of the following fields need
are filled}
\item{\verb{uri}}{[character] the URI of the file being tested}
\item{\verb{displayName}}{[character] the string that will be used to display the file
in the recent chooser}
\item{\verb{mimeType}}{[character] the mime type of the file}
\item{\verb{applications}}{[character] the list of applications that have registered the file}
\item{\verb{groups}}{[character] the groups to which the file belongs to}
\item{\verb{age}}{[integer] the number of days elapsed since the file has been registered}
}

}
}}
\section{Convenient Construction}{\code{gtkRecentFilter} is the equivalent of \code{\link{gtkRecentFilterNew}}.}
\section{Enums and Flags}{\describe{\item{\verb{GtkRecentFilterFlags}}{
These flags indicate what parts of a \code{\link{GtkRecentFilterInfo}} struct
are filled or need to be filled.

\describe{
\item{\verb{uri}}{the URI of the file being tested}
\item{\verb{display-name}}{the string that will be used to
  display the file in the recent chooser}
\item{\verb{mime-type}}{the mime type of the file}
\item{\verb{application}}{the list of applications that have
  registered the file}
\item{\verb{group}}{the groups to which the file belongs to}
\item{\verb{age}}{the number of days elapsed since the file
  has been registered}
}

}}}
\section{User Functions}{\describe{\item{\code{GtkRecentFilterFunc(filter.info, user.data)}}{
The type of function that is used with custom filters,
see \code{\link{gtkRecentFilterAddCustom}}.

\describe{
\item{\code{filter.info}}{a \code{\link{GtkRecentFilterInfo}} that is filled according
to the \code{needed} flags passed to \code{\link{gtkRecentFilterAddCustom}}}
\item{\code{user.data}}{user data passed to \code{\link{gtkRecentFilterAddCustom}}}
}

\emph{Returns:} [logical] \code{TRUE} if the file should be displayed

}}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkRecentFilter.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{\code{\link{GtkRecentChooser}}}
\keyword{internal}
