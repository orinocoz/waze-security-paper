.class Ljp/pioneer/ce/aam2/AAM2Kit/c/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljp/pioneer/ce/aam2/AAM2Kit/c/d;

.field private final synthetic b:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;


# direct methods
.method constructor <init>(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;)V
    .locals 0

    iput-object p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/w;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/d;

    iput-object p2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/w;->b:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/w;->b:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/w;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/d;

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/d;->a(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;)Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v0

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/w;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/d;

    invoke-static {v1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/d;->a(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;)Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v1

    iget-object v1, v1, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->e:Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;

    invoke-static {v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/w;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/d;

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/d;->a(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;)Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v0

    iget-object v0, v0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->e:Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;

    if-nez v0, :cond_1

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/w;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/d;

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/d;->a(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;)Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v0

    new-instance v1, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;

    invoke-direct {v1}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;-><init>()V

    iput-object v1, v0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->e:Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;

    :cond_1
    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/w;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/d;

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/d;->a(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;)Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v0

    iget-object v0, v0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->e:Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/w;->b:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;

    invoke-virtual {v1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;->a(I)V

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/w;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/d;

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/d;->a(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;)Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v0

    iget-object v0, v0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->e:Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/w;->b:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;

    invoke-virtual {v1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;->c(I)V

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/w;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/d;

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/d;->a(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;)Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v0

    iget-object v0, v0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->e:Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/w;->b:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;

    invoke-virtual {v1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;->b(I)V

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/w;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/d;

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/d;->a(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;)Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v0

    iget-object v0, v0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->e:Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/w;->b:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;

    invoke-virtual {v1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;->d(I)V

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/w;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/d;

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/d;->a(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;)Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v0

    iget-object v0, v0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->e:Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/w;->b:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;

    invoke-virtual {v1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;->e(I)V

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/w;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/d;

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/d;->a(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;)Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v0

    iget-object v0, v0, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->e:Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/w;->b:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;

    invoke-virtual {v1}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a/a;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;->f(I)V

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/w;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/d;

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/d;->a(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;)Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v0

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/w;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/d;

    invoke-static {v1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/d;->a(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;)Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v1

    iget-object v1, v1, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->e:Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;

    invoke-static {v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;Ljp/pioneer/ce/aam2/AAM2Kit/AAM2MainUnitSpecInfo;)V

    goto/16 :goto_0
.end method
