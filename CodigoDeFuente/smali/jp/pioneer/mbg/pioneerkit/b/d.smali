.class Ljp/pioneer/mbg/pioneerkit/b/d;
.super Ljp/pioneer/mbg/pioneerkit/a/a/h;


# instance fields
.field final synthetic a:Ljp/pioneer/mbg/pioneerkit/b/a;


# direct methods
.method constructor <init>(Ljp/pioneer/mbg/pioneerkit/b/a;)V
    .locals 0

    iput-object p1, p0, Ljp/pioneer/mbg/pioneerkit/b/d;->a:Ljp/pioneer/mbg/pioneerkit/b/a;

    invoke-direct {p0}, Ljp/pioneer/mbg/pioneerkit/a/a/h;-><init>()V

    return-void
.end method

.method static synthetic a(Ljp/pioneer/mbg/pioneerkit/b/d;)Ljp/pioneer/mbg/pioneerkit/b/a;
    .locals 1

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/d;->a:Ljp/pioneer/mbg/pioneerkit/b/a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljp/pioneer/mbg/pioneerkit/b/s;

    invoke-direct {v1, p0}, Ljp/pioneer/mbg/pioneerkit/b/s;-><init>(Ljp/pioneer/mbg/pioneerkit/b/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(B[B)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljp/pioneer/mbg/pioneerkit/b/i;

    invoke-direct {v1, p0, p1, p2}, Ljp/pioneer/mbg/pioneerkit/b/i;-><init>(Ljp/pioneer/mbg/pioneerkit/b/d;B[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(I)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljp/pioneer/mbg/pioneerkit/b/e;

    invoke-direct {v1, p0, p1}, Ljp/pioneer/mbg/pioneerkit/b/e;-><init>(Ljp/pioneer/mbg/pioneerkit/b/d;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Landroid/view/KeyEvent;Z)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljp/pioneer/mbg/pioneerkit/b/f;

    invoke-direct {v1, p0, p1}, Ljp/pioneer/mbg/pioneerkit/b/f;-><init>(Ljp/pioneer/mbg/pioneerkit/b/d;Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Landroid/view/MotionEvent;Z)V
    .locals 0

    return-void
.end method

.method public a(Ljp/pioneer/mbg/pioneerkit/a/a/a;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljp/pioneer/mbg/pioneerkit/b/r;

    invoke-direct {v1, p0, p1}, Ljp/pioneer/mbg/pioneerkit/b/r;-><init>(Ljp/pioneer/mbg/pioneerkit/b/d;Ljp/pioneer/mbg/pioneerkit/a/a/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljp/pioneer/mbg/pioneerkit/a/a/c;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljp/pioneer/mbg/pioneerkit/b/l;

    invoke-direct {v1, p0, p1}, Ljp/pioneer/mbg/pioneerkit/b/l;-><init>(Ljp/pioneer/mbg/pioneerkit/b/d;Ljp/pioneer/mbg/pioneerkit/a/a/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljp/pioneer/mbg/pioneerkit/a/a/e;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljp/pioneer/mbg/pioneerkit/b/m;

    invoke-direct {v1, p0, p1}, Ljp/pioneer/mbg/pioneerkit/b/m;-><init>(Ljp/pioneer/mbg/pioneerkit/b/d;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a([B)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljp/pioneer/mbg/pioneerkit/b/q;

    invoke-direct {v1, p0, p1}, Ljp/pioneer/mbg/pioneerkit/b/q;-><init>(Ljp/pioneer/mbg/pioneerkit/b/d;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljp/pioneer/mbg/pioneerkit/b/g;

    invoke-direct {v1, p0}, Ljp/pioneer/mbg/pioneerkit/b/g;-><init>(Ljp/pioneer/mbg/pioneerkit/b/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(I)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljp/pioneer/mbg/pioneerkit/b/n;

    invoke-direct {v1, p0, p1}, Ljp/pioneer/mbg/pioneerkit/b/n;-><init>(Ljp/pioneer/mbg/pioneerkit/b/d;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Landroid/view/MotionEvent;Z)V
    .locals 0

    return-void
.end method

.method public b(Z)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljp/pioneer/mbg/pioneerkit/b/o;

    invoke-direct {v1, p0, p1}, Ljp/pioneer/mbg/pioneerkit/b/o;-><init>(Ljp/pioneer/mbg/pioneerkit/b/d;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b([B)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljp/pioneer/mbg/pioneerkit/b/h;

    invoke-direct {v1, p0}, Ljp/pioneer/mbg/pioneerkit/b/h;-><init>(Ljp/pioneer/mbg/pioneerkit/b/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljp/pioneer/mbg/pioneerkit/b/j;

    invoke-direct {v1, p0}, Ljp/pioneer/mbg/pioneerkit/b/j;-><init>(Ljp/pioneer/mbg/pioneerkit/b/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(I)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljp/pioneer/mbg/pioneerkit/b/p;

    invoke-direct {v1, p0, p1}, Ljp/pioneer/mbg/pioneerkit/b/p;-><init>(Ljp/pioneer/mbg/pioneerkit/b/d;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ljp/pioneer/mbg/pioneerkit/b/k;

    invoke-direct {v1, p0}, Ljp/pioneer/mbg/pioneerkit/b/k;-><init>(Ljp/pioneer/mbg/pioneerkit/b/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
