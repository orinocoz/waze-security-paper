.class public Lorg/achartengine/GraphicalView;
.super Landroid/view/View;
.source "GraphicalView.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final ZOOM_BUTTONS_COLOR:I = 0x0

.field private static final ZOOM_SIZE:I = 0x2d


# instance fields
.field private fitZoom:Lorg/achartengine/tools/FitZoom;

.field private fitZoomImage:Landroid/graphics/Bitmap;

.field private mChart:Lorg/achartengine/chart/AbstractChart;

.field private mHandler:Landroid/os/Handler;

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field private mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

.field private oldX:F

.field private oldX2:F

.field private oldY:F

.field private oldY2:F

.field private pan:Lorg/achartengine/tools/Pan;

.field private pinchZoom:Lorg/achartengine/tools/Zoom;

.field private zoomIn:Lorg/achartengine/tools/Zoom;

.field private zoomInImage:Landroid/graphics/Bitmap;

.field private zoomOut:Lorg/achartengine/tools/Zoom;

.field private zoomOutImage:Landroid/graphics/Bitmap;

.field private zoomR:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x96

    .line 67
    const/16 v0, 0xaf

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lorg/achartengine/GraphicalView;->ZOOM_BUTTONS_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/achartengine/chart/AbstractChart;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 88
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/achartengine/GraphicalView;->mRect:Landroid/graphics/Rect;

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/achartengine/GraphicalView;->zoomR:Landroid/graphics/RectF;

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/achartengine/GraphicalView;->mPaint:Landroid/graphics/Paint;

    .line 89
    iput-object p2, p0, Lorg/achartengine/GraphicalView;->mChart:Lorg/achartengine/chart/AbstractChart;

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/achartengine/GraphicalView;->mHandler:Landroid/os/Handler;

    .line 91
    iget-object v0, p0, Lorg/achartengine/GraphicalView;->mChart:Lorg/achartengine/chart/AbstractChart;

    instance-of v0, v0, Lorg/achartengine/chart/XYChart;

    if-eqz v0, :cond_4

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "image/zoom_in.png"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/achartengine/GraphicalView;->zoomInImage:Landroid/graphics/Bitmap;

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "image/zoom_out.png"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/achartengine/GraphicalView;->zoomOutImage:Landroid/graphics/Bitmap;

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "image/zoom-1.png"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/achartengine/GraphicalView;->fitZoomImage:Landroid/graphics/Bitmap;

    .line 96
    iget-object v0, p0, Lorg/achartengine/GraphicalView;->mChart:Lorg/achartengine/chart/AbstractChart;

    check-cast v0, Lorg/achartengine/chart/XYChart;

    invoke-virtual {v0}, Lorg/achartengine/chart/XYChart;->getRenderer()Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-result-object v0

    iput-object v0, p0, Lorg/achartengine/GraphicalView;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    .line 97
    iget-object v0, p0, Lorg/achartengine/GraphicalView;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getMarginsColor()I

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/achartengine/GraphicalView;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    iget-object v1, p0, Lorg/achartengine/GraphicalView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setMarginsColor(I)V

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/achartengine/GraphicalView;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isPanXEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/achartengine/GraphicalView;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isPanYEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    :cond_1
    new-instance v1, Lorg/achartengine/tools/Pan;

    iget-object v0, p0, Lorg/achartengine/GraphicalView;->mChart:Lorg/achartengine/chart/AbstractChart;

    check-cast v0, Lorg/achartengine/chart/XYChart;

    invoke-direct {v1, v0}, Lorg/achartengine/tools/Pan;-><init>(Lorg/achartengine/chart/XYChart;)V

    iput-object v1, p0, Lorg/achartengine/GraphicalView;->pan:Lorg/achartengine/tools/Pan;

    .line 103
    :cond_2
    iget-object v0, p0, Lorg/achartengine/GraphicalView;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isZoomXEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/achartengine/GraphicalView;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isZoomYEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    :cond_3
    new-instance v1, Lorg/achartengine/tools/Zoom;

    iget-object v0, p0, Lorg/achartengine/GraphicalView;->mChart:Lorg/achartengine/chart/AbstractChart;

    check-cast v0, Lorg/achartengine/chart/XYChart;

    iget-object v2, p0, Lorg/achartengine/GraphicalView;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getZoomRate()F

    move-result v2

    invoke-direct {v1, v0, v4, v2}, Lorg/achartengine/tools/Zoom;-><init>(Lorg/achartengine/chart/XYChart;ZF)V

    iput-object v1, p0, Lorg/achartengine/GraphicalView;->zoomIn:Lorg/achartengine/tools/Zoom;

    .line 105
    new-instance v1, Lorg/achartengine/tools/Zoom;

    iget-object v0, p0, Lorg/achartengine/GraphicalView;->mChart:Lorg/achartengine/chart/AbstractChart;

    check-cast v0, Lorg/achartengine/chart/XYChart;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/achartengine/GraphicalView;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getZoomRate()F

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lorg/achartengine/tools/Zoom;-><init>(Lorg/achartengine/chart/XYChart;ZF)V

    iput-object v1, p0, Lorg/achartengine/GraphicalView;->zoomOut:Lorg/achartengine/tools/Zoom;

    .line 106
    new-instance v1, Lorg/achartengine/tools/FitZoom;

    iget-object v0, p0, Lorg/achartengine/GraphicalView;->mChart:Lorg/achartengine/chart/AbstractChart;

    check-cast v0, Lorg/achartengine/chart/XYChart;

    invoke-direct {v1, v0}, Lorg/achartengine/tools/FitZoom;-><init>(Lorg/achartengine/chart/XYChart;)V

    iput-object v1, p0, Lorg/achartengine/GraphicalView;->fitZoom:Lorg/achartengine/tools/FitZoom;

    .line 107
    new-instance v1, Lorg/achartengine/tools/Zoom;

    iget-object v0, p0, Lorg/achartengine/GraphicalView;->mChart:Lorg/achartengine/chart/AbstractChart;

    check-cast v0, Lorg/achartengine/chart/XYChart;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v0, v4, v2}, Lorg/achartengine/tools/Zoom;-><init>(Lorg/achartengine/chart/XYChart;ZF)V

    iput-object v1, p0, Lorg/achartengine/GraphicalView;->pinchZoom:Lorg/achartengine/tools/Zoom;

    .line 110
    :cond_4
    return-void
