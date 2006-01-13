gtkAboutDialog <- gtkAboutDialogNew

gtkAccelGroup <- gtkAccelGroupNew

gtkAccelLabel <- gtkAccelLabelNew

gtkAction <- gtkActionNew

gtkActionGroup <- gtkActionGroupNew

gtkAdjustment <- gtkAdjustmentNew

gtkAlignment <- gtkAlignmentNew

gtkArrow <- gtkArrowNew

gtkAspectFrame <- gtkAspectFrameNew

gtkButton <-
function(label, stock.id, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (!missing(stock.id)) {
		gtkButtonNewFromStock(stock.id, show, .flush, .depwarn)
	}
	else {
		if (!missing(label)) {
			gtkButtonNewWithLabel(label, show, .flush, .depwarn)
		}
		else {
			gtkButtonNew(show, .flush, .depwarn)
		}
	}
}

gtkCalendar <- gtkCalendarNew

gtkCellRendererCombo <- gtkCellRendererComboNew

gtkCellRendererPixbuf <- gtkCellRendererPixbufNew

gtkCellRendererProgress <- gtkCellRendererProgressNew

gtkCellRendererText <- gtkCellRendererTextNew

gtkCellRendererToggle <- gtkCellRendererToggleNew

gtkCellView <- gtkCellViewNew

gtkCheckButton <-
function(label, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (!missing(label)) {
		gtkCheckButtonNewWithLabel(label, show, .flush, .depwarn)
	}
	else {
		gtkCheckButtonNew(show, .flush, .depwarn)
	}
}

gtkCheckMenuItem <-
function(label, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (!missing(label)) {
		gtkCheckMenuItemNewWithLabel(label, show, .flush, .depwarn)
	}
	else {
		gtkCheckMenuItemNew(show, .flush, .depwarn)
	}
}

gtkClipboard <- gtkClipboardGetForDisplay

gtkCList <-
function(columns = 1, titles, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (!missing(titles)) {
		gtkCListNewWithTitles(columns, titles, show, .flush, .depwarn)
	}
	else {
		gtkCListNew(columns, show, .flush, .depwarn)
	}
}

gtkColorButton <-
function(color, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (!missing(color)) {
		gtkColorButtonNewWithColor(color, show, .flush, .depwarn)
	}
	else {
		gtkColorButtonNew(show, .flush, .depwarn)
	}
}

gtkColorSelection <- gtkColorSelectionNew

gtkColorSelectionDialog <- gtkColorSelectionDialogNew

gtkCombo <- gtkComboNew

gtkComboBox <-
function(model, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (!missing(model)) {
		gtkComboBoxNewWithModel(model, show, .flush, .depwarn)
	}
	else {
		gtkComboBoxNew(show, .flush, .depwarn)
	}
}

gtkComboBoxEntry <- gtkComboBoxEntryNew

gtkCTree <-
function(columns = 1, tree.column = 0, titles, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (!missing(titles)) {
		gtkCTreeNewWithTitles(columns, tree.column, titles, show, .flush, .depwarn)
	}
	else {
		gtkCTreeNew(columns, tree.column, show, .flush, .depwarn)
	}
}

gtkCurve <- gtkCurveNew

gtkDialog <-
function(title = NULL, parent = NULL, flags = 0, ..., show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (!missing(title)) {
		gtkDialogNewWithButtons(title, parent, flags, ..., show = show, .flush = .flush, .depwarn = .depwarn)
	}
	else {
		gtkDialogNew(show, .flush, .depwarn)
	}
}

gtkDrawingArea <- gtkDrawingAreaNew

gtkEntry <-
function(max = 0, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (!missing(max)) {
		gtkEntryNewWithMaxLength(max, show, .flush, .depwarn)
	}
	else {
		gtkEntryNew(show, .flush, .depwarn)
	}
}

gtkEntryCompletion <- gtkEntryCompletionNew

gtkEventBox <- gtkEventBoxNew

gtkExpander <- gtkExpanderNew

gtkFileChooserButton <-
function(title, action, backend, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (!missing(backend)) {
		gtkFileChooserButtonNewWithBackend(title, action, backend, show, .flush, .depwarn)
	}
	else {
		gtkFileChooserButtonNew(title, action, show, .flush, .depwarn)
	}
}

gtkFileChooserDialog <-
function(title = NULL, parent = NULL, action, ..., backend, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (!missing(backend)) {
		gtkFileChooserDialogNewWithBackend(title, parent, action, backend, ..., show = show, .flush = .flush, .depwarn = .depwarn)
	}
	else {
		gtkFileChooserDialogNew(title, parent, action, ..., show = show, .flush = .flush, .depwarn = .depwarn)
	}
}

gtkFileChooserWidget <-
function(action, backend, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (!missing(backend)) {
		gtkFileChooserWidgetNewWithBackend(action, backend, show, .flush, .depwarn)
	}
	else {
		gtkFileChooserWidgetNew(action, show, .flush, .depwarn)
	}
}

