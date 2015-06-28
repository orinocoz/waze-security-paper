.class public Lcom/waze/ActivityNativeManagerBase;
.super Ljava/lang/Object;
.source "ActivityNativeManagerBase.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field protected mContext:Landroid/app/Activity;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/ActivityNativeManagerBase;->mContext:Landroid/app/Activity;

    .line 74
    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "aContext"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/ActivityNativeManagerBase;->mContext:Landroid/app/Activity;

    .line 77
    iput-object p1, p0, Lcom/waze/ActivityNativeManagerBase;->mContext:Landroid/app/Activity;

    .line 78
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "command"

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/waze/ActivityNativeManagerBase;->post(Ljava/lang/Runnable;)V

    .line 62
    return-void
.end method

.method public initNativeLayer()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "WAZE"

    const-string v1, "Override this method to initialize the native layer"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "aEvent"

    .prologue
    .line 53
    invoke-static {p1}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 54
    return-void
.end method

.method public postOnUI(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "aEvent"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/waze/ActivityNativeManagerBase;->mContext:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/waze/ActivityNativeManagerBase;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 45
    :cond_0
    return-void
.end method

.method public setContext(Landroid/app/Activity;)V
    .locals 0
    .parameter "aContext"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/waze/ActivityNativeManagerBase;->mContext:Landroid/app/Activity;

    .line 70
    return-void
.end method
