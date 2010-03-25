#include <stdio.h>

#include <R.h>
#include <Rversion.h>
#include <Rinternals.h>
#include <R_ext/Rdynload.h>
#include <R_ext/GraphicsEngine.h>
#include <R_ext/GraphicsDevice.h>

#if R_VERSION >= R_Version(2,8,0)
#ifndef NewDevDesc
#define NewDevDesc DevDesc
#endif
#endif

#define CREDC(C) (((unsigned int)(C))&0xff)
#define CGREENC(C) ((((unsigned int)(C))&0xff00)>>8)
#define CBLUEC(C) ((((unsigned int)(C))&0xff0000)>>16)
#define CALPHA(C) ((((unsigned int)(C))&0xff000000)>>24)

#define canvasColor(fp, prop, col) { if (CALPHA(col)==255) { fprintf(fp, "ctx.%s = \"rgb(%d,%d,%d)\"; ",prop, CREDC(col), CGREENC(col), CBLUEC(col)); } else { fprintf(fp, "ctx.%s = \"rgba(%d,%d,%d,%f)\"; ", prop, CREDC(col), CGREENC(col), CBLUEC(col), ((double)CALPHA(col))/255.); }; }

typedef struct _canvasDesc {
	/* device specific stuff */
	int col;
	int fill;

	/* Line characteristics */
	double lwd;
	int lty;
	R_GE_lineend lend;
	R_GE_linejoin ljoin;
	double lmitre;


	FILE *fp;
	pGEDevDesc RGE;
} canvasDesc;

static void canvasSetLineType( canvasDesc *cGD, pGEcontext gc)
{
	/* Line width */
	if (cGD->lwd != gc->lwd){
		cGD->lwd = gc->lwd;
		fprintf(cGD->fp,"ctx.lineWidth = %f; ",cGD->lwd);
	}

	/* Line end: par lend  */
	if (cGD->lend != gc->lend){
		cGD->lend = gc->lend;
		if (cGD->lend == GE_ROUND_CAP)
			fprintf(cGD->fp,"ctx.lineCap = \"round\"; ");
		if (cGD->lend == GE_BUTT_CAP)
			fprintf(cGD->fp,"ctx.lineCap = \"butt\"; ");
		if (cGD->lend == GE_SQUARE_CAP)
			fprintf(cGD->fp,"ctx.lineCap = \"square\"; ");
	}

	/* Line join: par ljoin */
	if (cGD->ljoin != gc->ljoin){
		cGD->ljoin = gc->ljoin;
		if (cGD->ljoin == GE_ROUND_JOIN)
			fprintf(cGD->fp,"ctx.lineJoin = \"round\"; ");
		if (cGD->ljoin == GE_MITRE_JOIN)
			fprintf(cGD->fp,"ctx.lineJoin = \"miter\"; ");
		if (cGD->ljoin == GE_BEVEL_JOIN)
			fprintf(cGD->fp,"ctx.lineJoin = \"bevel\"; ");
	}

	/* Miter limit */
	if (cGD->lmitre != gc->lmitre){
		cGD->lmitre = gc->lmitre;
		fprintf(cGD->fp,"ctx.miterLimit = %f; ",cGD->lmitre);
	}
	fprintf(cGD->fp,"\n");
}

static void canvasActivate(const pDevDesc RGD)
{ 
	canvasDesc *cGD = (canvasDesc *)RGD->deviceSpecific;
#ifdef CANVASDEBUG
	fprintf(cGD->fp,"//Activate(RGD=0x%x)\n",RGD);
#endif
}

