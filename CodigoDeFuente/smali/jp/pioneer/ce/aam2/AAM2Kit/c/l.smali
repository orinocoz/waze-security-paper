.class Ljp/pioneer/ce/aam2/AAM2Kit/c/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljp/pioneer/ce/aam2/AAM2Kit/c/d;

.field private final synthetic b:I

.field private final synthetic c:I


# direct methods
.method constructor <init>(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;II)V
    .locals 0

    iput-object p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/l;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/d;

    iput p2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/l;->b:I

    iput p3, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/l;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/l;->a:Ljp/pioneer/ce/aam2/AAM2Kit/c/d;

    invoke-static {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/c/d;->a(Ljp/pioneer/ce/aam2/AAM2Kit/c/d;)Ljp/pioneer/ce/aam2/AAM2Kit/c/a;

    move-result-object v0

    iget v1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/l;->b:I

    iget v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/c/l;->c:I

    invoke-virtual {v0, v1, v2}, Ljp/pioneer/ce/aam2/AAM2Kit/c/a;->a(II)V

    return-void
.end method
