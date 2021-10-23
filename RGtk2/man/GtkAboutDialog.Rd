\alias{GtkAboutDialog}
\alias{gtkAboutDialog}
\alias{GtkAboutDialogActivateLinkFunc}
\name{GtkAboutDialog}
\title{GtkAboutDialog}
\description{Display information about an application}
\section{Methods and Functions}{
\code{\link{gtkAboutDialogNew}(show = TRUE)}\cr
\code{\link{gtkAboutDialogGetName}(object)}\cr
\code{\link{gtkAboutDialogGetName}(object)}\cr
\code{\link{gtkAboutDialogSetName}(object, name = NULL)}\cr
\code{\link{gtkAboutDialogSetName}(object, name = NULL)}\cr
\code{\link{gtkAboutDialogGetProgramName}(object)}\cr
\code{\link{gtkAboutDialogSetProgramName}(object, name)}\cr
\code{\link{gtkAboutDialogGetVersion}(object)}\cr
\code{\link{gtkAboutDialogSetVersion}(object, version = NULL)}\cr
\code{\link{gtkAboutDialogGetCopyright}(object)}\cr
\code{\link{gtkAboutDialogSetCopyright}(object, copyright = NULL)}\cr
\code{\link{gtkAboutDialogGetComments}(object)}\cr
\code{\link{gtkAboutDialogSetComments}(object, comments = NULL)}\cr
\code{\link{gtkAboutDialogGetLicense}(object)}\cr
\code{\link{gtkAboutDialogSetLicense}(object, license = NULL)}\cr
\code{\link{gtkAboutDialogGetWrapLicense}(object)}\cr
\code{\link{gtkAboutDialogSetWrapLicense}(object, wrap.license)}\cr
\code{\link{gtkAboutDialogGetWebsite}(object)}\cr
\code{\link{gtkAboutDialogSetWebsite}(object, website = NULL)}\cr
\code{\link{gtkAboutDialogGetWebsiteLabel}(object)}\cr
\code{\link{gtkAboutDialogSetWebsiteLabel}(object, website.label = NULL)}\cr
\code{\link{gtkAboutDialogGetAuthors}(object)}\cr
\code{\link{gtkAboutDialogSetAuthors}(object, authors)}\cr
\code{\link{gtkAboutDialogGetArtists}(object)}\cr
\code{\link{gtkAboutDialogSetArtists}(object, artists)}\cr
\code{\link{gtkAboutDialogGetDocumenters}(object)}\cr
\code{\link{gtkAboutDialogSetDocumenters}(object, documenters)}\cr
\code{\link{gtkAboutDialogGetTranslatorCredits}(object)}\cr
\code{\link{gtkAboutDialogSetTranslatorCredits}(object, translator.credits = NULL)}\cr
\code{\link{gtkAboutDialogGetLogo}(object)}\cr
\code{\link{gtkAboutDialogSetLogo}(object, logo = NULL)}\cr
\code{\link{gtkAboutDialogGetLogoIconName}(object)}\cr
\code{\link{gtkAboutDialogSetLogoIconName}(object, icon.name = NULL)}\cr
\code{\link{gtkAboutDialogSetEmailHook}(func, data = NULL)}\cr
\code{\link{gtkAboutDialogSetUrlHook}(func, data = NULL)}\cr
\code{\link{gtkShowAboutDialog}(parent, ...)}\cr
\code{gtkAboutDialog(show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkBin
                                 +----GtkWindow
                                       +----GtkDialog
                                             +----GtkAboutDialog}}
\section{Interfaces}{GtkAboutDialog implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{The \code{\link{GtkAboutDialog}} offers a simple way to display information about
a program like its logo, name, copyright, website and license. It is
also possible to give credits to the authors, documenters, translators
and artists who have worked on the program. An about dialog is typically
opened when the user selects the \code{About} option from
the \code{Help} menu. All parts of the dialog are optional.
  
About dialog often contain links and email addresses. \code{\link{GtkAboutDialog}}
supports this by offering global hooks, which are called when the user
clicks on a link or email address, see \code{\link{gtkAboutDialogSetEmailHook}}
and \code{\link{gtkAboutDialogSetUrlHook}}. Email addresses in the
authors, documenters and artists properties are recognized by looking for
\code{<user@    host>}, URLs are
recognized by looking for \code{http://url}, with
\code{url} extending to the next space, tab or line break.
  
Since 2.18 \code{\link{GtkAboutDialog}} provides default website and email hooks that
use \code{\link{gtkShowUri}}.
  
If you want provide your own hooks overriding the default ones, it is
important to do so before setting the website and email URL properties,
like this:
\preformatted{
gtkShowAboutDialog(NULL, "name" = "ExampleCode", "logo" = example_logo,
                   "title" = "About ExampleCode")
}
To disable the default hooks, you can pass \code{NULL} as the hook func. Then,
the \code{\link{GtkAboutDialog}} widget will not display the website or the
email addresses as clickable.
  
To make constructing a \code{\link{GtkAboutDialog}} as convenient as possible, you can
use the function \code{\link{gtkShowAboutDialog}} which constructs and shows a dialog
and keeps it around so that it can be shown again.
  
Note that GTK+ sets a default title of \code{_("About \%s")}
on the dialog window (where \%s is replaced by the name of the
application, but in order to ensure proper translation of the title,
applications should set the title property explicitly when constructing
a \code{\link{GtkAboutDialog}}, as shown in the following example:
\preformatted{about$setTranslatorCredits(gettext("translator-credits"))}
Note that prior to GTK+ 2.12, the \verb{"program-name"} property
was called "name". This was changed to avoid the conflict with the
\verb{"name"} property.}
\section{Structures}{\describe{\item{\verb{GtkAboutDialog}}{
The \code{GtkAboutDialog} struct contains
only private fields and should not be directly accessed.

}}}
\section{Convenient Construction}{\code{gtkAboutDialog} is the equivalent of \code{\link{gtkAboutDialogNew}}.}
\section{User Functions}{\describe{\item{\code{GtkAboutDialogActivateLinkFunc(about, link., data)}}{
The type of a function which is called when a URL or email
link is activated.

\describe{
\item{\code{about}}{the \code{\link{GtkAboutDialog}} in which the link was activated}
\item{\code{link.}}{the URL or email address to which the activated link points}
\item{\code{data}}{user data that was passed when the function was registered
with \code{\link{gtkAboutDialogSetEmailHook}} or
\code{\link{gtkAboutDialogSetUrlHook}}}
}


}}}
\section{Properties}{\describe{
\item{\verb{artists} [character list : Read / Write]}{

The people who contributed artwork to the program, as a \code{NULL}-terminated
array of strings. Each string may contain email addresses and URLs, which
will be displayed as links, see the introduction for more details.
  Since 2.6

}
\item{\verb{authors} [character list : Read / Write]}{

The authors of the program, as a list of strings.
Each string may contain email addresses and URLs, which will be displayed
as links, see the introduction for more details.
  Since 2.6

}
\item{\verb{comments} [character : *                : Read / Write]}{

Comments about the program. This string is displayed in a label
in the main dialog, thus it should be a short explanation of
the main purpose of the program, not a detailed list of features.
  Default value: NULL  Since 2.6

}
\item{\verb{copyright} [character : *                : Read / Write]}{

Copyright information for the program.
  Default value: NULL  Since 2.6

}
\item{\verb{documenters} [character list : Read / Write]}{

The people documenting the program, as a list of strings.
Each string may contain email addresses and URLs, which will be displayed
as links, see the introduction for more details.
  Since 2.6

}
\item{\verb{license} [character : *                : Read / Write]}{

The license of the program. This string is displayed in a
text view in a secondary dialog, therefore it is fine to use
a long multi-paragraph text. Note that the text is only wrapped
in the text view if the "wrap-license" property is set to \code{TRUE};
otherwise the text itself must contain the intended linebreaks.
  Default value: NULL  Since 2.6

}
\item{\verb{logo} [\code{\link{GdkPixbuf}} : *            : Read / Write]}{

A logo for the about box. If this is not set, it defaults to
\code{\link{gtkWindowGetDefaultIconList}}.
  Since 2.6

}
\item{\verb{logo-icon-name} [character : *                : Read / Write]}{

A named icon to use as the logo for the about box. This property
overrides the \verb{"logo"} property.
  Default value: NULL  Since 2.6

}
\item{\verb{program-name} [character : *                : Read / Write]}{

The name of the program.
If this is not set, it defaults to \code{gGetApplicationName()}.
  Default value: NULL  Since 2.12

}
\item{\verb{translator-credits} [character : *                : Read / Write]}{

Credits to the translators. This string should be marked as translatable.
The string may contain email addresses and URLs, which will be displayed
as links, see the introduction for more details.
  Default value: NULL  Since 2.6

}
\item{\verb{version} [character : *                : Read / Write]}{

The version of the program.
  Default value: NULL  Since 2.6

}
\item{\verb{website} [character : *                : Read / Write]}{

The URL for the link to the website of the program.
This should be a string starting with "http://.
  Default value: NULL  Since 2.6

}
\item{\verb{website-label} [character : *                : Read / Write]}{

The label for the link to the website of the program. If this is not set,
it defaults to the URL specified in the \verb{"website"} property.
  Default value: NULL  Since 2.6

}
\item{\verb{wrap-license} [logical : Read / Write]}{

Whether to wrap the text in the license dialog.
  Default value: FALSE  Since 2.8

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkAboutDialog.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