static void canvasCircle(double x, double y, double r, const pGEcontext gc, pDevDesc RGD)
{
	canvasDesc *cGD = (canvasDesc *)RGD->deviceSpecific;

	fprintf(cGD->fp,"ctx.beginPath();");
    fprintf(cGD->fp,"ctx.arc(%f,%f,%f,0,Math.PI*2,true); ", x, y, r);
	if (CALPHA(gc->fill)){
		canvasColor(cGD->fp,"fillStyle",gc->fill);
		fprintf(cGD->fp,"ctx.fill(); ");
	}
	if (CALPHA(gc->col) && gc->lty!=-1){
		canvasSetLineType(cGD,gc);
		canvasColor(cGD->fp,"strokeStyle",gc->col);
		fprintf(cGD->fp,"ctx.stroke();");
	}
	fprintf(cGD->fp,"\n");

#ifdef CANVASDEBUG
	fprintf(cGD->fp,"//Circle(x=%f,y=%f,r=%f,gc=0x%x,RGD=0x%x)\n",x,y,r,gc,RGD);
	/*Rprintf("\tuser coords: x=%f,y=%f\n",fromDeviceX(x,GE_NDC,MGD->RGE),fromDeviceY(y,GE_NDC,MGD->RGE));*/
#endif
}

static void canvasClip(double x0, double x1, double y0, double y1, pDevDesc RGD)
{
	canvasDesc *cGD = (canvasDesc *)RGD->deviceSpecific;

	/* Too complicated to implement at the moment. The jist is that the context 
	 * save()/restore() functions save not only the clip region but the current
	 * transformation matrix and fill and stroke styles.
	 */
/*    if (x1<x0) { double h=x1; x1=x0; x0=h; };
    if (y1<y0) { double h=y1; y1=y0; y0=h; };

	if (RGD->left == x0 && RGD->right == x1 && RGD->top == y0 && RGD->bottom == y1){
		fprintf(cGD->fp,"ctx.restore();\n");
	} else {
		fprintf(cGD->fp,"ctx.rect(%f,%f,%f,%f); ",x0,y0,x1-x0,y1-y0);
		fprintf(cGD->fp,"ctx.clip();\n");
	}*/
#ifdef CANVASDEBUG
	Rprintf("Clip(x0=%f,y0=%f,x1=%f,y1=%f,RGD=0x%x)\n",x0,y0,x1,y1,RGD);
#endif
}

static void canvasClose(pDevDesc RGD)
{
	canvasDesc *cGD = (canvasDesc *)RGD->deviceSpecific;

	/* Save plot */
	fclose(cGD->fp);
	free(cGD);
	RGD->deviceSpecific = NULL;
#ifdef CANVASDEBUG
	Rprintf("Close(RGD=0x%x)\n",RGD);
#endif
}

static void canvasDeactivate(pDevDesc RGD)
{
#ifdef CANVASDEBUG
	Rprintf("Deactivate(RGD=0x%x)\n",RGD);
#endif
}
static Rboolean canvasLocator(double *x, double *y, pDevDesc RGD)
{
#ifdef CANVASDEBUG
	Rprintf("Locator(x=%f,y=%f,RGD=0x%x)\n",x,y,RGD);
#endif
}

static void canvasLine(double x1, double y1, double x2, double y2, const pGEcontext gc, pDevDesc RGD)
{
	canvasDesc *cGD = (canvasDesc *)RGD->deviceSpecific;

	if (CALPHA(gc->col) && gc->lty!=-1){
	canvasSetLineType(cGD,gc);
	canvasColor(cGD->fp,"strokeStyle",gc->col);
	fprintf(cGD->fp,"ctx.beginPath(); ctx.moveTo(%f,%f); ctx.lineTo(%f,%f); ctx.stroke();\n",x1,y1,x2,y2);
	}

#ifdef CANVASDEBUG
	fprintf(cGD->fp,"//Line(x0=%f,y0=%f,x1=%f,y1=%f,gc=0x%x,RGD=0x%x)\n",x1,y1,x2,y2,gc,RGD);
#endif
}

