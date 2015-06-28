.class Ljp/pioneer/mbg/pioneerkit/b/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljp/pioneer/mbg/pioneerkit/b/d;

.field private final synthetic b:Ljp/pioneer/mbg/pioneerkit/a/a/a;


# direct methods
.method constructor <init>(Ljp/pioneer/mbg/pioneerkit/b/d;Ljp/pioneer/mbg/pioneerkit/a/a/a;)V
    .locals 0

    iput-object p1, p0, Ljp/pioneer/mbg/pioneerkit/b/r;->a:Ljp/pioneer/mbg/pioneerkit/b/d;

    iput-object p2, p0, Ljp/pioneer/mbg/pioneerkit/b/r;->b:Ljp/pioneer/mbg/pioneerkit/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/r;->b:Ljp/pioneer/mbg/pioneerkit/a/a/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/r;->a:Ljp/pioneer/mbg/pioneerkit/b/d;

    invoke-static {v0}, Ljp/pioneer/mbg/pioneerkit/b/d;->a(Ljp/pioneer/mbg/pioneerkit/b/d;)Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v0

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/r;->a:Ljp/pioneer/mbg/pioneerkit/b/d;

    invoke-static {v1}, Ljp/pioneer/mbg/pioneerkit/b/d;->a(Ljp/pioneer/mbg/pioneerkit/b/d;)Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v1

    iget-object v1, v1, Ljp/pioneer/mbg/pioneerkit/b/a;->e:Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;

    invoke-static {v0, v1}, Ljp/pioneer/mbg/pioneerkit/b/a;->a(Ljp/pioneer/mbg/pioneerkit/b/a;Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/r;->a:Ljp/pioneer/mbg/pioneerkit/b/d;

    invoke-static {v0}, Ljp/pioneer/mbg/pioneerkit/b/d;->a(Ljp/pioneer/mbg/pioneerkit/b/d;)Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v0

    iget-object v0, v0, Ljp/pioneer/mbg/pioneerkit/b/a;->e:Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;

    if-nez v0, :cond_1

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/r;->a:Ljp/pioneer/mbg/pioneerkit/b/d;

    invoke-static {v0}, Ljp/pioneer/mbg/pioneerkit/b/d;->a(Ljp/pioneer/mbg/pioneerkit/b/d;)Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v0

    new-instance v1, Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;

    invoke-direct {v1}, Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;-><init>()V

    iput-object v1, v0, Ljp/pioneer/mbg/pioneerkit/b/a;->e:Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;

    :cond_1
    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/r;->a:Ljp/pioneer/mbg/pioneerkit/b/d;

    invoke-static {v0}, Ljp/pioneer/mbg/pioneerkit/b/d;->a(Ljp/pioneer/mbg/pioneerkit/b/d;)Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v0

    iget-object v0, v0, Ljp/pioneer/mbg/pioneerkit/b/a;->e:Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/r;->b:Ljp/pioneer/mbg/pioneerkit/a/a/a;

    invoke-virtual {v1}, Ljp/pioneer/mbg/pioneerkit/a/a/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;->a(I)V

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/r;->a:Ljp/pioneer/mbg/pioneerkit/b/d;

    invoke-static {v0}, Ljp/pioneer/mbg/pioneerkit/b/d;->a(Ljp/pioneer/mbg/pioneerkit/b/d;)Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v0

    iget-object v0, v0, Ljp/pioneer/mbg/pioneerkit/b/a;->e:Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/r;->b:Ljp/pioneer/mbg/pioneerkit/a/a/a;

    invoke-virtual {v1}, Ljp/pioneer/mbg/pioneerkit/a/a/a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;->c(I)V

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/r;->a:Ljp/pioneer/mbg/pioneerkit/b/d;

    invoke-static {v0}, Ljp/pioneer/mbg/pioneerkit/b/d;->a(Ljp/pioneer/mbg/pioneerkit/b/d;)Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v0

    iget-object v0, v0, Ljp/pioneer/mbg/pioneerkit/b/a;->e:Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/r;->b:Ljp/pioneer/mbg/pioneerkit/a/a/a;

    invoke-virtual {v1}, Ljp/pioneer/mbg/pioneerkit/a/a/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;->b(I)V

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/r;->a:Ljp/pioneer/mbg/pioneerkit/b/d;

    invoke-static {v0}, Ljp/pioneer/mbg/pioneerkit/b/d;->a(Ljp/pioneer/mbg/pioneerkit/b/d;)Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v0

    iget-object v0, v0, Ljp/pioneer/mbg/pioneerkit/b/a;->e:Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/r;->b:Ljp/pioneer/mbg/pioneerkit/a/a/a;

    invoke-virtual {v1}, Ljp/pioneer/mbg/pioneerkit/a/a/a;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;->d(I)V

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/r;->a:Ljp/pioneer/mbg/pioneerkit/b/d;

    invoke-static {v0}, Ljp/pioneer/mbg/pioneerkit/b/d;->a(Ljp/pioneer/mbg/pioneerkit/b/d;)Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v0

    iget-object v0, v0, Ljp/pioneer/mbg/pioneerkit/b/a;->e:Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/r;->b:Ljp/pioneer/mbg/pioneerkit/a/a/a;

    invoke-virtual {v1}, Ljp/pioneer/mbg/pioneerkit/a/a/a;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;->e(I)V

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/r;->a:Ljp/pioneer/mbg/pioneerkit/b/d;

    invoke-static {v0}, Ljp/pioneer/mbg/pioneerkit/b/d;->a(Ljp/pioneer/mbg/pioneerkit/b/d;)Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v0

    iget-object v1, p0, Ljp/pioneer/mbg/pioneerkit/b/r;->a:Ljp/pioneer/mbg/pioneerkit/b/d;

    invoke-static {v1}, Ljp/pioneer/mbg/pioneerkit/b/d;->a(Ljp/pioneer/mbg/pioneerkit/b/d;)Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v1

    iget-object v1, v1, Ljp/pioneer/mbg/pioneerkit/b/a;->e:Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;

    invoke-static {v0, v1}, Ljp/pioneer/mbg/pioneerkit/b/a;->a(Ljp/pioneer/mbg/pioneerkit/b/a;Ljp/pioneer/mbg/pioneerkit/ExtDeviceSpecInfo;)V

    goto :goto_0
.end method
