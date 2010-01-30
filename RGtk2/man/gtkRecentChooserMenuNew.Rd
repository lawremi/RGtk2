\alias{gtkRecentChooserMenuNew}
\name{gtkRecentChooserMenuNew}
\title{gtkRecentChooserMenuNew}
\description{Creates a new \verb{\link{GtkRecentChooserMenu}} widget.}
\usage{gtkRecentChooserMenuNew()}
\details{This kind of widget shows the list of recently used resources as
a menu, each item as a menu item.  Each item inside the menu might
have an icon, representing its MIME type, and a number, for mnemonic
access.
  
This widget implements the \verb{\link{GtkRecentChooser}} interface.
  
This widget creates its own \verb{\link{GtkRecentManager}} object.  See the
\code{\link{gtkRecentChooserMenuNewForManager}} function to know how to create
a \verb{\link{GtkRecentChooserMenu}} widget bound to another \verb{\link{GtkRecentManager}} object.  

  Since  2.10}
\value{[\verb{\link{GtkWidget}}]  a new \verb{\link{GtkRecentChooserMenu}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