static void canvasMetricInfo(int c, const pGEcontext gc, double* ascent, double* descent, double* width, pDevDesc RGD)
{

	/* Unsure if we'll be able to provide this, as this relies entirely on the fonts
	 * installed on the browser system
	 */
	*ascent = *descent = *width = 0.0;
#ifdef CANVASDEBUG
	Rprintf("MetricInfo(c=%d,gc=0x%x,ascent=%f,descent=%f,width=%f,RGD=0x%x)\n",c,gc,*ascent,*descent,*width,RGD);
#endif
}
static void canvasMode(int mode, pDevDesc RGD)
{
#ifdef CANVASDEBUG
	Rprintf("Mode(mode=%d,RGD=0x%x)\n",mode,RGD);
#endif
}

static void canvasNewPage(const pGEcontext gc, pDevDesc RGD)
{
	canvasDesc *cGD = (canvasDesc *)RGD->deviceSpecific;
	fprintf(cGD->fp,"//NewPage\n");

	/* Set background only if we have a color */
	if (CALPHA(gc->fill)){
		canvasColor(cGD->fp,"fillStyle",gc->fill);
		fprintf(cGD->fp,"ctx.fillRect(0,0,%f,%f);\n",RGD->right,RGD->bottom);
	}

#ifdef CANVASDEBUG
	Rprintf("NewPage(gc=0x%x,RGD=0x%x)\n",gc,RGD);
#endif
}

static void canvasPolygon(int n, double *x, double *y, const pGEcontext gc, pDevDesc RGD)
{
	int i=1;
	canvasDesc *cGD = (canvasDesc *)RGD->deviceSpecific;

	if(n<2) return;

	canvasSetLineType(cGD,gc);

	fprintf(cGD->fp,"ctx.beginPath(); ctx.moveTo(%f,%f);\n",x[0],y[0]);
	while (i<n) { fprintf(cGD->fp,"ctx.lineTo(%f,%f);", x[i], y[i]); i++; }
	fprintf(cGD->fp,"ctx.closePath(); ");
	if (CALPHA(gc->fill)) {
		canvasColor(cGD->fp,"fillStyle",gc->fill);
		fprintf(cGD->fp,"ctx.fill(); ");
	}
	if (CALPHA(gc->col) && gc->lty!=-1) {
		canvasColor(cGD->fp,"strokeStyle",gc->col);
		fprintf(cGD->fp,"ctx.stroke(); ");
	}
	fprintf(cGD->fp,"\n");
#ifdef CANVASDEBUG
	{ int i=0;
	fprintf(cGD->fp,"//Polygon(n=%d,x=0x%x,y=0x%x,gc=0x%x,RGD=0x%x)\n\t//points: ",n,x,y,gc,RGD);
	while(i<n){ fprintf(cGD->fp,"(%.2f,%.2f) ",x[i],y[i]); i++;}; fprintf(cGD->fp,"\n");
	}
#endif
}

static void canvasPolyline(int n, double *x, double *y, const pGEcontext gc, pDevDesc RGD)
{
	int i=1;
	canvasDesc *cGD = (canvasDesc *)RGD->deviceSpecific;

	if (n<2) return;

	if (CALPHA(gc->col) && gc->lty!=-1) {
		fprintf(cGD->fp,"ctx.beginPath(); ctx.moveTo(%f,%f);\n",x[0],y[0]);
		while(i<n) { fprintf(cGD->fp,"ctx.lineTo(%f,%f);\n",x[i],y[i]); i++; }
		canvasSetLineType(cGD,gc);
		canvasColor(cGD->fp,"strokeStyle",gc->col);
		fprintf(cGD->fp,"ctx.stroke();\n");
	}
#ifdef CANVASDEBUG
	{ int i=0;
	fprintf(cGD->fp,"//Polyline(n=%d,x=0x%x,y=0x%x,gc=0x%x,RGD=0x%x)\n\t//points: ",n,x,y,gc,RGD);
	while(i<n){ fprintf(cGD->fp,"(%.2f,%.2f) ",x[i],y[i]); i++;} fprintf(cGD->fp,"\n");
	}
#endif
}