gtkFileFilter <- gtkFileFilterNew

gtkFileSelection <- gtkFileSelectionNew

gtkFixed <- gtkFixedNew

gtkFontButton <- gtkFontButtonNew

gtkFontSelection <- gtkFontSelectionNew

gtkFontSelectionDialog <- gtkFontSelectionDialogNew

gtkFrame <- gtkFrameNew

gtkGammaCurve <- gtkGammaCurveNew

gtkHandleBox <- gtkHandleBoxNew

gtkHBox <- gtkHBoxNew

gtkHButtonBox <- gtkHButtonBoxNew

gtkHPaned <- gtkHPanedNew

gtkHRuler <- gtkHRulerNew

gtkHScale <-
function(adjustment = NULL, min, max, step, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (!missing(adjustment)) {
		gtkHScaleNew(adjustment, show, .flush, .depwarn)
	}
	else {
		gtkHScaleNewWithRange(min, max, step, show, .flush, .depwarn)
	}
}

gtkHScrollbar <- gtkHScrollbarNew

gtkHSeparator <- gtkHSeparatorNew

gtkIconFactory <- gtkIconFactoryNew

gtkIconTheme <- gtkIconThemeNew

gtkIconView <-
function(model = NULL, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (!missing(model)) {
		gtkIconViewNewWithModel(model, show, .flush, .depwarn)
	}
	else {
		gtkIconViewNew(show, .flush, .depwarn)
	}
}

gtkImage <-
function(mask = NULL, pixmap = NULL, image = NULL, filename, pixbuf = NULL, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (!missing(pixmap)) {
		gtkImageNewFromPixmap(pixmap, mask, show, .flush, .depwarn)
	}
	else {
		if (!missing(mask)) {
			gtkImageNewFromImage(image, mask, show, .flush, .depwarn)
		}
		else {
			if (!missing(filename)) {
				gtkImageNewFromFile(filename, show, .flush, .depwarn)
			}
			else {
				if (!missing(pixbuf)) {
					gtkImageNewFromPixbuf(pixbuf, show, .flush, .depwarn)
				}
				else {
					gtkImageNew(show, .flush, .depwarn)
				}
			}
		}
	}
}

gtkImageMenuItem <-
function(label, stock.id, accel.group, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (!missing(stock.id)) {
		gtkImageMenuItemNewFromStock(stock.id, accel.group, show, .flush, .depwarn)
	}
	else {
		if (!missing(label)) {
			gtkImageMenuItemNewWithLabel(label, show, .flush, .depwarn)
		}
		else {
			gtkImageMenuItemNew(show, .flush, .depwarn)
		}
	}
}

gtkIMContextSimple <- gtkIMContextSimpleNew

gtkIMMulticontext <- gtkIMMulticontextNew

gtkInputDialog <- gtkInputDialogNew

gtkInvisible <-
function(screen, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (!missing(screen)) {
		gtkInvisibleNewForScreen(screen, show, .flush, .depwarn)
	}
	else {
		gtkInvisibleNew(show, .flush, .depwarn)
	}
}

gtkItemFactory <- gtkItemFactoryNew

gtkLabel <-
function(str = NULL, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	gtkLabelNew(str, show, .flush, .depwarn)
}

gtkLayout <- gtkLayoutNew

gtkList <- gtkListNew

gtkListItem <-
function(label, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (!missing(label)) {
		gtkListItemNewWithLabel(label, show, .flush, .depwarn)
	}
	else {
		gtkListItemNew(show, .flush, .depwarn)
	}
}

gtkListStore <-
function(..., value, .flush = TRUE, .depwarn = TRUE)
{
	if (!missing(...)) {
		gtkListStoreNew(..., .flush = .flush, .depwarn = .depwarn)
	}
	else {
		gtkListStoreNewv(value, .flush, .depwarn)
	}
}

gtkMenu <- gtkMenuNew

gtkMenuBar <- gtkMenuBarNew

gtkMenuItem <-
function(label, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (!missing(label)) {
		gtkMenuItemNewWithLabel(label, show, .flush, .depwarn)
	}
	else {
		gtkMenuItemNew(show, .flush, .depwarn)
	}
}

gtkMenuToolButton <- gtkMenuToolButtonNew

gtkMessageDialog <-
function(parent, flags, type, buttons, ..., show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	gtkMessageDialogNew(parent, flags, type, buttons, ..., show = show, .flush = .flush, .depwarn = .depwarn)
}

gtkNotebook <- gtkNotebookNew

gtkOptionMenu <- gtkOptionMenuNew

gtkPixmap <- gtkPixmapNew

gtkPlug <- gtkPlugNew

gtkPreview <- gtkPreviewNew

gtkProgressBar <-
function(adjustment = NULL, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (!missing(adjustment)) {
		gtkProgressBarNewWithAdjustment(adjustment, show, .flush, .depwarn)
	}
	else {
		gtkProgressBarNew(show, .flush, .depwarn)
	}
}

