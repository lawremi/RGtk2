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
 \code{\link{GtkListItem}},  \code{\link{GtkBin}},  \code{\link{GtkTreeView}},  \code{\link{GtkButtonBox}},  \code{\link{GtkPaned}},  \code{\link{GtkColorSelectionDialog}},  \code{\link{GtkVButtonBox}},  \code{\link{GtkTearoffMenuItem}},  \code{\link{GtkEntry}},  \code{\link{GtkOptionMenu}},  \code{\link{GtkImage}},  \code{\link{GtkCalendar}},  \code{\link{GtkFixed}},  \code{\link{GtkLinkButton}},  \code{\link{GtkHButtonBox}},  \code{\link{GtkInputDialog}},  \code{\link{GtkRadioButton}},  \code{\link{GtkVRuler}},  \code{\link{GtkVSeparator}},  \code{\link{GtkVBox}},  \code{\link{GtkCurve}},  \code{\link{GtkRadioToolButton}},  \code{\link{GtkHRuler}},  \code{\link{GtkToggleButton}},  \code{\link{GtkSeparatorMenuItem}},  \code{\link{GtkHScale}},  \code{\link{GtkTable}},  \code{\link{GtkTreeViewColumn}},  \code{\link{GtkImageMenuItem}},  \code{\link{GtkFileChooserButton}},  \code{\link{GtkCheckButton}},  \code{\link{GtkRadioMenuItem}},  \code{\link{GtkMenuShell}},  \code{\link{GtkStatusbar}},  \code{\link{GtkDrawingArea}},  \code{\link{GtkButton}},  \code{\link{GtkIconView}},  \code{\link{GtkNotebook}},  \code{\link{GtkUIManager}},  GtkTree,  \code{\link{GtkSocket}},  \code{\link{GtkVScale}},  \code{\link{GtkProgress}},  \code{\link{GtkGammaCurve}},  GtkText,  \code{\link{GtkCList}},  \code{\link{GtkAlignment}},  \code{\link{GtkMenuToolButton}},  \code{\link{GtkMenuItem}},  GtkPageSetupUnixDialog,  \code{\link{GtkRecentChooserMenu}},  \code{\link{GtkToolItem}},  \code{\link{GtkHSeparator}},  \code{\link{GtkProgressBar}},  \code{\link{GtkCTree}},  \code{\link{GtkActionGroup}},  \code{\link{GtkRange}},  \code{\link{GtkAssistant}},  \code{\link{GtkFileSelection}},  \code{\link{GtkToolbar}},  GtkTreeItem,  \code{\link{GtkAccelLabel}},  \code{\link{GtkPreview}},  \code{\link{GtkRecentChooserDialog}},  \code{\link{GtkExpander}},  \code{\link{GtkScale}},  \code{\link{GtkTreeStore}},  \code{\link{GtkMessageDialog}},  \code{\link{GtkSeparator}},  \code{\link{GtkLayout}},  \code{\link{GtkFontSelection}},  \code{\link{GtkCellView}},  \code{\link{GtkInvisible}},  \code{\link{GtkWindow}},  \code{\link{GtkSeparatorToolItem}},  \code{\link{GtkFileChooserWidget}},  \code{\link{GtkCheckMenuItem}},  \code{\link{GtkToolButton}},  \code{\link{GtkMisc}},  \code{\link{GtkEventBox}},  \code{\link{GtkFontButton}},  \code{\link{GtkEntryCompletion}},  \code{\link{GtkDialog}},  \code{\link{GtkHBox}},  \code{\link{GtkCombo}},  \code{\link{GtkOldEditable}},  \code{\link{GtkAspectFrame}},  \code{\link{GtkAboutDialog}},  \code{\link{GtkHScrollbar}},  \code{\link{GtkListStore}},  \code{\link{GtkScaleButton}},  \code{\link{GtkRecentChooserWidget}},  \code{\link{GtkToggleToolButton}},  \code{\link{GtkComboBox}},  \code{\link{GtkVScrollbar}},  \code{\link{GtkFrame}},  \code{\link{GtkSpinButton}},  \code{\link{GtkList}},  \code{\link{GtkLabel}},  \code{\link{GtkFontSelectionDialog}},  \code{\link{GtkTipsQuery}},  \code{\link{GtkColorSelection}},  \code{\link{GtkItem}},  \code{\link{GtkWidget}},  \code{\link{GtkRecentAction}},  \code{\link{GtkVolumeButton}},  \code{\link{GtkMenuBar}},  \code{\link{GtkTextView}},  \code{\link{GtkArrow}},  \code{\link{GtkToggleAction}},  \code{\link{GtkRadioAction}},  \code{\link{GtkPlug}},  \code{\link{GtkHPaned}},  \code{\link{GtkBox}},  \code{\link{GtkMenu}},  \code{\link{GtkAction}},  GtkPrintUnixDialog,  \code{\link{GtkComboBoxEntry}},  \code{\link{GtkColorButton}},  \code{\link{GtkPixmap}},  \code{\link{GtkFileChooserDialog}},  \code{\link{GtkRuler}},  \code{\link{GtkVPaned}},  \code{\link{GtkHandleBox}},  \code{\link{GtkScrollbar}},  \code{\link{GtkContainer}},  \code{\link{GtkSizeGroup}},  \code{\link{GtkViewport}} and  \code{\link{GtkScrolledWindow}}.}
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
\section{Structures}{\describe{\item{\code{GtkBuildable}}{
\emph{undocumented
}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/gtk-gtkbuildable.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