.end method


# virtual methods
.method public handleTouch(Landroid/view/MotionEvent;)V
    .locals 10
    .parameter

    .prologue
    const/high16 v6, 0x4040

    const/high16 v3, -0x4080

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 135
    iget-object v1, p0, Lorg/achartengine/GraphicalView;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    if-eqz v1, :cond_9

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 136
    iget v0, p0, Lorg/achartengine/GraphicalView;->oldX:F

    cmpl-float v0, v0, v5

    if-gez v0, :cond_0

    iget v0, p0, Lorg/achartengine/GraphicalView;->oldY:F

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_5

    .line 137
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 138
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v4, :cond_7

    iget v0, p0, Lorg/achartengine/GraphicalView;->oldX2:F

    cmpl-float v0, v0, v5

    if-gez v0, :cond_1

    iget v0, p0, Lorg/achartengine/GraphicalView;->oldY2:F

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_7

    :cond_1
    iget-object v0, p0, Lorg/achartengine/GraphicalView;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isZoomXEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/achartengine/GraphicalView;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isZoomYEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 140
    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 141
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 142
    sub-float v0, v1, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 143
    sub-float v5, v2, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 144
    iget v6, p0, Lorg/achartengine/GraphicalView;->oldX:F

    iget v7, p0, Lorg/achartengine/GraphicalView;->oldX2:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 145
    iget v7, p0, Lorg/achartengine/GraphicalView;->oldY:F

    iget v8, p0, Lorg/achartengine/GraphicalView;->oldY2:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 147
    iget v8, p0, Lorg/achartengine/GraphicalView;->oldX:F

    sub-float v8, v1, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lorg/achartengine/GraphicalView;->oldY:F

    sub-float v9, v2, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_6

    .line 148
    div-float/2addr v0, v6

    .line 152
    :goto_0
    float-to-double v5, v0

    const-wide v7, 0x3fed16872b020c4aL

    cmpl-double v5, v5, v7

    if-lez v5, :cond_3

    float-to-double v5, v0

    const-wide v7, 0x3ff199999999999aL

    cmpg-double v5, v5, v7

    if-gez v5, :cond_3

    .line 153
    iget-object v5, p0, Lorg/achartengine/GraphicalView;->pinchZoom:Lorg/achartengine/tools/Zoom;

    invoke-virtual {v5, v0}, Lorg/achartengine/tools/Zoom;->setZoomRate(F)V

    .line 154
    iget-object v0, p0, Lorg/achartengine/GraphicalView;->pinchZoom:Lorg/achartengine/tools/Zoom;

    invoke-virtual {v0}, Lorg/achartengine/tools/Zoom;->apply()V

    .line 156
    :cond_3
    iput v3, p0, Lorg/achartengine/GraphicalView;->oldX2:F

    .line 157
    iput v4, p0, Lorg/achartengine/GraphicalView;->oldY2:F

    .line 163
    :cond_4
    :goto_1
    iput v1, p0, Lorg/achartengine/GraphicalView;->oldX:F

    .line 164
    iput v2, p0, Lorg/achartengine/GraphicalView;->oldY:F

    .line 165
    invoke-virtual {p0}, Lorg/achartengine/GraphicalView;->repaint()V

    .line 190
    :cond_5
    :goto_2
    return-void

    .line 150
    :cond_6
    div-float v0, v5, v7

    goto :goto_0

    .line 158
    :cond_7
    iget-object v0, p0, Lorg/achartengine/GraphicalView;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isPanXEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/achartengine/GraphicalView;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isPanYEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 159
    :cond_8
    iget-object v0, p0, Lorg/achartengine/GraphicalView;->pan:Lorg/achartengine/tools/Pan;

    iget v3, p0, Lorg/achartengine/GraphicalView;->oldX:F

    iget v4, p0, Lorg/achartengine/GraphicalView;->oldY:F

    invoke-virtual {v0, v3, v4, v1, v2}, Lorg/achartengine/tools/Pan;->apply(FFFF)V

    .line 160
    iput v5, p0, Lorg/achartengine/GraphicalView;->oldX2:F

    .line 161
    iput v5, p0, Lorg/achartengine/GraphicalView;->oldY2:F

    goto :goto_1

    .line 167
    :cond_9
    if-nez v0, :cond_d

    .line 168
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lorg/achartengine/GraphicalView;->oldX:F

    .line 169
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lorg/achartengine/GraphicalView;->oldY:F

    .line 170
    iget-object v0, p0, Lorg/achartengine/GraphicalView;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/achartengine/GraphicalView;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isZoomXEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/achartengine/GraphicalView;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isZoomYEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_a
    iget-object v0, p0, Lorg/achartengine/GraphicalView;->zoomR:Landroid/graphics/RectF;

    iget v1, p0, Lorg/achartengine/GraphicalView;->oldX:F

    iget v2, p0, Lorg/achartengine/GraphicalView;->oldY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 172
    iget v0, p0, Lorg/achartengine/GraphicalView;->oldX:F

    iget-object v1, p0, Lorg/achartengine/GraphicalView;->zoomR:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lorg/achartengine/GraphicalView;->zoomR:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_b

    .line 173
    iget-object v0, p0, Lorg/achartengine/GraphicalView;->zoomIn:Lorg/achartengine/tools/Zoom;

    invoke-virtual {v0}, Lorg/achartengine/tools/Zoom;->apply()V

    goto :goto_2

    .line 174
    :cond_b
    iget v0, p0, Lorg/achartengine/GraphicalView;->oldX:F

    iget-object v1, p0, Lorg/achartengine/GraphicalView;->zoomR:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lorg/achartengine/GraphicalView;->zoomR:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    .line 175
    iget-object v0, p0, Lorg/achartengine/GraphicalView;->zoomOut:Lorg/achartengine/tools/Zoom;

    invoke-virtual {v0}, Lorg/achartengine/tools/Zoom;->apply()V

    goto/16 :goto_2

    .line 177
    :cond_c
    iget-object v0, p0, Lorg/achartengine/GraphicalView;->fitZoom:Lorg/achartengine/tools/FitZoom;

    invoke-virtual {v0}, Lorg/achartengine/tools/FitZoom;->apply()V

    goto/16 :goto_2

    .line 180
    :cond_d
    if-eq v0, v4, :cond_e

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 181
    :cond_e
    iput v5, p0, Lorg/achartengine/GraphicalView;->oldX:F

    .line 182
    iput v5, p0, Lorg/achartengine/GraphicalView;->oldY:F

    .line 183
    iput v5, p0, Lorg/achartengine/GraphicalView;->oldX2:F

    .line 184
    iput v5, p0, Lorg/achartengine/GraphicalView;->oldY2:F

    .line 185
    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 186
    iput v3, p0, Lorg/achartengine/GraphicalView;->oldX:F

    .line 187
    iput v3, p0, Lorg/achartengine/GraphicalView;->oldY:F

    goto/16 :goto_2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter

    .prologue
    const/high16 v10, 0x4170

    const/4 v9, 0x0

    .line 114
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 115
    iget-object v0, p0, Lorg/achartengine/GraphicalView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 116
    iget-object v0, p0, Lorg/achartengine/GraphicalView;->mRect:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 117
    iget-object v0, p0, Lorg/achartengine/GraphicalView;->mRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 118
    iget-object v0, p0, Lorg/achartengine/GraphicalView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 119
    iget-object v0, p0, Lorg/achartengine/GraphicalView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 120
    iget-object v0, p0, Lorg/achartengine/GraphicalView;->mChart:Lorg/achartengine/chart/AbstractChart;

    iget-object v6, p0, Lorg/achartengine/GraphicalView;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/achartengine/chart/AbstractChart;->draw(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V

    .line 121
    iget-object v0, p0, Lorg/achartengine/GraphicalView;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/achartengine/GraphicalView;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isZoomXEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/achartengine/GraphicalView;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isZoomYEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/achartengine/GraphicalView;->mPaint:Landroid/graphics/Paint;

    sget v1, Lorg/achartengine/GraphicalView;->ZOOM_BUTTONS_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget-object v0, p0, Lorg/achartengine/GraphicalView;->zoomR:Landroid/graphics/RectF;

    add-int v1, v2, v4

    add-int/lit16 v1, v1, -0x87

    int-to-float v1, v1

    add-int v6, v3, v5

    int-to-float v6, v6

    const v7, 0x420b8000

    sub-float/2addr v6, v7

    add-int v7, v2, v4

    int-to-float v7, v7

    add-int v8, v3, v5

    int-to-float v8, v8

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 125
    iget-object v0, p0, Lorg/achartengine/GraphicalView;->zoomR:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/achartengine/GraphicalView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v10, v10, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 126
    add-int v0, v3, v5

    int-to-float v0, v0

    const/high16 v1, 0x41e1

    sub-float/2addr v0, v1

    .line 127
    iget-object v1, p0, Lorg/achartengine/GraphicalView;->zoomInImage:Landroid/graphics/Bitmap;

    add-int v3, v2, v4

    int-to-float v3, v3

    const v5, 0x42f78000

    sub-float/2addr v3, v5

    invoke-virtual {p1, v1, v3, v0, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 128
    iget-object v1, p0, Lorg/achartengine/GraphicalView;->zoomOutImage:Landroid/graphics/Bitmap;

    add-int v3, v2, v4

    int-to-float v3, v3

    const v5, 0x429d8000

    sub-float/2addr v3, v5

    invoke-virtual {p1, v1, v3, v0, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 129
    iget-object v1, p0, Lorg/achartengine/GraphicalView;->fitZoomImage:Landroid/graphics/Bitmap;

    add-int/2addr v2, v4

    int-to-float v2, v2

    const/high16 v3, 0x4207

    sub-float/2addr v2, v3

    invoke-virtual {p1, v1, v2, v0, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 131
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Lorg/achartengine/GraphicalView;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/achartengine/GraphicalView;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isPanXEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/achartengine/GraphicalView;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isPanYEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/achartengine/GraphicalView;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isZoomXEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/achartengine/GraphicalView;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isZoomYEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    :cond_0
    invoke-virtual {p0, p1}, Lorg/achartengine/GraphicalView;->handleTouch(Landroid/view/MotionEvent;)V

    .line 240
    const/4 v0, 0x1

    .line 242
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public repaint()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lorg/achartengine/GraphicalView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/achartengine/GraphicalView$1;

    invoke-direct {v1, p0}, Lorg/achartengine/GraphicalView$1;-><init>(Lorg/achartengine/GraphicalView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 254
    return-void
.end method

.method public repaint(IIII)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 265
    iget-object v6, p0, Lorg/achartengine/GraphicalView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lorg/achartengine/GraphicalView$2;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/achartengine/GraphicalView$2;-><init>(Lorg/achartengine/GraphicalView;IIII)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 270
    return-void
.end method

.method public setZoomRate(F)V
    .locals 1
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lorg/achartengine/GraphicalView;->zoomIn:Lorg/achartengine/tools/Zoom;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/achartengine/GraphicalView;->zoomOut:Lorg/achartengine/tools/Zoom;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lorg/achartengine/GraphicalView;->zoomIn:Lorg/achartengine/tools/Zoom;

    invoke-virtual {v0, p1}, Lorg/achartengine/tools/Zoom;->setZoomRate(F)V

    .line 200
    iget-object v0, p0, Lorg/achartengine/GraphicalView;->zoomOut:Lorg/achartengine/tools/Zoom;

    invoke-virtual {v0, p1}, Lorg/achartengine/tools/Zoom;->setZoomRate(F)V

    .line 202
    :cond_0
    return-void
.end method

.method public zoomIn()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lorg/achartengine/GraphicalView;->zoomIn:Lorg/achartengine/tools/Zoom;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lorg/achartengine/GraphicalView;->zoomIn:Lorg/achartengine/tools/Zoom;

    invoke-virtual {v0}, Lorg/achartengine/tools/Zoom;->apply()V

    .line 210
    invoke-virtual {p0}, Lorg/achartengine/GraphicalView;->repaint()V

    .line 212
    :cond_0
    return-void
.end method

.method public zoomOut()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/achartengine/GraphicalView;->zoomOut:Lorg/achartengine/tools/Zoom;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lorg/achartengine/GraphicalView;->zoomOut:Lorg/achartengine/tools/Zoom;

    invoke-virtual {v0}, Lorg/achartengine/tools/Zoom;->apply()V

    .line 220
    invoke-virtual {p0}, Lorg/achartengine/GraphicalView;->repaint()V

    .line 222
    :cond_0
    return-void
.end method

.method public zoomReset()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lorg/achartengine/GraphicalView;->fitZoom:Lorg/achartengine/tools/FitZoom;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lorg/achartengine/GraphicalView;->fitZoom:Lorg/achartengine/tools/FitZoom;

    invoke-virtual {v0}, Lorg/achartengine/tools/FitZoom;->apply()V

    .line 230
    invoke-virtual {p0}, Lorg/achartengine/GraphicalView;->repaint()V

    .line 232
    :cond_0
    return-void
.end method
