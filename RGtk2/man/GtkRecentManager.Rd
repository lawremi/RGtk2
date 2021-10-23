\alias{GtkRecentManager}
\alias{GtkRecentInfo}
\alias{GtkRecentData}
\alias{gtkRecentManager}
\alias{GtkRecentManagerError}
\name{GtkRecentManager}
\title{GtkRecentManager}
\description{Managing Recently Used Files}
\section{Methods and Functions}{
\code{\link{gtkRecentManagerNew}()}\cr
\code{\link{gtkRecentManagerGetDefault}()}\cr
\code{\link{gtkRecentManagerGetForScreen}(screen)}\cr
\code{\link{gtkRecentManagerGetForScreen}(screen)}\cr
\code{\link{gtkRecentManagerSetScreen}(object, screen)}\cr
\code{\link{gtkRecentManagerSetScreen}(object, screen)}\cr
\code{\link{gtkRecentManagerAddItem}(object, uri)}\cr
\code{\link{gtkRecentManagerAddFull}(object, uri, recent.data)}\cr
\code{\link{gtkRecentManagerRemoveItem}(object, uri, .errwarn = TRUE)}\cr
\code{\link{gtkRecentManagerLookupItem}(object, uri, .errwarn = TRUE)}\cr
\code{\link{gtkRecentManagerHasItem}(object, uri)}\cr
\code{\link{gtkRecentManagerMoveItem}(object, uri, new.uri, .errwarn = TRUE)}\cr
\code{\link{gtkRecentManagerGetLimit}(object)}\cr
\code{\link{gtkRecentManagerSetLimit}(object, limit)}\cr
\code{\link{gtkRecentManagerGetItems}(object)}\cr
\code{\link{gtkRecentManagerPurgeItems}(object, .errwarn = TRUE)}\cr
\code{\link{gtkRecentInfoRef}(object)}\cr
\code{\link{gtkRecentInfoUnref}(object)}\cr
\code{\link{gtkRecentInfoGetUri}(object)}\cr
\code{\link{gtkRecentInfoGetDisplayName}(object)}\cr
\code{\link{gtkRecentInfoGetDescription}(object)}\cr
\code{\link{gtkRecentInfoGetMimeType}(object)}\cr
\code{\link{gtkRecentInfoGetAdded}(object)}\cr
\code{\link{gtkRecentInfoGetModified}(object)}\cr
\code{\link{gtkRecentInfoGetVisited}(object)}\cr
\code{\link{gtkRecentInfoGetPrivateHint}(object)}\cr
\code{\link{gtkRecentInfoGetApplicationInfo}(object, app.name)}\cr
\code{\link{gtkRecentInfoGetApplications}(object, length)}\cr
\code{\link{gtkRecentInfoLastApplication}(object)}\cr
\code{\link{gtkRecentInfoGetGroups}(object)}\cr
\code{\link{gtkRecentInfoHasGroup}(object, group.name)}\cr
\code{\link{gtkRecentInfoHasApplication}(object, app.name)}\cr
\code{\link{gtkRecentInfoGetIcon}(object, size)}\cr
\code{\link{gtkRecentInfoGetShortName}(object)}\cr
\code{\link{gtkRecentInfoGetUriDisplay}(object)}\cr
\code{\link{gtkRecentInfoGetAge}(object)}\cr
\code{\link{gtkRecentInfoIsLocal}(object)}\cr
\code{\link{gtkRecentInfoExists}(object)}\cr
\code{\link{gtkRecentInfoMatch}(object, info.b)}\cr
\code{gtkRecentManager()}
}
\section{Hierarchy}{\preformatted{GObject
   +----GtkRecentManager}}
