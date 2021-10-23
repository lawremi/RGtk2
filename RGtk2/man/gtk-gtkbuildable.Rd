\alias{gtk-gtkbuildable}
\alias{GtkBuildable}
\name{gtk-gtkbuildable}
\title{GtkBuildable}
\description{Interface for objects that can be built by GtkBuilder}
\section{Methods and Functions}{
\code{\link{gtkBuildableSetName}(object, name)}\cr
\code{\link{gtkBuildableGetName}(object)}\cr
\code{\link{gtkBuildableAddChild}(object, builder, child, type)}\cr
\code{\link{gtkBuildableSetBuildableProperty}(object, builder, name, value)}\cr
\code{\link{gtkBuildableConstructChild}(object, builder, name)}\cr
\code{\link{gtkBuildableCustomTagStart}(object, builder, child, tagname, parser, data)}\cr
\code{\link{gtkBuildableCustomTagEnd}(object, builder, child, tagname, data)}\cr
\code{\link{gtkBuildableCustomFinished}(object, builder, child, tagname, data)}\cr
\code{\link{gtkBuildableParserFinished}(object, builder)}\cr
\code{\link{gtkBuildableGetInternalChild}(object, builder, childname)}\cr
}
\section{Hierarchy}{\preformatted{GInterface
   +----GtkBuildable}}
\section{Implementations}{GtkBuildable is implemented by
 \code{\link{GtkAboutDialog}},  \code{\link{GtkAccelLabel}},  \code{\link{GtkAction}},  \code{\link{GtkActionGroup}},  \code{\link{GtkAlignment}},  \code{\link{GtkArrow}},  \code{\link{GtkAspectFrame}},  \code{\link{GtkAssistant}},  \code{\link{GtkBin}},  \code{\link{GtkBox}},  \code{\link{GtkButton}},  \code{\link{GtkButtonBox}},  \code{\link{GtkCList}},  \code{\link{GtkCTree}},  \code{\link{GtkCalendar}},  \code{\link{GtkCellView}},  \code{\link{GtkCheckButton}},  \code{\link{GtkCheckMenuItem}},  \code{\link{GtkColorButton}},  \code{\link{GtkColorSelection}},  \code{\link{GtkColorSelectionDialog}},  \code{\link{GtkCombo}},  \code{\link{GtkComboBox}},  \code{\link{GtkComboBoxEntry}},  \code{\link{GtkContainer}},  \code{\link{GtkCurve}},  \code{\link{GtkDialog}},  \code{\link{GtkDrawingArea}},  \code{\link{GtkEntry}},  \code{\link{GtkEntryCompletion}},  \code{\link{GtkEventBox}},  \code{\link{GtkExpander}},  \code{\link{GtkFileChooserButton}},  \code{\link{GtkFileChooserDialog}},  \code{\link{GtkFileChooserWidget}},  \code{\link{GtkFileSelection}},  \code{\link{GtkFixed}},  \code{\link{GtkFontButton}},  \code{\link{GtkFontSelection}},  \code{\link{GtkFontSelectionDialog}},  \code{\link{GtkFrame}},  \code{\link{GtkGammaCurve}},  \code{\link{GtkHBox}},  \code{\link{GtkHButtonBox}},  \code{\link{GtkHPaned}},  \code{\link{GtkHRuler}},  \code{\link{GtkHSV}},  \code{\link{GtkHScale}},  \code{\link{GtkHScrollbar}},  \code{\link{GtkHSeparator}},  \code{\link{GtkHandleBox}},  \code{\link{GtkIconFactory}},  \code{\link{GtkIconView}},  \code{\link{GtkImage}},  \code{\link{GtkImageMenuItem}},  \code{\link{GtkInfoBar}},  \code{\link{GtkInputDialog}},  \code{\link{GtkInvisible}},  \code{\link{GtkItem}},  \code{\link{GtkLabel}},  \code{\link{GtkLayout}},  \code{\link{GtkLinkButton}},  \code{\link{GtkList}},  \code{\link{GtkListItem}},  \code{\link{GtkListStore}},  \code{\link{GtkMenu}},  \code{\link{GtkMenuBar}},  \code{\link{GtkMenuItem}},  \code{\link{GtkMenuShell}},  \code{\link{GtkMenuToolButton}},  \code{\link{GtkMessageDialog}},  \code{\link{GtkMisc}},  \code{\link{GtkNotebook}},  \code{\link{GtkOffscreenWindow}},  \code{\link{GtkOldEditable}},  \code{\link{GtkOptionMenu}},  GtkPageSetupUnixDialog,  \code{\link{GtkPaned}},  \code{\link{GtkPixmap}},  \code{\link{GtkPlug}},  \code{\link{GtkPreview}},  GtkPrintUnixDialog,  \code{\link{GtkProgress}},  \code{\link{GtkProgressBar}},  \code{\link{GtkRadioAction}},  \code{\link{GtkRadioButton}},  \code{\link{GtkRadioMenuItem}},  \code{\link{GtkRadioToolButton}},  \code{\link{GtkRange}},  \code{\link{GtkRecentAction}},  \code{\link{GtkRecentChooserDialog}},  \code{\link{GtkRecentChooserMenu}},  \code{\link{GtkRecentChooserWidget}},  \code{\link{GtkRuler}},  \code{\link{GtkScale}},  \code{\link{GtkScaleButton}},  \code{\link{GtkScrollbar}},  \code{\link{GtkScrolledWindow}},  \code{\link{GtkSeparator}},  \code{\link{GtkSeparatorMenuItem}},  \code{\link{GtkSeparatorToolItem}},  \code{\link{GtkSizeGroup}},  \code{\link{GtkSocket}},  \code{\link{GtkSpinButton}},  \code{\link{GtkSpinner}},  \code{\link{GtkStatusbar}},  \code{\link{GtkTable}},  \code{\link{GtkTearoffMenuItem}},  GtkText,  \code{\link{GtkTextView}},  \code{\link{GtkTipsQuery}},  \code{\link{GtkToggleAction}},  \code{\link{GtkToggleButton}},  \code{\link{GtkToggleToolButton}},  \code{\link{GtkToolButton}},  \code{\link{GtkToolItem}},  \code{\link{GtkToolItemGroup}},  \code{\link{GtkToolPalette}},  \code{\link{GtkToolbar}},  GtkTree,  GtkTreeItem,  \code{\link{GtkTreeStore}},  \code{\link{GtkTreeView}},  \code{\link{GtkTreeViewColumn}},  \code{\link{GtkUIManager}},  \code{\link{GtkVBox}},  \code{\link{GtkVButtonBox}},  \code{\link{GtkVPaned}},  \code{\link{GtkVRuler}},  \code{\link{GtkVScale}},  \code{\link{GtkVScrollbar}},  \code{\link{GtkVSeparator}},  \code{\link{GtkViewport}},  \code{\link{GtkVolumeButton}},  \code{\link{GtkWidget}} and  \code{\link{GtkWindow}}.}
\section{Detailed Description}{In order to allow construction from a GtkBuilder
UI description, an object class must implement the
GtkBuildable interface. The interface includes methods for setting
names and properties of objects, parsing custom tags, constructing
child objects.
  
The GtkBuildable interface is implemented by all widgets and
many of the non-widget objects that are provided by GTK+. The
main user of this interface is \code{\link{GtkBuilder}}, there should be
very little need for applications to call any
\code{gtkBuildable...} functions.}
\section{Structures}{\describe{\item{\verb{GtkBuildable}}{
\emph{undocumented
}

}}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkBuildable.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
