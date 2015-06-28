.class public Ljp/pioneer/mbg/pioneerkit/a/b/c;
.super Landroid/os/HandlerThread;


# instance fields
.field private a:Ljp/pioneer/mbg/pioneerkit/a/b/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x8

    invoke-direct {p0, p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljp/pioneer/mbg/pioneerkit/a/b/c;->a:Ljp/pioneer/mbg/pioneerkit/a/b/d;

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .locals 2

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/a/b/c;->a:Ljp/pioneer/mbg/pioneerkit/a/b/d;

    if-nez v0, :cond_0

    new-instance v0, Ljp/pioneer/mbg/pioneerkit/a/b/d;

    invoke-virtual {p0}, Ljp/pioneer/mbg/pioneerkit/a/b/c;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljp/pioneer/mbg/pioneerkit/a/b/d;-><init>(Ljp/pioneer/mbg/pioneerkit/a/b/c;Landroid/os/Looper;)V

    iput-object v0, p0, Ljp/pioneer/mbg/pioneerkit/a/b/c;->a:Ljp/pioneer/mbg/pioneerkit/a/b/d;

    :cond_0
    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/a/b/c;->a:Ljp/pioneer/mbg/pioneerkit/a/b/d;

    return-object v0
.end method

.method protected onLooperPrepared()V
    .locals 1

    const/4 v0, 0x4

    invoke-super {p0, v0}, Landroid/os/HandlerThread;->setPriority(I)V

    return-void
.end method
