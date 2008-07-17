\alias{gtkTreeViewColumnNewWithAttributes}
\name{gtkTreeViewColumnNewWithAttributes}
\title{gtkTreeViewColumnNewWithAttributes}
\description{Creates a new \code{\link{GtkTreeViewColumn}} with a number of default values.  This is
equivalent to calling \code{\link{gtkTreeViewColumnSetTitle}},
\code{\link{gtkTreeViewColumnPackStart}}, and
\code{\link{gtkTreeViewColumnSetAttributes}} on the newly created \code{\link{GtkTreeViewColumn}}.}
\usage{gtkTreeViewColumnNewWithAttributes(title, cell, ...)}
\arguments{
\item{\code{title}}{[character]  The title to set the header to.}
\item{\code{cell}}{[\code{\link{GtkCellRenderer}}]  The \code{\link{GtkCellRenderer}}.}
\item{\code{...}}{ A list of attributes.}
}
\details{Here's a simple example:
\preformatted{
renderer <- gtkCellRendererText()
column <- gtkTreeViewColumn("Title", renderer, "text" = TEXT_COLUMN,
                            "foreground" = COLOR_COLUMN)
}  }
\value{[\code{\link{GtkTreeViewColumn}}]  A newly created \code{\link{GtkTreeViewColumn}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
