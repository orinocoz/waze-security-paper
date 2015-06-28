.class public abstract Lcom/waze/EditBox$EditBoxCallback;
.super Ljava/lang/Object;
.source "EditBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/EditBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EditBoxCallback"
.end annotation


# instance fields
.field private calledCallback:Z

.field private volatile mCbContext:J

.field private volatile mResult:Z

.field private volatile mText:Ljava/lang/String;


# direct methods
.method constructor <init>(J)V
    .locals 2
    .parameter "aCbContext"

    .prologue
    const/4 v1, 0x0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-boolean v1, p0, Lcom/waze/EditBox$EditBoxCallback;->calledCallback:Z

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/EditBox$EditBoxCallback;->mText:Ljava/lang/String;

    .line 243
    iput-boolean v1, p0, Lcom/waze/EditBox$EditBoxCallback;->mResult:Z

    .line 244
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/waze/EditBox$EditBoxCallback;->mCbContext:J

    .line 220
    iput-wide p1, p0, Lcom/waze/EditBox$EditBoxCallback;->mCbContext:J

    .line 221
    return-void
.end method


# virtual methods
.method public abstract CallbackDone(ILjava/lang/String;J)V
.end method

.method protected Post(ZLjava/lang/String;)V
    .locals 1
    .parameter "aResult"
    .parameter "aText"

    .prologue
    .line 234
    iput-object p2, p0, Lcom/waze/EditBox$EditBoxCallback;->mText:Ljava/lang/String;

    .line 235
    iput-boolean p1, p0, Lcom/waze/EditBox$EditBoxCallback;->mResult:Z

    .line 236
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    .line 237
    .local v0, lMgr:Lcom/waze/NativeManager;
    invoke-virtual {v0, p0}, Lcom/waze/NativeManager;->PostRunnable(Ljava/lang/Runnable;)V

    .line 238
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 224
    iget-boolean v2, p0, Lcom/waze/EditBox$EditBoxCallback;->mResult:Z

    if-eqz v2, :cond_0

    move v0, v1

    .line 225
    .local v0, res:I
    :goto_0
    iget-boolean v2, p0, Lcom/waze/EditBox$EditBoxCallback;->calledCallback:Z

    if-eqz v2, :cond_1

    .line 226
    const-string v1, "Calling EditBox callback twice?"

    invoke-static {v1}, Lcom/waze/Logger;->ee(Ljava/lang/String;)V

    .line 231
    :goto_1
    return-void

    .line 224
    .end local v0           #res:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 228
    .restart local v0       #res:I
    :cond_1
    iput-boolean v1, p0, Lcom/waze/EditBox$EditBoxCallback;->calledCallback:Z

    .line 229
    iget-object v1, p0, Lcom/waze/EditBox$EditBoxCallback;->mText:Ljava/lang/String;

    iget-wide v2, p0, Lcom/waze/EditBox$EditBoxCallback;->mCbContext:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/waze/EditBox$EditBoxCallback;->CallbackDone(ILjava/lang/String;J)V

    goto :goto_1
.end method
