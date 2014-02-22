\alias{gtkListStoreNew}
\name{gtkListStoreNew}
\title{gtkListStoreNew}
\description{Creates a new list store as with \code{n.columns} columns each of the types passed
in.  Note that only types derived from standard GObject fundamental types 
are supported. }
\usage{gtkListStoreNew(...)}
\arguments{\item{\verb{...}}{a new \code{\link{GtkListStore}}}}
\details{As an example, \code{gtk_tree_store_new (3, G_TYPE_INT, G_TYPE_STRING,
GDK_TYPE_PIXBUF);} will create a new \code{\link{GtkListStore}} with three columns, of type
int, string and \code{\link{GdkPixbuf}} respectively.}
\value{[\code{\link{GtkListStore}}] a new \code{\link{GtkListStore}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
