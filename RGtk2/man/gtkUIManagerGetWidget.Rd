\alias{gtkUIManagerGetWidget}
\name{gtkUIManagerGetWidget}
\title{gtkUIManagerGetWidget}
\description{Looks up a widget by following a path. 
The path consists of the names specified in the XML description of the UI. 
separated by '/'. Elements which don't have a name or action attribute in 
the XML (e.g. <popup>) can be addressed by their XML element name 
(e.g. "popup"). The root element ("/ui") can be omitted in the path.}
\usage{gtkUIManagerGetWidget(object, path)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkUIManager}}}
\item{\verb{path}}{a path}
}
\details{Note that the widget found by following a path that ends in a <menu>
element is the menuitem to which the menu is attached, not the menu itself.
  
Also note that the widgets constructed by a ui manager are not tied to 
the lifecycle of the ui manager. If you add the widgets returned by this 
function to some container or explicitly ref them, they will survive the
destruction of the ui manager.
  Since 2.4}
\value{[\code{\link{GtkWidget}}] the widget found by following the path, or \code{NULL} if no widget
was found. \emph{[  \acronym{transfer none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
