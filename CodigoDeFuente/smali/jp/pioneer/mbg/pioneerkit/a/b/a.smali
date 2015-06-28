.class public Ljp/pioneer/mbg/pioneerkit/a/b/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljp/pioneer/mbg/pioneerkit/a/b/e;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Ljp/pioneer/mbg/pioneerkit/a/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/b/e;

    const/4 v0, 0x1

    sput-boolean v0, Ljp/pioneer/mbg/pioneerkit/a/b/a;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/view/KeyEvent;)V
    .locals 2

    sget-object v0, Ljp/pioneer/mbg/pioneerkit/a/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/b/e;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PEventInputManager is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Ljp/pioneer/mbg/pioneerkit/a/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/b/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljp/pioneer/mbg/pioneerkit/a/b/e;->a(Landroid/view/KeyEvent;Z)Z

    return-void
.end method

.method private static a(Landroid/view/MotionEvent;)V
    .locals 2

    sget-boolean v0, Ljp/pioneer/mbg/pioneerkit/a/b/a;->b:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ljp/pioneer/mbg/pioneerkit/a/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/b/e;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PEventInputManager is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Ljp/pioneer/mbg/pioneerkit/a/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/b/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljp/pioneer/mbg/pioneerkit/a/b/e;->a(Landroid/view/MotionEvent;Z)Z

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 1

    if-nez p0, :cond_1

    const-string v0, "deliverEvent: Event to be delivered is null\t"

    invoke-static {v0}, Ljp/pioneer/mbg/pioneerkit/a/a;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p0, Landroid/view/MotionEvent;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/view/MotionEvent;

    invoke-static {p0}, Ljp/pioneer/mbg/pioneerkit/a/b/a;->a(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    instance-of v0, p0, Landroid/view/KeyEvent;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/KeyEvent;

    invoke-static {p0}, Ljp/pioneer/mbg/pioneerkit/a/b/a;->a(Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public static a(Ljp/pioneer/mbg/pioneerkit/a/b/e;)V
    .locals 0

    sput-object p0, Ljp/pioneer/mbg/pioneerkit/a/b/a;->a:Ljp/pioneer/mbg/pioneerkit/a/b/e;

    return-void
.end method
