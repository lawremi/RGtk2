#if GIO_CHECK_VERSION(2, 16, 0)
R_RegisterCCallable("RGtk2", "S_GIOSchedulerJobFunc", ((DL_FUNC)S_GIOSchedulerJobFunc));
#endif 
#if GIO_CHECK_VERSION(2, 16, 0)
R_RegisterCCallable("RGtk2", "S_GSimpleAsyncThreadFunc", ((DL_FUNC)S_GSimpleAsyncThreadFunc));
#endif 
#if GIO_CHECK_VERSION(2, 16, 0)
R_RegisterCCallable("RGtk2", "S_GAsyncReadyCallback", ((DL_FUNC)S_GAsyncReadyCallback));
#endif 
#if GIO_CHECK_VERSION(2, 16, 0)
R_RegisterCCallable("RGtk2", "S_GFileProgressCallback", ((DL_FUNC)S_GFileProgressCallback));
#endif 
#if GIO_CHECK_VERSION(2, 16, 0)
R_RegisterCCallable("RGtk2", "S_GFileReadMoreCallback", ((DL_FUNC)S_GFileReadMoreCallback));
#endif 
#if GIO_CHECK_VERSION(2, 16, 0)
R_RegisterCCallable("RGtk2", "S_GReallocFunc", ((DL_FUNC)S_GReallocFunc));
#endif 
