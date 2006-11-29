\alias{GtkLinkButton}
\alias{gtkLinkButton}
\alias{GtkLinkButtonUriFunc}
\name{GtkLinkButton}
\title{GtkLinkButton}
\description{Create buttons bound to a URL}
\section{Methods and Functions}{
\code{\link{gtkLinkButtonNew}(uri)}\cr
\code{\link{gtkLinkButtonNewWithLabel}(uri, label = NULL, show = TRUE)}\cr
\code{\link{gtkLinkButtonGetUri}(object)}\cr
\code{\link{gtkLinkButtonSetUri}(object, uri)}\cr
\code{\link{gtkLinkButtonSetUriHook}(func, data)}\cr
\code{gtkLinkButton(uri, label = NULL, show = TRUE)}
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GInitiallyUnowned
         +----\link{GtkObject}
               +----\link{GtkWidget}
                     +----\link{GtkContainer}
                           +----\link{GtkBin}
                                 +----\link{GtkButton}
                                       +----GtkLinkButton}}
\section{Interfaces}{GtkLinkButton implements
 AtkImplementorIface.}
\section{Detailed Description}{A \code{\link{GtkLinkButton}} is a \code{\link{GtkButton}} with a hyperlink, similar to the one
used by web browsers, which triggers an action when clicked. It is useful
to show quick links to resources.
  
A link button is created by calling either \code{\link{gtkLinkButtonNew}} or
\code{\link{gtkLinkButtonNewWithLabel}}. If using the former, the URI you pass
to the constructor is used as a label for the widget.
  
The URI bound to a \code{\link{GtkLinkButton}} can be set specifically using
\code{\link{gtkLinkButtonSetUri}}, and retrieved using \code{\link{gtkLinkButtonGetUri}}.
  
\code{\link{GtkLinkButton}} offers a global hook, which is called when the used clicks
on it: see \code{\link{gtkLinkButtonSetUriHook}}.
  
\code{\link{GtkLinkButton}} was added in GTK+ 2.10.}
\section{Structures}{\describe{\item{\code{GtkLinkButton}}{
The \code{\link{GtkLinkButton}} struct contains private data only, and should be
manipulated using the functions below.

}}}
\section{Convenient Construction}{\code{gtkLinkButton} is the equivalent of \code{\link{gtkLinkButtonNewWithLabel}}.}
\section{User Functions}{\describe{\item{\code{GtkLinkButtonUriFunc(button, link, user.data)}}{
The type of a function which is called when the \code{\link{GtkLinkButton}} is
clicked.

\describe{
\item{\code{button}}{[\code{\link{GtkLinkButton}}] the \code{\link{GtkLinkButton}} which was clicked}
\item{\code{link}}{[character] the URI to which the clicked \code{\link{GtkLinkButton}} points}
\item{\code{user.data}}{[R object] }
}

}}}
\section{Properties}{\describe{\item{\code{uri} [character : Read / Write]}{

The URI bound to this button.  

  Default value: "http://www.gtk.org"  Since  2.10

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkLinkButton.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\seealso{\code{\link{GtkButton}}}
\keyword{internal}
