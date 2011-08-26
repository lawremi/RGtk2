\alias{gtkFileChooserListShortcutFolderUris}
\name{gtkFileChooserListShortcutFolderUris}
\title{gtkFileChooserListShortcutFolderUris}
\description{Queries the list of shortcut folders in the file chooser, as set by
\code{\link{gtkFileChooserAddShortcutFolderUri}}.}
\usage{gtkFileChooserListShortcutFolderUris(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkFileChooser}}}}
\details{Since 2.4}
\value{[list] A list of folder URIs, or \code{NULL} if there are no shortcut
folders. \emph{[  \acronym{element-type}   utf8][  \acronym{transfer full}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
