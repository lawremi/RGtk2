\alias{gio-GFileAttribute}
\alias{GFileAttributeInfo}
\alias{GFileAttributeInfoList}
\alias{GFileAttributeType}
\alias{GFileAttributeInfoFlags}
\alias{GFileAttributeStatus}
\name{gio-GFileAttribute}
\title{GFileAttribute}
\description{Key-Value Paired File Attributes}
\section{Methods and Functions}{
\code{\link{gFileAttributeInfoListNew}()}\cr
\code{\link{gFileAttributeInfoListLookup}(object, name)}\cr
\code{\link{gFileAttributeInfoListAdd}(object, name, type, flags = "G_FILE_ATTRIBUTE_INFO_NONE")}\cr
}
\section{Hierarchy}{\preformatted{
GEnum
   +----GFileAttributeType
GFlags
   +----GFileAttributeInfoFlags
GEnum
   +----GFileAttributeStatus
}}
\section{Detailed Description}{File attributes in GIO consist of a list of key-value pairs. 
  
Keys are strings that contain a key namespace and a key name, separated
by a colon, e.g. "namespace:keyname". Namespaces are included to sort
key-value pairs by namespaces for relevance. Keys can be retrived 
using wildcards, e.g. "standard::*" will return all of the keys in the 
"standard" namespace.
  
Values are stored within the list in \verb{GFileAttributeValue} structures.
Values can store different types, listed in the enum \code{\link{GFileAttributeType}}.
Upon creation of a \verb{GFileAttributeValue}, the type will be set to 
\code{G_FILE_ATTRIBUTE_TYPE_INVALID}. 
  
The list of possible attributes for a filesystem (pointed to by a \code{\link{GFile}}) is
availible as a \code{\link{GFileAttributeInfoList}}. This list is queryable by key names 
as indicated earlier.
  
Classes that implement \verb{GFileIface} will create a \code{\link{GFileAttributeInfoList}} and 
install default keys and values for their given file system, architecture, 
and other possible implementation details (e.g., on a UNIX system, a file 
attribute key will be registered for the user id for a given file).
  \tabular{ll}{
"standard" \tab The "Standard" namespace. General file
information that any application may need should be put in this namespace. 
Examples include the file's name, type, and size. \cr
"etag" \tab The   "Entity Tag"   
namespace. Currently, the only key in this namespace is "value", which contains 
the value of the current entity tag. \cr
"id" \tab The "Identification" namespace. This 
namespace is used by file managers and applications that list directories
to check for loops and to uniquely identify files. \cr
"access" \tab The "Access" namespace. Used to check
if a user has the proper privilidges to access files and perform
file operations. Keys in this namespace are made to be generic 
and easily understood, e.g. the "can_read" key is   \code{TRUE}   if 
the current user has permission to read the file. UNIX permissions and
NTFS ACLs in Windows should be mapped to these values. \cr
"mountable" \tab The "Mountable" namespace. Includes 
simple boolean keys for checking if a file or path supports mount operations, e.g.
mount, unmount, eject. These are used for files of type   \code{G_FILE_TYPE_MOUNTABLE}  . \cr
"time" \tab The "Time" namespace. Includes file 
access, changed, created times.  \cr
"unix" \tab The "Unix" namespace. Includes UNIX-specific
information and may not be available for all files. Examples include 
the UNIX "UID", "GID", etc. \cr
"dos" \tab The "DOS" namespace. Includes DOS-specific 
information and may not be available for all files. Examples include
"is_system" for checking if a file is marked as a system file, and "is_archive"
for checking if a file is marked as an archive file. \cr
"owner" \tab The "Owner" namespace. Includes information
about who owns a file. May not be available for all file systems. Examples include
"user" for getting the user name of the file owner. This information is often mapped from
some backend specific data such as a unix UID. \cr
"thumbnail" \tab The "Thumbnail" namespace. Includes 
information about file thumbnails and their location within the file system. Exaples of 
keys in this namespace include "path" to get the location of a thumbnail, and "failed"
to check if thumbnailing of the file failed. \cr
"filesystem" \tab The "Filesystem" namespace. Gets information
about the file system where a file is located, such as its type, how much
space is left available, and the overall size of the file system. \cr
"gvfs" \tab The "GVFS" namespace. Keys in this namespace
contain information about the current GVFS backend in use.  \cr
"xattr" \tab The "xattr" namespace. Gets information 
about extended user attributes. See attr(5). The "user." prefix of the
extended user attribute name is stripped away when constructing keys in
this namespace, e.g. "xattr::mime_type" for the extended attribute with 
the name "user.mime_type". Note that this information is only available
if GLib has been built with extended attribute support. \cr
"xattr-sys" \tab The "xattr-sys" namespace. 
Gets information about extended attributes which are not user-specific. 
See attr(5). Note that this information is only available if GLib
has been built with extended attribute support. \cr
"selinux" \tab The "SELinux" namespace. Includes
information about the SELinux context of files. Note that this information
is only available if GLib has been built with SELinux support. \cr
}  
Please note that these are not all of the possible namespaces.
More namespaces can be added from GIO modules or by individual applications. 
For more information about writing GIO modules, see \code{\link{GIOModule}}.
    \tabular{lll}{
\code{G_FILE_ATTRIBUTE_STANDARD_TYPE} \tab standard::type \tab uint32 (  \code{\link{GFileType}}  ) \cr
\code{G_FILE_ATTRIBUTE_STANDARD_IS_HIDDEN} \tab standard::is-hidden \tab boolean \cr
\code{G_FILE_ATTRIBUTE_STANDARD_IS_BACKUP} \tab standard::is-backup \tab boolean \cr
\code{G_FILE_ATTRIBUTE_STANDARD_IS_SYMLINK} \tab standard::is-symlink \tab boolean \cr
\code{G_FILE_ATTRIBUTE_STANDARD_IS_VIRTUAL} \tab standard::is-virtual \tab boolean \cr
\code{G_FILE_ATTRIBUTE_STANDARD_NAME} \tab standard::name \tab byte string \cr
\code{G_FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME} \tab standard::display-name \tab string \cr
\code{G_FILE_ATTRIBUTE_STANDARD_EDIT_NAME} \tab standard::edit-name \tab string \cr
\code{G_FILE_ATTRIBUTE_STANDARD_ICON} \tab standard::icon \tab object (  \code{\link{GIcon}}  ) \cr
\code{G_FILE_ATTRIBUTE_STANDARD_CONTENT_TYPE} \tab standard::content-type \tab string \cr
\code{G_FILE_ATTRIBUTE_STANDARD_FAST_CONTENT_TYPE} \tab standard::fast-content-type \tab string \cr
\code{G_FILE_ATTRIBUTE_STANDARD_SIZE} \tab standard::size \tab uint64 \cr
\code{G_FILE_ATTRIBUTE_STANDARD_ALLOCATED_SIZE} \tab standard::allocated-size \tab uint64 \cr
\code{G_FILE_ATTRIBUTE_STANDARD_SYMLINK_TARGET} \tab standard::symlink-target \tab byte string \cr
\code{G_FILE_ATTRIBUTE_STANDARD_TARGET_URI} \tab standard::target-uri \tab string \cr
\code{G_FILE_ATTRIBUTE_STANDARD_SORT_ORDER} \tab standard::sort-order \tab int32 \cr
\code{G_FILE_ATTRIBUTE_ETAG_VALUE} \tab etag::value \tab string \cr
\code{G_FILE_ATTRIBUTE_ID_FILE} \tab id::file \tab string \cr
\code{G_FILE_ATTRIBUTE_ID_FILESYSTEM} \tab id::filesystem \tab string \cr
\code{G_FILE_ATTRIBUTE_ACCESS_CAN_READ} \tab access::can-read \tab boolean \cr
\code{G_FILE_ATTRIBUTE_ACCESS_CAN_WRITE} \tab access::can-write \tab boolean \cr
\code{G_FILE_ATTRIBUTE_ACCESS_CAN_EXECUTE} \tab access::can-execute \tab boolean \cr
\code{G_FILE_ATTRIBUTE_ACCESS_CAN_DELETE} \tab access::can-delete \tab boolean \cr
\code{G_FILE_ATTRIBUTE_ACCESS_CAN_TRASH} \tab access::can-trash \tab boolean \cr
\code{G_FILE_ATTRIBUTE_ACCESS_CAN_RENAME} \tab access::can-rename \tab boolean \cr
\code{G_FILE_ATTRIBUTE_MOUNTABLE_CAN_MOUNT} \tab mountable::can-mount \tab boolean \cr
\code{G_FILE_ATTRIBUTE_MOUNTABLE_CAN_UNMOUNT} \tab mountable::can-unmount \tab boolean \cr
\code{G_FILE_ATTRIBUTE_MOUNTABLE_CAN_EJECT} \tab mountable::can-eject \tab boolean \cr
\code{G_FILE_ATTRIBUTE_MOUNTABLE_UNIX_DEVICE} \tab mountable::unix-device \tab uint32 \cr
\code{G_FILE_ATTRIBUTE_MOUNTABLE_UNIX_DEVICE_FILE} \tab mountable::unix-device-file \tab string \cr
\code{G_FILE_ATTRIBUTE_MOUNTABLE_HAL_UDI} \tab mountable::hal-udi \tab string \cr
\code{G_FILE_ATTRIBUTE_TIME_MODIFIED} \tab time::modified \tab uint64 \cr
\code{G_FILE_ATTRIBUTE_TIME_MODIFIED_USEC} \tab time::modified-usec \tab uint32 \cr
\code{G_FILE_ATTRIBUTE_TIME_ACCESS} \tab time::access \tab uint64 \cr
\code{G_FILE_ATTRIBUTE_TIME_ACCESS_USEC} \tab time::access-usec \tab uint32 \cr
\code{G_FILE_ATTRIBUTE_TIME_CHANGED} \tab time::changed \tab uint64 \cr
\code{G_FILE_ATTRIBUTE_TIME_CHANGED_USEC} \tab time::changed-usec \tab uint32 \cr
\code{G_FILE_ATTRIBUTE_TIME_CREATED} \tab time::created \tab uint64 \cr
\code{G_FILE_ATTRIBUTE_TIME_CREATED_USEC} \tab time::created-usec \tab uint32 \cr
\code{G_FILE_ATTRIBUTE_UNIX_DEVICE} \tab unix::device \tab uint32 \cr
\code{G_FILE_ATTRIBUTE_UNIX_INODE} \tab unix::inode \tab uint64 \cr
\code{G_FILE_ATTRIBUTE_UNIX_MODE} \tab unix::mode \tab uint32 \cr
\code{G_FILE_ATTRIBUTE_UNIX_NLINK} \tab unix::nlink \tab uint32 \cr
\code{G_FILE_ATTRIBUTE_UNIX_UID} \tab unix::uid \tab uint32 \cr
\code{G_FILE_ATTRIBUTE_UNIX_GID} \tab unix::gid \tab uint32 \cr
\code{G_FILE_ATTRIBUTE_UNIX_RDEV} \tab unix::rdev \tab uint32 \cr
\code{G_FILE_ATTRIBUTE_UNIX_BLOCK_SIZE} \tab unix::block-size \tab uint32 \cr
\code{G_FILE_ATTRIBUTE_UNIX_BLOCKS} \tab unix::blocks \tab uint64 \cr
\code{G_FILE_ATTRIBUTE_UNIX_IS_MOUNTPOINT} \tab unix::is-mountpoint \tab boolean \cr
\code{G_FILE_ATTRIBUTE_DOS_IS_ARCHIVE} \tab dos::is-archive \tab boolean \cr
\code{G_FILE_ATTRIBUTE_DOS_IS_SYSTEM} \tab dos::is-system \tab boolean \cr
\code{G_FILE_ATTRIBUTE_OWNER_USER} \tab owner::user \tab string \cr
\code{G_FILE_ATTRIBUTE_OWNER_USER_REAL} \tab owner::user-real \tab string \cr
\code{G_FILE_ATTRIBUTE_OWNER_GROUP} \tab owner::group \tab string \cr
\code{G_FILE_ATTRIBUTE_THUMBNAIL_PATH} \tab thumbnail::path \tab bytestring \cr
\code{G_FILE_ATTRIBUTE_THUMBNAILING_FAILED} \tab thumbnail::failed \tab boolean \cr
\code{G_FILE_ATTRIBUTE_PREVIEW_ICON} \tab preview::icon \tab object (  \code{\link{GIcon}}  ) \cr
\code{G_FILE_ATTRIBUTE_FILESYSTEM_SIZE} \tab filesystem::size \tab uint64 \cr
\code{G_FILE_ATTRIBUTE_FILESYSTEM_FREE} \tab filesystem::free \tab uint64 \cr
\code{G_FILE_ATTRIBUTE_FILESYSTEM_TYPE} \tab filesystem::type \tab string \cr
\code{G_FILE_ATTRIBUTE_FILESYSTEM_READONLY} \tab filesystem::readonly \tab boolean \cr
\code{G_FILE_ATTRIBUTE_GVFS_BACKEND} \tab gvfs::backend \tab string \cr
\code{G_FILE_ATTRIBUTE_SELINUX_CONTEXT} \tab selinux::context \tab string \cr
}
 
Note that there are no predefined keys in the "xattr" and "xattr-sys" 
namespaces. Keys for the "xattr" namespace are constructed by stripping
away the "user." prefix from the extended user attribute, and prepending
"xattr::". Keys for the "xattr-sys" namespace are constructed by 
concatenating "xattr-sys::" with the extended attribute name. All extended
attribute values are returned as hex-encoded strings in which bytes outside
the ASCII range are encoded as hexadecimal escape sequences of the form
\\x\\var{nn}.}
\section{Structures}{\describe{
\item{\verb{GFileAttributeInfo}}{
Information about a specific attribute.
\strong{\verb{GFileAttributeInfo} is a \link{transparent-type}.}

\describe{
\item{\verb{name}}{[char] the name of the attribute.}
\item{\verb{type}}{[\code{\link{GFileAttributeType}}] the \code{\link{GFileAttributeType}} type of the attribute.}
\item{\verb{flags}}{[\code{\link{GFileAttributeInfoFlags}}] a set of \code{\link{GFileAttributeInfoFlags}}.}
}

}
\item{\verb{GFileAttributeInfoList}}{
Acts as a lightweight registry for possible valid file attributes.
The registry stores Key-Value pair formats as \code{\link{GFileAttributeInfo}}s.

\describe{
\item{\verb{infos}}{[\code{\link{GFileAttributeInfo}}] a list of \code{\link{GFileAttributeInfo}}s.}
\item{\verb{nInfos}}{[integer] the number of values in the list.}
}

}
}}
\section{Enums and Flags}{\describe{
\item{\verb{GFileAttributeType}}{
The data types for file attributes.

\describe{
\item{\verb{invalid}}{indicates an invalid or uninitalized type.}
\item{\verb{string}}{a null terminated UTF8 string.}
\item{\verb{byte-string}}{a zero terminated string of non-zero bytes.}
\item{\verb{boolean}}{a boolean value.}
\item{\verb{uint32}}{an unsigned 4-byte/32-bit integer.}
\item{\verb{int32}}{a signed 4-byte/32-bit integer.}
\item{\verb{uint64}}{an unsigned 8-byte/64-bit integer.}
\item{\verb{int64}}{a signed 8-byte/64-bit integer.}
\item{\verb{object}}{a \code{\link{GObject}}.}
}

}
\item{\verb{GFileAttributeInfoFlags}}{
Flags specifying the behaviour of an attribute.

\describe{
\item{\verb{none}}{no flags set.}
\item{\verb{copy-with-file}}{copy the attribute values when the file is copied.}
\item{\verb{copy-when-moved}}{copy the attribute values when the file is moved.}
}

}
\item{\verb{GFileAttributeStatus}}{
Used by \code{\link{gFileSetAttributesFromInfo}} when setting file attributes.

\describe{
\item{\verb{unset}}{Attribute value is unset (empty).}
\item{\verb{set}}{Attribute value is set.}
\item{\verb{error-setting}}{Indicates an error in setting the value.}
}

}
}}
\references{\url{https://developer-old.gnome.org/gio/stable/gio-GFileAttribute.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