static void canvasRect(double x0, double y0, double x1, double y1, const pGEcontext gc, pDevDesc RGD)
{
	canvasDesc *cGD = (canvasDesc *)RGD->deviceSpecific;
	if (CALPHA(gc->fill)){
		canvasColor(cGD->fp,"fillStyle",gc->fill);
		fprintf(cGD->fp,"ctx.fillRect(%f,%f,%f,%f); ",x0,y0,x1-x0,y1-y0);
	}
	if (CALPHA(gc->col) && gc->lty!=-1){
		canvasSetLineType(cGD,gc);
		canvasColor(cGD->fp,"strokeStyle",gc->col);
		fprintf(cGD->fp,"ctx.strokeRect(%f,%f,%f,%f); ",x0,y0,x1-x0,y1-y0);
	}
#ifdef CANVASDEBUG
	fprintf(cGD->fp,"//Rect(x0=%f,y0=%f,x1=%f,y1=%f,gc=0x%x,RGD=0x%x)\n",x0,y0,x1,y1,gc,RGD);
#endif

}
static void canvasSize(double *left, double *right, double *bottom, double *top, pDevDesc RGD)
{
#ifdef CANVASDEBUG
	Rprintf("Size(left=%f,right=%f,bottom=%f,top=%f,RGD=0x%x)\n",*left,*right,*bottom,*top,RGD);
#endif
}

static double canvasStrWidth(const char *str, const pGEcontext gc, pDevDesc RGD)
{

	/* 10px sans-serif is default, however 7px provides a better guess. */
	return strlen(str) * 7;

#ifdef CANVASDEBUG
	Rprintf("StrWidth(str=%s,gc=0x%x,RGD=0x%x)\n",str,gc,RGD);
#endif
}

static void canvasText(double x, double y, const char *str, double rot, double hadj, const pGEcontext gc, pDevDesc RGD)
{
	canvasDesc *cGD = (canvasDesc *)RGD->deviceSpecific;

	if (hadj!=0. || rot != 0.){
		double strextent = strlen(str) * 7; /* wild guess that each char is 10px wide */
		if (rot!=0.){
			fprintf(cGD->fp,"ctx.save(); ");
			canvasColor(cGD->fp,"fillStyle",gc->col);
			fprintf(cGD->fp,"ctx.translate(%f,%f); ",x,y);
			fprintf(cGD->fp,"ctx.rotate(-%f / 180 * Math.PI); ",rot);
			fprintf(cGD->fp,"ctx.fillText(\"%s\",%f,0); ",str,-strextent*hadj);
			fprintf(cGD->fp,"ctx.restore();\n");
		} else {
			canvasColor(cGD->fp,"fillStyle",gc->col);
			fprintf(cGD->fp,"ctx.fillText(\"%s\",%f,%f); ",str,x - strextent*hadj,y);
		}
	} else {
		canvasColor(cGD->fp,"fillStyle",gc->col);
		fprintf(cGD->fp,"ctx.fillText(\"%s\",%f,%f); ",str,x,y);
	}

#ifdef CANVASDEBUG
	fprintf(cGD->fp,"//Text(x=%f,y=%f,str=%s,rot=%f,hadj=%f,gc=0x%x,RGD=0x%x)\n",x,y,str,rot,hadj,gc,RGD);
#endif
}

