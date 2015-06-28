.class final Lcom/waze/OGLRenderer$OGLEvent;
.super Ljava/lang/Object;
.source "OGLRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/OGLRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OGLEvent"
.end annotation


# instance fields
.field final mEventId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "aEventId"

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput p1, p0, Lcom/waze/OGLRenderer$OGLEvent;->mEventId:I

    .line 262
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 265
    invoke-static {}, Lcom/waze/NativeManager;->getNativeCanvas()Lcom/waze/NativeCanvas;

    move-result-object v0

    .line 266
    .local v0, nativeCanvas:Lcom/waze/NativeCanvas;
    iget v1, p0, Lcom/waze/OGLRenderer$OGLEvent;->mEventId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 269
    invoke-virtual {v0}, Lcom/waze/NativeCanvas;->FlushNTV()V

    .line 278
    :goto_0
    return-void

    .line 271
    :cond_0
    iget v1, p0, Lcom/waze/OGLRenderer$OGLEvent;->mEventId:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 273
    const-string v1, "WAZE DEBUG"

    const-string v2, "OGL RENDERER DEBUG EVENT"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lcom/waze/NativeManager;->Notify(J)V

    goto :goto_0

    .line 277
    :cond_1
    iget v1, p0, Lcom/waze/OGLRenderer$OGLEvent;->mEventId:I

    invoke-virtual {v0, v1}, Lcom/waze/NativeCanvas;->OGLEventNTV(I)V

    goto :goto_0
.end method