gtkRadioAction <- gtkRadioActionNew

gtkRadioButton <-
function(group, label, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (!missing(label)) {
		gtkRadioButtonNewWithLabel(group, label, show, .flush, .depwarn)
	}
	else {
		gtkRadioButtonNew(group, show, .flush, .depwarn)
	}
}

gtkRadioMenuItem <-
function(group, label, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (!missing(label)) {
		gtkRadioMenuItemNewWithLabel(group, label, show, .flush, .depwarn)
	}
	else {
		gtkRadioMenuItemNew(group, show, .flush, .depwarn)
	}
}

gtkRadioToolButton <-
function(group, stock.id, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (!missing(stock.id)) {
		gtkRadioToolButtonNewFromStock(group, stock.id, show, .flush, .depwarn)
	}
	else {
		gtkRadioToolButtonNew(group, show, .flush, .depwarn)
	}
}

gtkScrolledWindow <- gtkScrolledWindowNew

gtkSeparatorMenuItem <- gtkSeparatorMenuItemNew

gtkSeparatorToolItem <- gtkSeparatorToolItemNew

gtkSizeGroup <- gtkSizeGroupNew

gtkSocket <- gtkSocketNew

gtkSpinButton <-
function(adjustment = NULL, climb.rate = NULL, digits = NULL, min, max, step, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (!missing(adjustment)) {
		gtkSpinButtonNew(adjustment, climb.rate, digits, show, .flush, .depwarn)
	}
	else {
		gtkSpinButtonNewWithRange(min, max, step, show, .flush, .depwarn)
	}
}

gtkStatusbar <- gtkStatusbarNew

gtkStyle <- gtkStyleNew

gtkTable <- gtkTableNew

gtkTearoffMenuItem <- gtkTearoffMenuItemNew

gtkTextBuffer <- gtkTextBufferNew

gtkTextChildAnchor <- gtkTextChildAnchorNew

gtkTextTag <- gtkTextTagNew

gtkTextTagTable <- gtkTextTagTableNew

gtkTextView <-
function(buffer = NULL, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (!missing(buffer)) {
		gtkTextViewNewWithBuffer(buffer, show, .flush, .depwarn)
	}
	else {
		gtkTextViewNew(show, .flush, .depwarn)
	}
}

gtkTipsQuery <- gtkTipsQueryNew

gtkToggleAction <- gtkToggleActionNew

gtkToggleButton <-
function(label, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (!missing(label)) {
		gtkToggleButtonNewWithLabel(label, show, .flush, .depwarn)
	}
	else {
		gtkToggleButtonNew(show, .flush, .depwarn)
	}
}

gtkToggleToolButton <- gtkToggleToolButtonNew

gtkToolbar <- gtkToolbarNew

gtkToolButton <- gtkToolButtonNew

gtkToolItem <- gtkToolItemNew

gtkTooltips <- gtkTooltipsNew

gtkTreeModelSort <- gtkTreeModelSortNewWithModel

gtkTreeStore <-
function(..., types, .flush = TRUE, .depwarn = TRUE)
{
	if (!missing(...)) {
		gtkTreeStoreNew(..., .flush = .flush, .depwarn = .depwarn)
	}
	else {
		gtkTreeStoreNewv(types, .flush, .depwarn)
	}
}

gtkTreeView <-
function(model = NULL, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (!missing(model)) {
		gtkTreeViewNewWithModel(model, show, .flush, .depwarn)
	}
	else {
		gtkTreeViewNew(show, .flush, .depwarn)
	}
}

gtkTreeViewColumn <-
function(title, cell, ..., .flush = TRUE, .depwarn = TRUE)
{
	if (!missing(title)) {
		gtkTreeViewColumnNewWithAttributes(title, cell, ..., .flush = .flush, .depwarn = .depwarn)
	}
	else {
		gtkTreeViewColumnNew(.flush, .depwarn)
	}
}

gtkUIManager <- gtkUIManagerNew

gtkVBox <- gtkVBoxNew

gtkVButtonBox <- gtkVButtonBoxNew

gtkViewport <- gtkViewportNew

gtkVPaned <- gtkVPanedNew

gtkVRuler <- gtkVRulerNew

gtkVScale <-
function(adjustment = NULL, min, max, step, show = TRUE, .flush = TRUE, .depwarn = TRUE)
{
	if (!missing(adjustment)) {
		gtkVScaleNew(adjustment, show, .flush, .depwarn)
	}
	else {
		gtkVScaleNewWithRange(min, max, step, show, .flush, .depwarn)
	}
}

gtkVScrollbar <- gtkVScrollbarNew

gtkVSeparator <- gtkVSeparatorNew

gtkWidget <- gtkWidgetNew

gtkWindow <- gtkWindowNew

gtkWindowGroup <- gtkWindowGroupNew