SEXP canvas_new_device(SEXP args)
{
	/* R Graphics Device: in GraphicsDevice.h */
	pDevDesc RGD;

	/* R Graphics Engine: in GraphicsEngine.h */
	pGEDevDesc RGE;

	/* canvas Graphics Device */
	canvasDesc *cGD;

	FILE *fp = NULL;
	int width, height, bgcolor;

	SEXP v;
	args=CDR(args);
	v=CAR(args); args=CDR(args);
	if (isString(v)){
		PROTECT(v);
		fp = fopen(CHAR(STRING_ELT(v,0)),"w");
		UNPROTECT(1);
		if (fp == NULL)
			error("could not open file");
	} else {
		error("file must be a filename");
	}

	v=CAR(args); args=CDR(args);
	if (!isNumeric(v)) {fclose(fp); error("`width' must be a number");}
	width=asInteger(v);
	v=CAR(args); args=CDR(args);
	if (!isNumeric(v)) {fclose(fp); error("`height' must be a number");}
	height=asInteger(v);
	v=CAR(args); args=CDR(args);
	if (!isString(v) && !isInteger(v) && !isLogical(v) && !isReal(v))
		error("invalid color specification for `bg'");
	bgcolor = RGBpar(v, 0);
#ifdef CANVASDEBUG
	Rprintf("canvas_new_device(width=%d,height=%d,fd=%x)\n", width, height, fp);
#endif
	
    R_CheckDeviceAvailable();

	if (!(RGD = (pDevDesc)calloc(1, sizeof(NewDevDesc)))){
		fclose(fp);
	    error("calloc failed for canvas device");
	}

    if (!(cGD = (canvasDesc *)calloc(1, sizeof(canvasDesc)))){
		free(RGD);
		fclose(fp);
	    error("calloc failed for canvas device");
	}

	cGD->fp = fp;

    RGD->deviceSpecific = (void *) cGD;

	/* Callbacks */
    RGD->close = canvasClose;
    RGD->activate = canvasActivate;
    RGD->deactivate = canvasDeactivate;
    RGD->size = canvasSize;
    RGD->newPage = canvasNewPage;
    RGD->clip = canvasClip;
    RGD->strWidth = canvasStrWidth;
    RGD->text = canvasText;
    RGD->rect = canvasRect;
    RGD->circle = canvasCircle;
    RGD->line = canvasLine;
    RGD->polyline = canvasPolyline;
    RGD->polygon = canvasPolygon;
    RGD->locator = canvasLocator;
    RGD->mode = canvasMode;
    RGD->metricInfo = canvasMetricInfo;
	RGD->hasTextUTF8 = TRUE;
    RGD->strWidthUTF8 = canvasStrWidth;
    RGD->textUTF8 = canvasText;
	RGD->wantSymbolUTF8 = TRUE;

	/* Initialise RGD */
	RGD->left = RGD->clipLeft = 0;
	RGD->top = RGD->clipTop = 0;
	RGD->right = RGD->clipRight = width;
	RGD->bottom = RGD->clipBottom = height;
	RGD->xCharOffset = 0.4900;
	RGD->yCharOffset = 0.3333;
	RGD->yLineBias = 0.1;
	RGD->ipr[0] = 1.0/72.0;
	RGD->ipr[1] = 1.0/72.0;
	RGD->cra[0] = 0.9 * 10;
	RGD->cra[1] = 1.2 * 10;
	RGD->gamma = 1.0;
	RGD->canClip = FALSE;
    RGD->canChangeGamma = FALSE;
    RGD->canHAdj = 2;
	RGD->startps = 10.0;
	RGD->startcol = R_RGB(0,0,0);
	RGD->startfill = bgcolor;
	RGD->startlty = LTY_SOLID;
	RGD->startfont = 1;
	RGD->startgamma = RGD->gamma;
    RGD->displayListOn = FALSE;

	/* Add to the device list */
	RGE = GEcreateDevDesc(RGD);
	cGD->RGE = RGE;
	GEaddDevice(RGE);
	GEinitDisplayList(RGE);

	/*return ScalarInteger(1 + GEdeviceNumber(RGE));*/
    return R_NilValue;
}

R_ExternalMethodDef canvas_externals[] = {
	{"canvas_new_device",(DL_FUNC) &canvas_new_device,3},
	{NULL,NULL,0}
};

void R_init_canvas(DllInfo *info){
	R_registerRoutines(info, NULL, NULL, NULL, canvas_externals);
}
