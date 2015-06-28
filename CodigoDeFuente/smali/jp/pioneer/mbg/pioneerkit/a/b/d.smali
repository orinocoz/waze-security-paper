.class Ljp/pioneer/mbg/pioneerkit/a/b/d;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Ljp/pioneer/mbg/pioneerkit/a/b/c;


# direct methods
.method public constructor <init>(Ljp/pioneer/mbg/pioneerkit/a/b/c;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Ljp/pioneer/mbg/pioneerkit/a/b/d;->a:Ljp/pioneer/mbg/pioneerkit/a/b/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0xf000

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0xff08

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Ljp/pioneer/mbg/pioneerkit/a/a/m;->a(Landroid/os/Message;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljp/pioneer/mbg/pioneerkit/a/b/a;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
