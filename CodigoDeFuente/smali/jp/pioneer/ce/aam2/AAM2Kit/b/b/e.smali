.class public abstract Ljp/pioneer/ce/aam2/AAM2Kit/b/b/e;
.super Ljava/lang/Object;


# instance fields
.field protected a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/b/e;->a:Z

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    iget-boolean v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/b/b/e;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PEventInputManager hasn\'t been initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public abstract a(Landroid/content/Context;)Z
.end method

.method public abstract a(Landroid/view/KeyEvent;Z)Z
.end method

.method public abstract a(Landroid/view/MotionEvent;Z)Z
.end method
