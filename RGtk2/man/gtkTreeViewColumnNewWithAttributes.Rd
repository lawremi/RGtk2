\alias{gtkTreeViewColumnNewWithAttributes}
\name{gtkTreeViewColumnNewWithAttributes}
\title{gtkTreeViewColumnNewWithAttributes}
\description{Creates a new \verb{\link{GtkTreeViewColumn}} with a number of default values.  This is
equivalent to calling \code{\link{gtkTreeViewColumnSetTitle}},
\code{\link{gtkTreeViewColumnPackStart}}, and
\code{\link{gtkTreeViewColumnSetAttributes}} on the newly created \verb{\link{GtkTreeViewColumn}}.}
\usage{gtkTreeViewColumnNewWithAttributes(title, cell, ...)}
\arguments{
\item{\verb{title}}{[character]  The title to set the header to.}
\item{\verb{cell}}{[\verb{\link{GtkCellRenderer}}]  The \verb{\link{GtkCellRenderer}}.}
\item{\verb{...}}{ A list of attributes.}
}
\details{Here's a simple example:
\preformatted{
renderer <- gtkCellRendererText()
column <- gtkTreeViewColumn("Title", renderer, "text" = TEXT_COLUMN,
                            "foreground" = COLOR_COLUMN)
}  }
\value{[\verb{\link{GtkTreeViewColumn}}]  A newly created \verb{\link{GtkTreeViewColumn}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
