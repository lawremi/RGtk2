R_RegisterCCallable("RGtk2", "S_GtkAboutDialogActivateLinkFunc", ((DL_FUNC)S_GtkAboutDialogActivateLinkFunc)); 
R_RegisterCCallable("RGtk2", "S_GtkCellLayoutDataFunc", ((DL_FUNC)S_GtkCellLayoutDataFunc)); 
R_RegisterCCallable("RGtk2", "S_GtkClipboardGetFunc", ((DL_FUNC)S_GtkClipboardGetFunc)); 
R_RegisterCCallable("RGtk2", "S_GtkClipboardReceivedFunc", ((DL_FUNC)S_GtkClipboardReceivedFunc)); 
R_RegisterCCallable("RGtk2", "S_GtkClipboardImageReceivedFunc", ((DL_FUNC)S_GtkClipboardImageReceivedFunc)); 
R_RegisterCCallable("RGtk2", "S_GtkClipboardTextReceivedFunc", ((DL_FUNC)S_GtkClipboardTextReceivedFunc)); 
R_RegisterCCallable("RGtk2", "S_GtkClipboardTargetsReceivedFunc", ((DL_FUNC)S_GtkClipboardTargetsReceivedFunc)); 
R_RegisterCCallable("RGtk2", "S_GtkColorSelectionChangePaletteFunc", ((DL_FUNC)S_GtkColorSelectionChangePaletteFunc)); 
R_RegisterCCallable("RGtk2", "S_GtkColorSelectionChangePaletteWithScreenFunc", ((DL_FUNC)S_GtkColorSelectionChangePaletteWithScreenFunc)); 
R_RegisterCCallable("RGtk2", "S_GtkCTreeGNodeFunc", ((DL_FUNC)S_GtkCTreeGNodeFunc)); 
R_RegisterCCallable("RGtk2", "S_GtkCTreeFunc", ((DL_FUNC)S_GtkCTreeFunc)); 
R_RegisterCCallable("RGtk2", "S_GtkEntryCompletionMatchFunc", ((DL_FUNC)S_GtkEntryCompletionMatchFunc)); 
R_RegisterCCallable("RGtk2", "S_GtkFileFilterFunc", ((DL_FUNC)S_GtkFileFilterFunc)); 
R_RegisterCCallable("RGtk2", "S_GtkIconViewForeachFunc", ((DL_FUNC)S_GtkIconViewForeachFunc)); 
R_RegisterCCallable("RGtk2", "S_GtkTranslateFunc", ((DL_FUNC)S_GtkTranslateFunc)); 
R_RegisterCCallable("RGtk2", "S_GtkFunction", ((DL_FUNC)S_GtkFunction)); 
R_RegisterCCallable("RGtk2", "S_GtkKeySnoopFunc", ((DL_FUNC)S_GtkKeySnoopFunc)); 
R_RegisterCCallable("RGtk2", "S_GtkMenuPositionFunc", ((DL_FUNC)S_GtkMenuPositionFunc)); 
R_RegisterCCallable("RGtk2", "S_GtkTreeModelForeachFunc", ((DL_FUNC)S_GtkTreeModelForeachFunc)); 
R_RegisterCCallable("RGtk2", "S_GtkTreeModelFilterVisibleFunc", ((DL_FUNC)S_GtkTreeModelFilterVisibleFunc)); 
R_RegisterCCallable("RGtk2", "S_GtkTreeModelFilterModifyFunc", ((DL_FUNC)S_GtkTreeModelFilterModifyFunc)); 
R_RegisterCCallable("RGtk2", "S_GtkTreeSelectionFunc", ((DL_FUNC)S_GtkTreeSelectionFunc)); 
R_RegisterCCallable("RGtk2", "S_GtkTreeSelectionForeachFunc", ((DL_FUNC)S_GtkTreeSelectionForeachFunc)); 
R_RegisterCCallable("RGtk2", "S_GtkTreeIterCompareFunc", ((DL_FUNC)S_GtkTreeIterCompareFunc)); 
R_RegisterCCallable("RGtk2", "S_GtkTreeCellDataFunc", ((DL_FUNC)S_GtkTreeCellDataFunc)); 
R_RegisterCCallable("RGtk2", "S_GtkTreeViewColumnDropFunc", ((DL_FUNC)S_GtkTreeViewColumnDropFunc)); 
R_RegisterCCallable("RGtk2", "S_GtkTreeViewMappingFunc", ((DL_FUNC)S_GtkTreeViewMappingFunc)); 
R_RegisterCCallable("RGtk2", "S_GtkTreeViewSearchEqualFunc", ((DL_FUNC)S_GtkTreeViewSearchEqualFunc)); 
R_RegisterCCallable("RGtk2", "S_GtkTreeDestroyCountFunc", ((DL_FUNC)S_GtkTreeDestroyCountFunc)); 
R_RegisterCCallable("RGtk2", "S_GtkTreeViewRowSeparatorFunc", ((DL_FUNC)S_GtkTreeViewRowSeparatorFunc)); 
R_RegisterCCallable("RGtk2", "S_GtkCallback", ((DL_FUNC)S_GtkCallback)); 
R_RegisterCCallable("RGtk2", "S_GtkAccelMapForeach", ((DL_FUNC)S_GtkAccelMapForeach)); 
R_RegisterCCallable("RGtk2", "S_GtkAccelGroupFindFunc", ((DL_FUNC)S_GtkAccelGroupFindFunc)); 
R_RegisterCCallable("RGtk2", "S_GtkAccelGroupActivate", ((DL_FUNC)S_GtkAccelGroupActivate)); 
R_RegisterCCallable("RGtk2", "S_GtkTextTagTableForeach", ((DL_FUNC)S_GtkTextTagTableForeach)); 
R_RegisterCCallable("RGtk2", "S_GtkTextCharPredicate", ((DL_FUNC)S_GtkTextCharPredicate)); 
R_RegisterCCallable("RGtk2", "S_GtkItemFactoryCallback1", ((DL_FUNC)S_GtkItemFactoryCallback1)); 
R_RegisterCCallable("RGtk2", "S_GtkItemFactoryCallback2", ((DL_FUNC)S_GtkItemFactoryCallback2)); 
#if GTK_CHECK_VERSION(2, 10, 0)
R_RegisterCCallable("RGtk2", "S_GtkAssistantPageFunc", ((DL_FUNC)S_GtkAssistantPageFunc));
#endif 
#if GTK_CHECK_VERSION(2, 10, 0)
R_RegisterCCallable("RGtk2", "S_GtkClipboardRichTextReceivedFunc", ((DL_FUNC)S_GtkClipboardRichTextReceivedFunc));
#endif 
#if GTK_CHECK_VERSION(2, 10, 0)
R_RegisterCCallable("RGtk2", "S_GtkLinkButtonUriFunc", ((DL_FUNC)S_GtkLinkButtonUriFunc));
#endif 
#if GTK_CHECK_VERSION(2, 10, 0)
R_RegisterCCallable("RGtk2", "S_GtkNotebookWindowCreationFunc", ((DL_FUNC)S_GtkNotebookWindowCreationFunc));
#endif 
#if GTK_CHECK_VERSION(2, 10, 0)
R_RegisterCCallable("RGtk2", "S_GtkPageSetupDoneFunc", ((DL_FUNC)S_GtkPageSetupDoneFunc));
#endif 
#if GTK_CHECK_VERSION(2, 10, 0)
R_RegisterCCallable("RGtk2", "S_GtkPrintSettingsFunc", ((DL_FUNC)S_GtkPrintSettingsFunc));
#endif 
#if GTK_CHECK_VERSION(2, 10, 0)
R_RegisterCCallable("RGtk2", "S_GtkRecentSortFunc", ((DL_FUNC)S_GtkRecentSortFunc));
#endif 
#if GTK_CHECK_VERSION(2, 10, 0)
R_RegisterCCallable("RGtk2", "S_GtkRecentFilterFunc", ((DL_FUNC)S_GtkRecentFilterFunc));
#endif 
#if GTK_CHECK_VERSION(2, 10, 0)
R_RegisterCCallable("RGtk2", "S_GtkTextBufferDeserializeFunc", ((DL_FUNC)S_GtkTextBufferDeserializeFunc));
#endif 
#if GTK_CHECK_VERSION(2, 10, 0)
R_RegisterCCallable("RGtk2", "S_GtkTreeViewSearchPositionFunc", ((DL_FUNC)S_GtkTreeViewSearchPositionFunc));
#endif 
#if GTK_CHECK_VERSION(2, 12, 0)
R_RegisterCCallable("RGtk2", "S_GtkBuilderConnectFunc", ((DL_FUNC)S_GtkBuilderConnectFunc));
#endif 
#if GTK_CHECK_VERSION(2, 14, 0)
R_RegisterCCallable("RGtk2", "S_GtkCalendarDetailFunc", ((DL_FUNC)S_GtkCalendarDetailFunc));
#endif 
#if GTK_CHECK_VERSION(2, 14, 0)
R_RegisterCCallable("RGtk2", "S_GtkClipboardURIReceivedFunc", ((DL_FUNC)S_GtkClipboardURIReceivedFunc));
#endif 
