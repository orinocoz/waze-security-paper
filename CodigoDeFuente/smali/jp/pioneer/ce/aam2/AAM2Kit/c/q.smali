.class Ljp/pioneer/ce/aam2/AAM2Kit/c/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljp/pioneer/ce/aam2/AAM2Kit/c/d;

.field private final synthetic b:[B


# direct methods
.method constructor <init>(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;[B)V
    .locals 0

    iput-object p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/q;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/d;

    iput-object p2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/q;->b:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/q;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/d;

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/d;->a(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;)Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v0

    iget-object v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/q;->b:[B

    invoke-static {v0, v1}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->b(Ljp/pioneer/ce/aam2/AAM2Kit/c/a;[B)V

    return-void
.end method
