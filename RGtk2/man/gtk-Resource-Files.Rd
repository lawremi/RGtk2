\alias{gtk-Resource-Files}
\alias{GtkRcStyle}
\alias{GtkRcFlags}
\alias{GtkRcTokenType}
\name{gtk-Resource-Files}
\title{Resource Files}
\description{Routines for handling resource files}
\section{Methods and Functions}{
\code{\link{gtkRcScannerNew}()}\cr
\code{\link{gtkRcGetStyle}(object)}\cr
\code{\link{gtkRcGetStyleByPaths}(settings, widget.path, class.path, type)}\cr
\code{\link{gtkRcAddWidgetNameStyle}(object, pattern)}\cr
\code{\link{gtkRcAddWidgetClassStyle}(object, pattern)}\cr
\code{\link{gtkRcAddClassStyle}(object, pattern)}\cr
\code{\link{gtkRcParse}(filename)}\cr
\code{\link{gtkRcParseString}(rc.string)}\cr
\code{\link{gtkRcReparseAll}()}\cr
\code{\link{gtkRcReparseAllForSettings}(settings, force.load)}\cr
\code{\link{gtkRcResetStyles}(settings)}\cr
\code{\link{gtkRcAddDefaultFile}(filename)}\cr
\code{\link{gtkRcGetDefaultFiles}()}\cr
\code{\link{gtkRcSetDefaultFiles}(filenames)}\cr
\code{\link{gtkRcParseColor}(scanner, color)}\cr
\code{\link{gtkRcParseState}(scanner, state)}\cr
\code{\link{gtkRcParsePriority}(scanner, priority)}\cr
\code{\link{gtkRcFindModuleInPath}(module.file)}\cr
\code{\link{gtkRcFindPixmapInPath}(settings, scanner = NULL, pixmap.file)}\cr
\code{\link{gtkRcGetModuleDir}()}\cr
\code{\link{gtkRcGetImModulePath}()}\cr
\code{\link{gtkRcGetImModuleFile}()}\cr
\code{\link{gtkRcGetThemeDir}()}\cr
\code{\link{gtkRcStyleNew}()}\cr
\code{\link{gtkRcStyleCopy}(object)}\cr

}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----GtkRcStyle}}
\section{Detailed Description}{GTK+ provides resource file mechanism for configuring
various aspects of the operation of a GTK+ program
at runtime.}
\section{Default files}{An application can cause GTK+ to parse a specific RC
file by calling \code{\link{gtkRcParse}}. In addition to this,
certain files will be read at the end of \code{\link{gtkInit}}.
Unless modified, the files looked for will be 
\file{<SYSCONFDIR>/gtk-2.0/gtkrc} 
and \file{.gtkrc-2.0} in the users home directory.
(\file{<SYSCONFDIR>} defaults to 
\file{/usr/local/etc}. It can be changed with the
\option{--prefix} or \option{--sysconfdir} options when 
configuring GTK+.) Note that although the filenames contain the version 
number 2.0, all 2.x versions of GTK+ look for these files.  
  
The set of these \dfn{default} files
can be retrieved with \code{\link{gtkRcGetDefaultFiles}}
and modified with \code{\link{gtkRcAddDefaultFile}} and
\code{\link{gtkRcSetDefaultFiles}}.
Additionally, the \env{GTK2\_RC\_FILES} environment variable
can be set to a \code{G_SEARCHPATH_SEPARATOR_S-separated} list of files
in order to overwrite the set of default files at runtime.
  
For each RC file, in addition to the file itself, GTK+ will look for 
a locale-specific file that will be parsed after the main file. 
For instance, if \env{LANG} is set to \code{ja_JP.ujis},
when loading the default file \file{~/.gtkrc} then GTK+ looks 
for \file{~/.gtkrc.ja\_JP} and \file{~/.gtkrc.ja}, 
and parses the first of those that exists.}
\section{Structures}{\describe{\item{\code{GtkRcStyle}}{
The \code{\link{GtkRcStyle}} structure is used to represent a set
of information about the appearance of a widget.
This can later be composited together with other
\code{\link{GtkRcStyle}} structures to form a \code{\link{GtkStyle}}.

}}}
\section{Enums and Flags}{\describe{
\item{\code{GtkRcFlags}}{
The \code{\link{GtkRcFlags}} enumeration is used as a bitmask
to specify which fields of a \code{\link{GtkRcStyle}} have been
set for each state.

\describe{
\item{\code{fg}}{If present, the foreground color has been set for this state.}
\item{\code{bg}}{If present, the background color has been set for this state.}
\item{\code{text}}{If present, the text color has been set for this state.}
\item{\code{base}}{If present, the base color has been set for this state.}
}

}
\item{\code{GtkRcTokenType}}{
The \code{\link{GtkRcTokenType}} enumeration represents the tokens
in the RC file. It is exposed so that theme engines
can reuse these tokens when parsing the theme-engine
specific portions of a RC file.

\describe{
\item{\code{invalid}}{\emph{undocumented
}}
\item{\code{include}}{\emph{undocumented
}}
\item{\code{normal}}{\emph{undocumented
}}
\item{\code{active}}{\emph{undocumented
}}
\item{\code{prelight}}{\emph{undocumented
}}
\item{\code{selected}}{\emph{undocumented
}}
\item{\code{insensitive}}{\emph{undocumented
}}
\item{\code{fg}}{\emph{undocumented
}}
\item{\code{bg}}{\emph{undocumented
}}
\item{\code{text}}{\emph{undocumented
}}
\item{\code{base}}{\emph{undocumented
}}
\item{\code{xthickness}}{\emph{undocumented
}}
\item{\code{ythickness}}{\emph{undocumented
}}
\item{\code{font}}{\emph{undocumented
}}
\item{\code{fontset}}{\emph{undocumented
}}
\item{\code{font-name}}{\emph{undocumented
}}
\item{\code{bg-pixmap}}{\emph{undocumented
}}
\item{\code{pixmap-path}}{\emph{undocumented
}}
\item{\code{style}}{\emph{undocumented
}}
\item{\code{binding}}{\emph{undocumented
}}
\item{\code{bind}}{\emph{undocumented
}}
\item{\code{widget}}{\emph{undocumented
}}
\item{\code{widget-class}}{\emph{undocumented
}}
\item{\code{class}}{\emph{undocumented
}}
\item{\code{lowest}}{\emph{undocumented
}}
\item{\code{gtk}}{\emph{undocumented
}}
\item{\code{application}}{\emph{undocumented
}}
\item{\code{theme}}{\emph{undocumented
}}
\item{\code{rc}}{\emph{undocumented
}}
\item{\code{highest}}{\emph{undocumented
}}
\item{\code{engine}}{\emph{undocumented
}}
\item{\code{module-path}}{\emph{undocumented
}}
\item{\code{im-module-path}}{\emph{undocumented
}}
\item{\code{im-module-file}}{\emph{undocumented
}}
\item{\code{stock}}{\emph{undocumented
}}
\item{\code{ltr}}{\emph{undocumented
}}
\item{\code{rtl}}{\emph{undocumented
}}
\item{\code{last}}{\emph{undocumented
}}
}

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/gtk-Resource-Files.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
