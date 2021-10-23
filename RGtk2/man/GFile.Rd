\alias{GFile}
\alias{GFileProgressCallback}
\alias{GFileReadMoreCallback}
\alias{GFileQueryInfoFlags}
\alias{GFileCreateFlags}
\alias{GFileCopyFlags}
\alias{GFileMonitorFlags}
\name{GFile}
\title{GFile}
\description{File and Directory Handling}
\section{Methods and Functions}{
\code{\link{gFileNewForPath}(path)}\cr
\code{\link{gFileNewForUri}(uri)}\cr
\code{\link{gFileNewForCommandlineArg}(arg)}\cr
\code{\link{gFileParseName}(parse.name)}\cr
\code{\link{gFileDup}(object)}\cr
\code{\link{gFileHash}(file)}\cr
\code{\link{gFileEqual}(object, file2)}\cr
\code{\link{gFileGetBasename}(object)}\cr
\code{\link{gFileGetPath}(object)}\cr
\code{\link{gFileGetUri}(object)}\cr
\code{\link{gFileGetParseName}(object)}\cr
\code{\link{gFileGetParent}(object)}\cr
\code{\link{gFileGetChild}(object, name)}\cr
\code{\link{gFileGetChildForDisplayName}(object, display.name, .errwarn = TRUE)}\cr
\code{\link{gFileHasPrefix}(object, descendant)}\cr
\code{\link{gFileGetRelativePath}(object, descendant)}\cr
\code{\link{gFileResolveRelativePath}(object, relative.path)}\cr
\code{\link{gFileIsNative}(object)}\cr
\code{\link{gFileHasUriScheme}(object, uri.scheme)}\cr
\code{\link{gFileGetUriScheme}(object)}\cr
\code{\link{gFileRead}(object, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileReadAsync}(object, io.priority = 0, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gFileReadFinish}(object, res, .errwarn = TRUE)}\cr
\code{\link{gFileAppendTo}(object, flags = "G_FILE_CREATE_NONE", cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileCreate}(object, flags = "G_FILE_CREATE_NONE", cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileReplace}(object, etag, make.backup, flags = "G_FILE_CREATE_NONE", cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileAppendToAsync}(object, flags = "G_FILE_CREATE_NONE", io.priority = 0, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gFileAppendToFinish}(object, res, .errwarn = TRUE)}\cr
\code{\link{gFileCreateAsync}(object, flags = "G_FILE_CREATE_NONE", io.priority = 0, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gFileCreateFinish}(object, res, .errwarn = TRUE)}\cr
\code{\link{gFileReplaceAsync}(object, etag, make.backup, flags = "G_FILE_CREATE_NONE", io.priority = 0, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gFileReplaceFinish}(object, res, .errwarn = TRUE)}\cr
\code{\link{gFileQueryInfo}(object, attributes, flags = "G_FILE_QUERY_INFO_NONE", cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileQueryInfoAsync}(object, attributes, flags = "G_FILE_QUERY_INFO_NONE", io.priority = 0, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gFileQueryInfoFinish}(object, res, .errwarn = TRUE)}\cr
\code{\link{gFileQueryExists}(object, cancellable = NULL)}\cr
\code{\link{gFileQueryFileType}(object, flags, cancellable = NULL)}\cr
\code{\link{gFileQueryFilesystemInfo}(object, attributes, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileQueryFilesystemInfoAsync}(object, attributes, io.priority, cancellable, callback, user.data = NULL)}\cr
\code{\link{gFileQueryFilesystemInfoFinish}(object, res, .errwarn = TRUE)}\cr
\code{\link{gFileQueryDefaultHandler}(object, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileFindEnclosingMount}(object, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileFindEnclosingMountAsync}(object, io.priority = 0, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gFileFindEnclosingMountFinish}(object, res, .errwarn = TRUE)}\cr
\code{\link{gFileEnumerateChildren}(object, attributes, flags = "G_FILE_QUERY_INFO_NONE", cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileEnumerateChildrenAsync}(object, attributes, flags = "G_FILE_QUERY_INFO_NONE", io.priority = 0, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gFileEnumerateChildrenFinish}(object, res, .errwarn = TRUE)}\cr
\code{\link{gFileSetDisplayName}(object, display.name, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileSetDisplayNameAsync}(object, display.name, io.priority = 0, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gFileSetDisplayNameFinish}(object, res, .errwarn = TRUE)}\cr
\code{\link{gFileDelete}(object, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileTrash}(object, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileCopy}(object, destination, flags = "G_FILE_COPY_NONE", cancellable = NULL, progress.callback, progress.callback.data, .errwarn = TRUE)}\cr
\code{\link{gFileCopyAsync}(object, destination, flags = "G_FILE_COPY_NONE", io.priority = 0, cancellable = NULL, progress.callback, progress.callback.data, callback, user.data = NULL)}\cr
\code{\link{gFileCopyFinish}(object, res, .errwarn = TRUE)}\cr
\code{\link{gFileMove}(object, destination, flags = "G_FILE_COPY_NONE", cancellable = NULL, progress.callback, progress.callback.data, .errwarn = TRUE)}\cr
\code{\link{gFileMakeDirectory}(object, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileMakeDirectoryWithParents}(object, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileMakeSymbolicLink}(object, symlink.value, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileQuerySettableAttributes}(object, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileQueryWritableNamespaces}(object, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileSetAttribute}(object, attribute, type, value.p, flags = "G_FILE_QUERY_INFO_NONE", cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileSetAttributesFromInfo}(object, info, flags = "G_FILE_QUERY_INFO_NONE", cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileSetAttributesAsync}(object, info, flags = "G_FILE_QUERY_INFO_NONE", io.priority = 0, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gFileSetAttributesFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gFileSetAttributeString}(object, attribute, value, flags = "G_FILE_QUERY_INFO_NONE", cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileSetAttributeByteString}(object, attribute, value, flags = "G_FILE_QUERY_INFO_NONE", cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileSetAttributeUint32}(object, attribute, value, flags = "G_FILE_QUERY_INFO_NONE", cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileSetAttributeInt32}(object, attribute, value, flags = "G_FILE_QUERY_INFO_NONE", cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileSetAttributeUint64}(object, attribute, value, flags = "G_FILE_QUERY_INFO_NONE", cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileSetAttributeInt64}(object, attribute, value, flags = "G_FILE_QUERY_INFO_NONE", cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileMountMountable}(object, flags, mount.operation, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gFileMountMountableFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gFileUnmountMountable}(object, flags = "G_MOUNT_UNMOUNT_NONE", cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gFileUnmountMountableFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gFileUnmountMountableWithOperation}(object, flags, mount.operation, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gFileUnmountMountableWithOperationFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gFileEjectMountable}(object, flags = "G_MOUNT_UNMOUNT_NONE", cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gFileEjectMountableFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gFileEjectMountableWithOperation}(object, flags, mount.operation, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gFileEjectMountableWithOperationFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gFileStartMountable}(object, flags, start.operation, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gFileStartMountableFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gFileStopMountable}(object, flags, mount.operation, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gFileStopMountableFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gFilePollMountable}(object, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gFilePollMountableFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gFileMountEnclosingVolume}(object, flags, mount.operation, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gFileMountEnclosingVolumeFinish}(object, result, .errwarn = TRUE)}\cr
\code{\link{gFileMonitorDirectory}(object, flags = "G_FILE_MONITOR_NONE", cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileMonitorFile}(object, flags = "G_FILE_MONITOR_NONE", cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileMonitor}(object, flags = "G_FILE_MONITOR_NONE", cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileLoadContents}(object, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileLoadContentsAsync}(object, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gFileLoadContentsFinish}(object, res, .errwarn = TRUE)}\cr
\code{\link{gFileLoadPartialContentsFinish}(object, res, .errwarn = TRUE)}\cr
\code{\link{gFileReplaceContents}(object, contents, length, etag, make.backup, flags = "G_FILE_CREATE_NONE", cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileReplaceContentsAsync}(object, contents, length, etag, make.backup, flags = "G_FILE_CREATE_NONE", cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gFileReplaceContentsFinish}(object, res, .errwarn = TRUE)}\cr
\code{\link{gFileCopyAttributes}(object, destination, flags = "G_FILE_COPY_NONE", cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileCreateReadwrite}(object, flags, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileCreateReadwriteAsync}(object, flags, io.priority, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gFileCreateReadwriteFinish}(object, res, .errwarn = TRUE)}\cr
\code{\link{gFileOpenReadwrite}(object, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileOpenReadwriteAsync}(object, io.priority, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gFileOpenReadwriteFinish}(object, res, .errwarn = TRUE)}\cr
\code{\link{gFileReplaceReadwrite}(object, etag, make.backup, flags, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gFileReplaceReadwriteAsync}(object, etag, make.backup, flags, io.priority, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gFileReplaceReadwriteFinish}(object, res, .errwarn = TRUE)}\cr
\code{\link{gFileSupportsThreadContexts}(object)}\cr
}
\section{Hierarchy}{\preformatted{
GInterface
   +----GFile
GFlags
   +----GFileQueryInfoFlags
GFlags
   +----GFileCreateFlags
GFlags
   +----GFileCopyFlags
GFlags
   +----GFileMonitorFlags
GEnum
   +----GFilesystemPreviewType
}}
\section{Detailed Description}{\code{\link{GFile}} is a high level abstraction for manipulating files on a 
virtual file system. \code{\link{GFile}}s are lightweight, immutable 
objects that do no I/O upon creation. It is necessary to understand that
\code{\link{GFile}} objects do not represent files, merely an identifier for a file. All
file content I/O is implemented as streaming operations (see \code{\link{GInputStream}} and 
\code{\link{GOutputStream}}).
  
To construct a \code{\link{GFile}}, you can use: 
\code{\link{gFileNewForPath}} if you have a path.
\code{\link{gFileNewForUri}} if you have a URI.
\code{\link{gFileNewForCommandlineArg}} for a command line argument.
\code{\link{gFileParseName}} from a utf8 string gotten from \code{\link{gFileGetParseName}}.
  
One way to think of a \code{\link{GFile}} is as an abstraction of a pathname. For normal
files the system pathname is what is stored internally, but as \code{\link{GFile}}s
are extensible it could also be something else that corresponds to a pathname
in a userspace implementation of a filesystem.
  \code{\link{GFile}}s make up hierarchies of directories and files that correspond to the
files on a filesystem. You can move through the file system with \code{\link{GFile}} using
\code{\link{gFileGetParent}} to get an identifier for the parent directory, \code{\link{gFileGetChild}}
to get a child within a directory, \code{\link{gFileResolveRelativePath}} to resolve a relative
path between two \code{\link{GFile}}s. There can be multiple hierarchies, so you may not
end up at the same root if you repeatedly call \code{\link{gFileGetParent}} on two different
files.
  
All \code{\link{GFile}}s have a basename (get with \code{\link{gFileGetBasename}}). These names
are byte strings that are used to identify the file on the filesystem (relative to
its parent directory) and there is no guarantees that they have any particular charset
encoding or even make any sense at all. If you want to use filenames in a user
interface you should use the display name that you can get by requesting the
\code{G_FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME} attribute with \code{\link{gFileQueryInfo}}.
This is guaranteed to be in utf8 and can be used in a user interface. But always
store the real basename or the \code{\link{GFile}} to use to actually access the file, because
there is no way to go from a display name to the actual name.
  
Using \code{\link{GFile}} as an identifier has the same weaknesses as using a path in that
there may be multiple aliases for the same file. For instance, hard or
soft links may cause two different \code{\link{GFile}}s to refer to the same file.
Other possible causes for aliases are: case insensitive filesystems, short
and long names on Fat/NTFS, or bind mounts in Linux. If you want to check if
two \code{\link{GFile}}s point to the same file you can query for the
\code{G_FILE_ATTRIBUTE_ID_FILE} attribute. Note that \code{\link{GFile}} does some trivial
canonicalization of pathnames passed in, so that trivial differences in the
path string used at creation (duplicated slashes, slash at end of path, "."
or ".." path segments, etc) does not create different \code{\link{GFile}}s.
  
Many \code{\link{GFile}} operations have both synchronous and asynchronous versions 
to suit your application. Asynchronous versions of synchronous functions 
simply have \code{async()} appended to their function names. The asynchronous 
I/O functions call a \code{\link{GAsyncReadyCallback}} which is then used to finalize 
the operation, producing a GAsyncResult which is then passed to the 
function's matching \code{finish()} operation. 
  
Some \code{\link{GFile}} operations do not have synchronous analogs, as they may
take a very long time to finish, and blocking may leave an application
unusable. Notable cases include:
\code{\link{gFileMountMountable}} to mount a mountable file.
\code{\link{gFileUnmountMountableWithOperation}} to unmount a mountable file.
\code{\link{gFileEjectMountableWithOperation}} to eject a mountable file.
  
One notable feature of \code{\link{GFile}}s are entity tags, or "etags" for 
short. Entity tags are somewhat like a more abstract version of the 
traditional mtime, and can be used to quickly determine if the file has
been modified from the version on the file system. See the HTTP 1.1 
specification (\url{http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html})
for HTTP Etag headers, which are a very similar concept.}
\section{Structures}{\describe{\item{\verb{GFile}}{
A handle to an object implementing the \verb{GFileIface} interface.
Generally stores a location within the file system. Handles do not
necessarily represent files or directories that currently exist.

}}}
\section{Enums and Flags}{\describe{
\item{\verb{GFileQueryInfoFlags}}{
Flags used when querying a \code{\link{GFileInfo}}.

\describe{
\item{\verb{ne}}{No flags set.}
\item{\verb{follow-symlinks}}{Don't follow symlinks.}
}

}
\item{\verb{GFileCreateFlags}}{
Flags used when an operation may create a file.

\describe{
\item{\verb{none}}{No flags set.}
\item{\verb{private}}{Create a file that can only be
   accessed by the current user.}
}

}
\item{\verb{GFileCopyFlags}}{
Flags used when copying or moving files.

\describe{
\item{\verb{none}}{No flags set.}
\item{\verb{overwrite}}{Overwrite any existing files}
\item{\verb{backup}}{Make a backup of any existing files.}
\item{\verb{nofollow-symlinks}}{Don't follow symlinks.}
\item{\verb{all-metadata}}{Copy all file metadata instead of just default set used for copy (see \code{\link{GFileInfo}}).}
\item{\verb{no-fallback-for-move}}{Don't use copy and delete fallback if native move not supported.}
}

}
\item{\verb{GFileMonitorFlags}}{
Flags used to set what a \code{\link{GFileMonitor}} will watch for.

\describe{
\item{\verb{none}}{No flags set.}
\item{\verb{watch-mounts}}{Watch for mount events.}
}

}
}}
\section{User Functions}{\describe{
\item{\code{GFileProgressCallback(current.num.bytes, total.num.bytes, user.data)}}{
When doing file operations that may take a while, such as moving
a file or copying a file, a progress callback is used to pass how
far along that operation is to the application.

\describe{
\item{\code{current.num.bytes}}{the current number of bytes in the operation.}
\item{\code{total.num.bytes}}{the total number of bytes in the operation.}
\item{\code{user.data}}{user data passed to the callback.}
}


}
\item{\code{GFileReadMoreCallback(file.contents, file.size, callback.data)}}{
When loading the partial contents of a file with \code{gFileLoadPartialContentsAsync()},
it may become necessary to determine if any more data from the file should be loaded.
A \code{\link{GFileReadMoreCallback}} function facilitates this by returning \code{TRUE} if more data
should be read, or \code{FALSE} otherwise.

\describe{
\item{\code{file.contents}}{the data as currently read.}
\item{\code{file.size}}{the size of the data currently read.}
\item{\code{callback.data}}{data passed to the callback.}
}

\emph{Returns:} [logical] \code{TRUE} if more data should be read back. \code{FALSE} otherwise.

}
}}
\references{\url{https://developer-old.gnome.org/gio/stable/GFile.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
