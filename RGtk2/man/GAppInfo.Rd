\alias{GAppInfo}
\alias{GAppLaunchContext}
\alias{gAppLaunchContext}
\alias{GAppInfoCreateFlags}
\name{GAppInfo}
\title{GAppInfo}
\description{Application information and launch contexts}
\section{Methods and Functions}{
\code{\link{gAppInfoCreateFromCommandline}(commandline, application.name = NULL, flags = "G_APP_INFO_CREATE_NONE", .errwarn = TRUE)}\cr
\code{\link{gAppInfoDup}(object)}\cr
\code{\link{gAppInfoEqual}(object, appinfo2)}\cr
\code{\link{gAppInfoGetId}(object)}\cr
\code{\link{gAppInfoGetName}(object)}\cr
\code{\link{gAppInfoGetDescription}(object)}\cr
\code{\link{gAppInfoGetExecutable}(object)}\cr
\code{\link{gAppInfoGetCommandline}(object)}\cr
\code{\link{gAppInfoGetIcon}(object)}\cr
\code{\link{gAppInfoLaunch}(object, files, launch.context, .errwarn = TRUE)}\cr
\code{\link{gAppInfoSupportsFiles}(object)}\cr
\code{\link{gAppInfoSupportsUris}(object)}\cr
\code{\link{gAppInfoLaunchUris}(object, uris, launch.context, .errwarn = TRUE)}\cr
\code{\link{gAppInfoShouldShow}(object)}\cr
\code{\link{gAppInfoCanDelete}(object)}\cr
\code{\link{gAppInfoDelete}(object)}\cr
\code{\link{gAppInfoResetTypeAssociations}(content.type)}\cr
\code{\link{gAppInfoSetAsDefaultForType}(object, content.type, .errwarn = TRUE)}\cr
\code{\link{gAppInfoSetAsDefaultForExtension}(object, extension, .errwarn = TRUE)}\cr
\code{\link{gAppInfoAddSupportsType}(object, content.type, .errwarn = TRUE)}\cr
\code{\link{gAppInfoCanRemoveSupportsType}(object)}\cr
\code{\link{gAppInfoRemoveSupportsType}(object, content.type, .errwarn = TRUE)}\cr
\code{\link{gAppInfoGetAll}()}\cr
\code{\link{gAppInfoGetAllForType}(content.type)}\cr
\code{\link{gAppInfoGetDefaultForType}(content.type, must.support.uris)}\cr
\code{\link{gAppInfoGetDefaultForUriScheme}(uri.scheme)}\cr
\code{\link{gAppInfoLaunchDefaultForUri}(uri, launch.context, .errwarn = TRUE)}\cr
\code{\link{gAppLaunchContextGetDisplay}(object, info, files)}\cr
\code{\link{gAppLaunchContextGetStartupNotifyId}(object, info, files)}\cr
\code{\link{gAppLaunchContextLaunchFailed}(object, startup.notify.id)}\cr
\code{\link{gAppLaunchContextNew}()}\cr
\code{gAppLaunchContext()}
}
\section{Hierarchy}{\preformatted{
GFlags
   +----GAppInfoCreateFlags
GInterface
   +----GAppInfo
GObject
   +----GAppLaunchContext
}}
\section{Implementations}{GAppInfo is implemented by
 GDesktopAppInfo.}
\section{Detailed Description}{\code{\link{GAppInfo}} and \code{\link{GAppLaunchContext}} are used for describing and launching 
applications installed on the system.
  
As of GLib 2.20, URIs will always be converted to POSIX paths
(using \code{\link{gFileGetPath}}) when using \code{\link{gAppInfoLaunch}} even if
the application requested an URI and not a POSIX path. For example
for an desktop-file based application with Exec key \code{totem
\%  U} and a single URI,
\code{sftp://foo/file.avi}, then
\code{/home/user/.gvfs/sftp on foo/file.avi} will be
passed. This will only work if a set of suitable GIO extensions
(such as gvfs 2.26 compiled with FUSE support), is available and
operational; if this is not the case, the URI will be passed
unmodified to the application. Some URIs, such as
\code{mailto:}, of course cannot be mapped to a POSIX
path (in gvfs there's no FUSE mount for it); such URIs will be
passed unmodified to the application.
  
Specifically for gvfs 2.26 and later, the POSIX URI will be mapped
back to the GIO URI in the \code{\link{GFile}} constructors (since gvfs
implements the \code{\link{GVfs}} extension point). As such, if the application
needs to examine the URI, it needs to use \code{\link{gFileGetUri}} or
similar on \code{\link{GFile}}. In other words, an application cannot assume
that the URI passed to e.g. \code{\link{gFileNewForCommandlineArg}} is
equal to the result of \code{\link{gFileGetUri}}. The following snippet
illustrates this:
  \preformatted{GFile *f;
char *uri;

file = g_file_new_for_commandline_arg (uri_from_commandline);

uri = g_file_get_uri (file);
strcmp (uri, uri_from_commandline) == 0; // FALSE
g_free (uri);

if (g_file_has_uri_scheme (file, "cdda"))
  {
    // do something special with uri
  }
g_object_unref (file);
}  
This code will work when both \code{cdda://sr0/Track
1.wav} and \code{/home/user/.gvfs/cdda on sr0/Track
1.wav} is passed to the application. It should be noted
that it's generally not safe for applications to rely on the format
of a particular URIs. Different launcher applications (e.g. file
managers) may have different ideas of what a given URI means.}
\section{Structures}{\describe{
\item{\verb{GAppInfo}}{
Information about an installed application and methods to launch
it (with file arguments).

}
\item{\verb{GAppLaunchContext}}{
Integrating the launch with the launching application. This is used to
handle for instance startup notification and launching the new application
on the same screen as the launching window.



}
}}
\section{Convenient Construction}{\code{gAppLaunchContext} is the equivalent of \code{\link{gAppLaunchContextNew}}.}
\section{Enums and Flags}{\describe{\item{\verb{GAppInfoCreateFlags}}{
Flags used when creating a \code{\link{GAppInfo}}.

\describe{
\item{\verb{one}}{No flags.}
\item{\verb{eeds-terminal}}{Application opens in a terminal window.}
}

}}}
\references{\url{https://developer-old.gnome.org/gio/stable/GAppInfo.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
