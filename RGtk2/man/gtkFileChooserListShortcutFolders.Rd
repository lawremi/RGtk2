\alias{gtkFileChooserListShortcutFolders}
\name{gtkFileChooserListShortcutFolders}
\title{gtkFileChooserListShortcutFolders}
\description{Queries the list of shortcut folders in the file chooser, as set by
\code{\link{gtkFileChooserAddShortcutFolder}}.}
\usage{gtkFileChooserListShortcutFolders(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkFileChooser}}}}
\details{Since 2.4}
\value{[list]  A list of folder filenames, or \code{NULL} if there are no shortcut
folders. \emph{[  \acronym{element-type}   utf8][  \acronym{transfer full}   utf8]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
