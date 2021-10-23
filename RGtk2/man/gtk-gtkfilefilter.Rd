\alias{gtk-gtkfilefilter}
\alias{GtkFileFilter}
\alias{GtkFileFilterInfo}
\alias{gtkFileFilter}
\alias{GtkFileFilterFunc}
\alias{GtkFileFilterFlags}
\name{gtk-gtkfilefilter}
\title{GtkFileFilter}
\description{A filter for selecting a file subset}
\section{Methods and Functions}{
\code{\link{gtkFileFilterNew}()}\cr
\code{\link{gtkFileFilterSetName}(object, name)}\cr
\code{\link{gtkFileFilterGetName}(object)}\cr
\code{\link{gtkFileFilterAddMimeType}(object, mime.type)}\cr
\code{\link{gtkFileFilterAddPattern}(object, pattern)}\cr
\code{\link{gtkFileFilterAddPixbufFormats}(object)}\cr
\code{\link{gtkFileFilterAddCustom}(object, needed, func, data = NULL)}\cr
\code{\link{gtkFileFilterGetNeeded}(object)}\cr
\code{\link{gtkFileFilterFilter}(object, filter.info)}\cr
\code{gtkFileFilter()}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkFileFilter}}
\section{Detailed Description}{A GtkFileFilter can be used to restrict the files being shown
in a \code{\link{GtkFileChooser}}. Files can be filtered based on their name
(with \code{\link{gtkFileFilterAddPattern}}), on their mime type (with
\code{\link{gtkFileFilterAddMimeType}}), or by a custom filter function
(with \code{\link{gtkFileFilterAddCustom}}).
  
Filtering by mime types handles aliasing and subclassing of mime
types; e.g. a filter for text/plain also matches a file with mime
type application/rtf, since application/rtf is a subclass of
text/plain. Note that \code{\link{GtkFileFilter}} allows wildcards for the
subtype of a mime type, so you can e.g. filter for image/*.
  
Normally, filters are used by adding them to a \code{\link{GtkFileChooser}},
see \code{\link{gtkFileChooserAddFilter}}, but it is also possible
to manually use a filter on a file with \code{\link{gtkFileFilterFilter}}.}
\section{Structures}{\describe{
\item{\verb{GtkFileFilter}}{
The \code{GtkFileFilter} struct contains
only private fields and should not be directly accessed.

}
\item{\verb{GtkFileFilterInfo}}{
A \code{GtkFileFilterInfo} struct is used
to pass information about the tested file to
\code{\link{gtkFileFilterFilter}}.
\strong{\verb{GtkFileFilterInfo} is a \link{transparent-type}.}

\describe{
\item{\verb{contains}}{[\code{\link{GtkFileFilterFlags}}] Flags indicating which of the following fields need
are filled}
\item{\verb{filename}}{[character] the filename of the file being tested}
\item{\verb{uri}}{[character] the URI for the file being tested}
\item{\verb{displayName}}{[character] the string that will be used to display the file
in the file chooser}
\item{\verb{mimeType}}{[character] the mime type of the file}
}

}
}}
\section{Convenient Construction}{\code{gtkFileFilter} is the equivalent of \code{\link{gtkFileFilterNew}}.}
\section{Enums and Flags}{\describe{\item{\verb{GtkFileFilterFlags}}{
These flags indicate what parts of a \code{\link{GtkFileFilterInfo}} struct
are filled or need to be filled.

\describe{
\item{\verb{filename}}{the filename of the file being tested}
\item{\verb{uri}}{the URI for the file being tested}
\item{\verb{display-name}}{the string that will be used to 
  display the file in the file chooser}
\item{\verb{mime-type}}{the mime type of the file}
}

}}}
\section{User Functions}{\describe{\item{\code{GtkFileFilterFunc(filter.info, data)}}{
The type of function that is used with custom filters,
see \code{\link{gtkFileFilterAddCustom}}.

\describe{
\item{\code{filter.info}}{a \code{\link{GtkFileFilterInfo}} that is filled according
to the \code{needed} flags passed to \code{\link{gtkFileFilterAddCustom}}}
\item{\code{data}}{user data passed to \code{\link{gtkFileFilterAddCustom}}}
}

\emph{Returns:} [logical] \code{TRUE} if the file should be displayed

}}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/gtk2-gtkfilefilter.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{\code{\link{GtkFileChooser}}}
\keyword{internal}
