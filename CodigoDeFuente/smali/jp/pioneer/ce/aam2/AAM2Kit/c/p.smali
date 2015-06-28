.class Ljp/pioneer/ce/aam2/AAM2Kit/c/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljp/pioneer/ce/aam2/AAM2Kit/c/d;

.field private final synthetic b:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;


# direct methods
.method constructor <init>(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;)V
    .locals 0

    iput-object p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/p;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/d;

    iput-object p2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/p;->b:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/p;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/d;

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/d;->a(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;)Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v0

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/p;->b:Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;

    invoke-virtual {v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a(Ljp/pioneer/ce/aam2/AAM2Kit/b/a/c;)V

    return-void
.end method
