\alias{GFileInfo}
\alias{GFileAttributeMatcher}
\alias{gFileInfo}
\alias{GFileType}
\name{GFileInfo}
\title{GFileInfo}
\description{File Information and Attributes}
\section{Methods and Functions}{
\code{\link{gFileInfoNew}()}\cr
\code{\link{gFileInfoDup}(object)}\cr
\code{\link{gFileInfoCopyInto}(object, dest.info)}\cr
\code{\link{gFileInfoHasAttribute}(object, attribute)}\cr
\code{\link{gFileInfoHasNamespace}(object, name.space)}\cr
\code{\link{gFileInfoListAttributes}(object, name.space)}\cr
\code{\link{gFileInfoGetAttributeType}(object, attribute)}\cr
\code{\link{gFileInfoRemoveAttribute}(object, attribute)}\cr
\code{\link{gFileInfoGetAttributeAsString}(object, attribute)}\cr
\code{\link{gFileInfoGetAttributeData}(object, attribute, type, status)}\cr
\code{\link{gFileInfoGetAttributeStatus}(object, attribute)}\cr
\code{\link{gFileInfoGetAttributeString}(object, attribute)}\cr
\code{\link{gFileInfoGetAttributeStringv}(object, attribute)}\cr
\code{\link{gFileInfoGetAttributeByteString}(object, attribute)}\cr
\code{\link{gFileInfoGetAttributeBoolean}(object, attribute)}\cr
\code{\link{gFileInfoGetAttributeUint32}(object, attribute)}\cr
\code{\link{gFileInfoGetAttributeInt32}(object, attribute)}\cr
\code{\link{gFileInfoGetAttributeUint64}(object, attribute)}\cr
\code{\link{gFileInfoGetAttributeInt64}(object, attribute)}\cr
\code{\link{gFileInfoGetAttributeObject}(object, attribute)}\cr
\code{\link{gFileInfoSetAttribute}(object, attribute, type, value.p)}\cr
\code{\link{gFileInfoSetAttributeStatus}(object, attribute, status)}\cr
\code{\link{gFileInfoSetAttributeString}(object, attribute, attr.value)}\cr
\code{\link{gFileInfoSetAttributeStringv}(object, attribute, attr.value)}\cr
\code{\link{gFileInfoSetAttributeByteString}(object, attribute, attr.value)}\cr
\code{\link{gFileInfoSetAttributeBoolean}(object, attribute, attr.value)}\cr
\code{\link{gFileInfoSetAttributeUint32}(object, attribute, attr.value)}\cr
\code{\link{gFileInfoSetAttributeInt32}(object, attribute, attr.value)}\cr
\code{\link{gFileInfoSetAttributeUint64}(object, attribute, attr.value)}\cr
\code{\link{gFileInfoSetAttributeInt64}(object, attribute, attr.value)}\cr
\code{\link{gFileInfoSetAttributeObject}(object, attribute, attr.value)}\cr
\code{\link{gFileInfoClearStatus}(object)}\cr
\code{\link{gFileInfoGetFileType}(object)}\cr
\code{\link{gFileInfoGetIsHidden}(object)}\cr
\code{\link{gFileInfoGetIsBackup}(object)}\cr
\code{\link{gFileInfoGetIsSymlink}(object)}\cr
\code{\link{gFileInfoGetName}(object)}\cr
\code{\link{gFileInfoGetDisplayName}(object)}\cr
\code{\link{gFileInfoGetEditName}(object)}\cr
\code{\link{gFileInfoGetIcon}(object)}\cr
\code{\link{gFileInfoGetContentType}(object)}\cr
\code{\link{gFileInfoGetSize}(object)}\cr
\code{\link{gFileInfoGetModificationTime}(object, result)}\cr
\code{\link{gFileInfoGetSymlinkTarget}(object)}\cr
\code{\link{gFileInfoGetEtag}(object)}\cr
\code{\link{gFileInfoGetSortOrder}(object)}\cr
\code{\link{gFileInfoSetAttributeMask}(object, mask)}\cr
\code{\link{gFileInfoUnsetAttributeMask}(object)}\cr
\code{\link{gFileInfoSetFileType}(object, type)}\cr
\code{\link{gFileInfoSetIsHidden}(object, is.hidden)}\cr
\code{\link{gFileInfoSetIsSymlink}(object, is.symlink)}\cr
\code{\link{gFileInfoSetName}(object, name)}\cr
\code{\link{gFileInfoSetDisplayName}(object, display.name)}\cr
\code{\link{gFileInfoSetEditName}(object, edit.name)}\cr
\code{\link{gFileInfoSetIcon}(object, icon)}\cr
\code{\link{gFileInfoSetContentType}(object, content.type)}\cr
\code{\link{gFileInfoSetSize}(object, size)}\cr
\code{\link{gFileInfoSetModificationTime}(object, mtime)}\cr
\code{\link{gFileInfoSetSymlinkTarget}(object, symlink.target)}\cr
\code{\link{gFileInfoSetSortOrder}(object, sort.order)}\cr
\code{\link{gFileAttributeMatcherNew}(attributes)}\cr
\code{\link{gFileAttributeMatcherMatches}(object, attribute)}\cr
\code{\link{gFileAttributeMatcherMatchesOnly}(object, attribute)}\cr
\code{\link{gFileAttributeMatcherEnumerateNamespace}(object, ns)}\cr
\code{\link{gFileAttributeMatcherEnumerateNext}(object)}\cr
\code{gFileInfo()}
}
\section{Hierarchy}{\preformatted{
GEnum
   +----GFileType
GObject
   +----GFileInfo
}}
\section{Detailed Description}{Functionality for manipulating basic metadata for files. \code{\link{GFileInfo}}
implements methods for getting information that all files should 
contain, and allows for manipulation of extended attributes. 
  
See GFileAttribute for more
information on how GIO handles file attributes.
  
To obtain a \code{\link{GFileInfo}} for a \code{\link{GFile}}, use \code{\link{gFileQueryInfo}} (or its 
async variant). To obtain a \code{\link{GFileInfo}} for a file input or output 
stream, use \code{\link{gFileInputStreamQueryInfo}} or 
\code{\link{gFileOutputStreamQueryInfo}} (or their async variants).
  
To change the actual attributes of a file, you should then set the 
attribute in the \code{\link{GFileInfo}} and call \code{\link{gFileSetAttributesFromInfo}} 
or \code{\link{gFileSetAttributesAsync}} on a GFile.
  
However, not all attributes can be changed in the file. For instance, 
the actual size of a file cannot be changed via \code{\link{gFileInfoSetSize}}. 
You may call \code{\link{gFileQuerySettableAttributes}} and 
\code{\link{gFileQueryWritableNamespaces}} to discover the settable attributes 
of a particular file at runtime.
  \code{\link{GFileAttributeMatcher}} allows for searching through a \code{\link{GFileInfo}} for 
attributes.}
\section{Structures}{\describe{
\item{\verb{GFileAttributeMatcher}}{
Determines if a string matches a file attribute.

}
\item{\verb{GFileInfo}}{
Stores information about a file system object referenced by a \code{\link{GFile}}.

}
}}
\section{Convenient Construction}{\code{gFileInfo} is the equivalent of \code{\link{gFileInfoNew}}.}
\section{Enums and Flags}{\describe{\item{\verb{GFileType}}{
Indicates the file's on-disk type.

\describe{
\item{\verb{unknown}}{File's type is unknown.}
\item{\verb{regular}}{File handle represents a regular file.}
\item{\verb{directory}}{File handle represents a directory.}
\item{\verb{symbolic-link}}{File handle represents a symbolic link
   (Unix systems).}
\item{\verb{special}}{File is a "special" file, such as a socket, fifo,
   block device, or character device.}
\item{\verb{shortcut}}{File is a shortcut (Windows systems).}
\item{\verb{mountable}}{File is a mountable location.}
}

}}}
\references{\url{https://developer-old.gnome.org/gio/stable/GFileInfo.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
