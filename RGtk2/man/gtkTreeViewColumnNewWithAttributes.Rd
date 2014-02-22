\alias{gtkTreeViewColumnNewWithAttributes}
\name{gtkTreeViewColumnNewWithAttributes}
\title{gtkTreeViewColumnNewWithAttributes}
\description{Creates a new \code{\link{GtkTreeViewColumn}} with a number of default values.  This is
equivalent to calling \code{\link{gtkTreeViewColumnSetTitle}},
\code{\link{gtkTreeViewColumnPackStart}}, and
\code{\link{gtkTreeViewColumnSetAttributes}} on the newly created \code{\link{GtkTreeViewColumn}}.}
\usage{gtkTreeViewColumnNewWithAttributes(title, cell, ...)}
\arguments{
\item{\verb{title}}{The title to set the header to.}
\item{\verb{cell}}{The \code{\link{GtkCellRenderer}}.}
\item{\verb{...}}{A newly created \code{\link{GtkTreeViewColumn}}.}
}
\details{Here's a simple example:
\preformatted{
renderer <- gtkCellRendererText()
column <- gtkTreeViewColumn("Title", renderer, "text" = TEXT_COLUMN,
                            "foreground" = COLOR_COLUMN)
}}
\value{[\code{\link{GtkTreeViewColumn}}] A newly created \code{\link{GtkTreeViewColumn}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
