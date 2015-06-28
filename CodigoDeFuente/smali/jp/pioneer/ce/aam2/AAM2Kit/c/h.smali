.class Ljp/pioneer/ce/aam2/AAM2Kit/c/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljp/pioneer/ce/aam2/AAM2Kit/c/d;

.field private final synthetic b:B

.field private final synthetic c:J


# direct methods
.method constructor <init>(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;BJ)V
    .locals 0

    iput-object p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/h;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/d;

    iput-byte p2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/h;->b:B

    iput-wide p3, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/h;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/h;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/d;

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/d;->a(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;)Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v0

    iget-byte v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/h;->b:B

    iget-wide v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/h;->c:J

    invoke-virtual {v0, v1, v2, v3}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a(BJ)V

    return-void
.end method
