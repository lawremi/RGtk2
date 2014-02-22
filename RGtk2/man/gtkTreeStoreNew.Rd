\alias{gtkTreeStoreNew}
\name{gtkTreeStoreNew}
\title{gtkTreeStoreNew}
\description{Creates a new tree store as with \code{n.columns} columns each of the types passed
in.  Note that only types derived from standard GObject fundamental types 
are supported. }
\usage{gtkTreeStoreNew(...)}
\arguments{\item{\verb{...}}{a new \code{\link{GtkTreeStore}}}}
\details{As an example, \code{gtk_tree_store_new (3, G_TYPE_INT, G_TYPE_STRING,
GDK_TYPE_PIXBUF);} will create a new \code{\link{GtkTreeStore}} with three columns, of type
\verb{integer}, \verb{string} and \code{\link{GdkPixbuf}} respectively.}
\value{[\code{\link{GtkTreeStore}}] a new \code{\link{GtkTreeStore}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
