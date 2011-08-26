\alias{gtkWindowListToplevels}
\name{gtkWindowListToplevels}
\title{gtkWindowListToplevels}
\description{Returns a list of all existing toplevel windows. The widgets
in the list are not individually referenced. If you want
to iterate through the list and perform actions involving
callbacks that might destroy the widgets, you \emph{must} call
\code{g_list_foreach (result, (GFunc)g_object_ref, NULL)} first, and
then unref all the widgets afterwards.}
\usage{gtkWindowListToplevels()}
\value{[list] list of toplevel widgets. \emph{[  \acronym{element-type}   GtkWidget][  \acronym{transfer container}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
