.class Ljp/pioneer/ce/aam2/AAM2Kit/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;


# direct methods
.method constructor <init>(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;)V
    .locals 0

    iput-object p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/b;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/b;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/b;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    invoke-virtual {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a()V

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/b;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/b;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    invoke-static {v1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->c(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
