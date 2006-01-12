\alias{gtkActionGroupSetTranslationDomain}
\name{gtkActionGroupSetTranslationDomain}
\title{gtkActionGroupSetTranslationDomain}
\description{Sets the translation domain and uses \code{dgettext()} for translating the 
\code{label} and \code{tooltip} of \code{\link{GtkActionEntry}}s added by 
\code{\link{gtkActionGroupAddActions}}.}
\usage{gtkActionGroupSetTranslationDomain(object, domain)}
\arguments{
\item{\code{object}}{[\code{\link{GtkActionGroup}}]  a \code{\link{GtkActionGroup}}}
\item{\code{domain}}{[character]  the translation domain to use for \code{dgettext()} calls}
}
\details{If you're not using \code{gettext()} for localization, see 
\code{\link{gtkActionGroupSetTranslateFunc}}.  

  Since  2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