\section{Detailed Description}{\code{\link{GtkRecentManager}} provides a facility for adding, removing and
looking up recently used files.  Each recently used file is
identified by its URI, and has meta-data associated to it, like
the names and command lines of the applications that have
registered it, the number of time each application has registered
the same file, the mime type of the file and whether the file
should be displayed only by the applications that have
registered it.
  
The \code{\link{GtkRecentManager}} acts like a database of all the recently
used files.  You can create new \code{\link{GtkRecentManager}} objects, but
it is more efficient to use the standard recent manager for
the \code{\link{GdkScreen}} so that informations about the recently used
files is shared with other people using them.  In case the
default screen is being used, adding a new recently used
file is as simple as:
  \preformatted{
manager <- gtkRecentManagerGetDefault()
manager$addItem(file_uri)

}  \preformatted{
manager <- gtkRecentManagerGetDefault()
lookup <- manager$lookupItem(file_uri)
if (lookup$error)
  warning("Could not find the file:", lookup$error$message)
else use_info_object(lookup$retval)
}  
Recently used files are supported since GTK+ 2.10.}
\section{Structures}{\describe{
\item{\verb{GtkRecentManager}}{
Acts as a database of information about the list of recently
used files.  Normally, you retrieve the recent manager for a
particular screen using \code{\link{gtkRecentManagerGetForScreen}}
and it will contain information about current recent manager
for that screen.

}
\item{\verb{GtkRecentInfo}}{
Contains informations found when looking up an entry of the
recently used files list.

}
\item{\verb{GtkRecentData}}{
Meta-data to be passed to \code{\link{gtkRecentManagerAddFull}} when
registering a recently used resource.
\strong{\verb{GtkRecentData} is a \link{transparent-type}.}

\describe{
\item{\verb{displayName}}{[character] a UTF-8 encoded string, containing the name of the recently
used resource to be displayed, or \code{NULL};}
\item{\verb{description}}{[character] a UTF-8 encoded string, containing a short description of
the resource, or \code{NULL};}
\item{\verb{mimeType}}{[character] the MIME type of the resource;}
\item{\verb{appName}}{[character] the name of the application that is registering this recently
used resource;}
\item{\verb{appExec}}{[character] command line used to launch this resource; may contain the
"\%f" and "\%u" escape characters which will be expanded
to the resource file path and URI respectively when the command line
is retrieved;}
\item{\verb{groups}}{[character] a vector of strings containing groups names;}
\item{\verb{isPrivate}}{[logical] whether this resource should be displayed only by the
applications that have registered it or not.}
}

}
}}
\section{Convenient Construction}{\code{gtkRecentManager} is the equivalent of \code{\link{gtkRecentManagerNew}}.}
\section{Enums and Flags}{\describe{\item{\verb{GtkRecentManagerError}}{
Error codes for GtkRecentManager operations

\describe{
\item{\verb{not-found}}{the URI specified does not exists in
  the recently used resources list.}
\item{\verb{invalid-uri}}{the URI specified is not valid.}
\item{\verb{invalid-encoding}}{the supplied string is not
  UTF-8 encoded.}
\item{\verb{not-registered}}{no application has registered
  the specified item.}
\item{\verb{read}}{failure while reading the recently used
  resources file.}
\item{\verb{write}}{failure while writing the recently used
  resources file.}
\item{\verb{unknown}}{unspecified error.}
}

}}}
\section{Signals}{\describe{\item{\code{changed(recent.manager, user.data)}}{
Emitted when the current recently used resources manager changes its
contents.
  Since 2.10

\describe{
\item{\code{recent.manager}}{the recent manager}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}}}
\section{Properties}{\describe{
\item{\verb{filename} [character : *                : Read / Write / Construct Only]}{

The full path to the file to be used to store and read the recently
used resources list
  Default value: NULL  Since 2.10

}
\item{\verb{limit} [integer : Read / Write]}{

The maximum number of items to be returned by the
\code{\link{gtkRecentManagerGetItems}} function.
  Allowed values: >= -1  Default value: -1  Since 2.10

}
\item{\verb{size} [integer : Read]}{

The size of the recently used resources list.
  Allowed values: >= -1  Default value: 0  Since 2.10

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkRecentManager.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
