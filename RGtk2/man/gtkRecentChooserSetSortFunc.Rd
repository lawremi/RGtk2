\alias{gtkRecentChooserSetSortFunc}
\name{gtkRecentChooserSetSortFunc}
\title{gtkRecentChooserSetSortFunc}
\description{Sets the comparison function used when sorting to be \code{sort.func}.  If
the \code{chooser} has the sort type set to \verb{GTK_RECENT_SORT_CUSTOM} then
the chooser will sort using this function.}
\usage{gtkRecentChooserSetSortFunc(object, sort.func, sort.data)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkRecentChooser}}}
\item{\verb{sort.func}}{the comparison function}
\item{\verb{sort.data}}{user data to pass to \code{sort.func}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\details{To the comparison function will be passed two \code{\link{GtkRecentInfo}} structs and
\code{sort.data};  \code{sort.func} should return a positive integer if the first
item comes before the second, zero if the two items are equal and
a negative integer if the first item comes after the second.
  Since 2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
