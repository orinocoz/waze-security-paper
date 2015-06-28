.class public Ljp/pioneer/ce/aam2/AAM2Kit/b/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ExtScreenService"

    sput-object v0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->c:I

    const/4 v0, 0x0

    sput-object v0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "D"

    sget-object v1, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->a:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->c:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4

    const-string v0, "E"

    sget-object v1, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->c:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->a:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "E"

    sget-object v1, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->a:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->c:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ljp/pioneer/ce/aam2/AAM2Kit/b/a;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
