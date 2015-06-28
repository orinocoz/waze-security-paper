.class Ljp/pioneer/mbg/pioneerkit/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljp/pioneer/mbg/pioneerkit/b/a;


# direct methods
.method constructor <init>(Ljp/pioneer/mbg/pioneerkit/b/a;)V
    .locals 0

    iput-object p1, p0, Ljp/pioneer/mbg/pioneerkit/b/b;->a:Ljp/pioneer/mbg/pioneerkit/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/b;->a:Ljp/pioneer/mbg/pioneerkit/b/a;

    invoke-static {v0}, Ljp/pioneer/mbg/pioneerkit/b/a;->a(Ljp/pioneer/mbg/pioneerkit/b/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/b;->a:Ljp/pioneer/mbg/pioneerkit/b/a;

    invoke-virtual {v0}, Ljp/pioneer/mbg/pioneerkit/b/a;->a()V

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/b;->a:Ljp/pioneer/mbg/pioneerkit/b/a;

    invoke-static {v0}, Ljp/pioneer/mbg/pioneerkit/b/a;->b(Ljp/pioneer/mbg/pioneerkit/b/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/b;->a:Ljp/pioneer/mbg/pioneerkit/b/a;

    invoke-static {v1}, Ljp/pioneer/mbg/pioneerkit/b/a;->c(Ljp/pioneer/mbg/pioneerkit/b/a;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
