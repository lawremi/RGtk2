\alias{gtkFileChooserGetFiles}
\name{gtkFileChooserGetFiles}
\title{gtkFileChooserGetFiles}
\description{Lists all the selected files and subfolders in the current folder of \code{chooser}
as \code{\link{GFile}}. An internal function, see \code{\link{gtkFileChooserGetUris}}.}
\usage{gtkFileChooserGetFiles(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkFileChooser}}}}
\details{Since 2.14}
\value{[list] a \verb{list} containing a \code{\link{GFile}} for each selected
file and subfolder in the current folder. \emph{[  \acronym{element-type}   utf8][  \acronym{transfer full}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
