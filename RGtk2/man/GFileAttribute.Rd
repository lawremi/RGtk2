\name{GFileAttribute}

\alias{GFileAttributeAccess}
\alias{GFileAttributeDos}
\alias{GFileAttributeEtag}
\alias{GFileAttributeFilesystem}
\alias{GFileAttributeGvfs}
\alias{GFileAttributeId}
\alias{GFileAttributeMountable}
\alias{GFileAttributeOwner}
\alias{GFileAttributePreview}
\alias{GFileAttributeStandard}
\alias{GFileAttributeThumbnail}
\alias{GFileAttributeTime}
\alias{GFileAttributeTrash}
\alias{GFileAttributeUnix}

\title{File attribute keys}

\description{
  File attributes in GIO consist of a list of key-value pairs, organized
  by namespace. Each of the \code{GFileAttribute*} objects is a
  character vector of keys belonging to the same namespace. For example,
  \code{GFileAttributeStandard["name"]} returns the key for the file
  name in the standard namespace. See \link{gio-GFileAttribute} for more
  information.
}

\author{Michael Lawrence}
\keyword{internal}
