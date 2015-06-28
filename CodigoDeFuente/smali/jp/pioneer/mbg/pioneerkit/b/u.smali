.class public Ljp/pioneer/mbg/pioneerkit/b/u;
.super Ljp/pioneer/mbg/pioneerkit/a/b/e;


# static fields
.field protected static final b:I

.field private static c:Ljp/pioneer/mbg/pioneerkit/a/b/e;


# instance fields
.field private d:Ljava/lang/reflect/Method;

.field private e:Ljava/lang/reflect/Method;

.field private f:Ljava/lang/reflect/Method;

.field private g:Ljava/lang/reflect/Method;

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Ljp/pioneer/mbg/pioneerkit/b/u;->c:Ljp/pioneer/mbg/pioneerkit/a/b/e;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Ljp/pioneer/mbg/pioneerkit/b/u;->b:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljp/pioneer/mbg/pioneerkit/a/b/e;-><init>()V

    iput-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/u;->d:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/u;->e:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/u;->f:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/u;->g:Ljava/lang/reflect/Method;

    iput-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/u;->h:Ljava/lang/Object;

    iput-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/u;->i:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Ljp/pioneer/mbg/pioneerkit/a/b/e;
    .locals 2

    const-class v1, Ljp/pioneer/mbg/pioneerkit/b/u;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljp/pioneer/mbg/pioneerkit/b/u;->c:Ljp/pioneer/mbg/pioneerkit/a/b/e;

    if-nez v0, :cond_0

    new-instance v0, Ljp/pioneer/mbg/pioneerkit/b/u;

    invoke-direct {v0}, Ljp/pioneer/mbg/pioneerkit/b/u;-><init>()V

    sput-object v0, Ljp/pioneer/mbg/pioneerkit/b/u;->c:Ljp/pioneer/mbg/pioneerkit/a/b/e;

    sget-object v0, Ljp/pioneer/mbg/pioneerkit/b/u;->c:Ljp/pioneer/mbg/pioneerkit/a/b/e;

    invoke-virtual {v0, p0}, Ljp/pioneer/mbg/pioneerkit/a/b/e;->a(Landroid/content/Context;)Z

    :cond_0
    sget-object v0, Ljp/pioneer/mbg/pioneerkit/b/u;->c:Ljp/pioneer/mbg/pioneerkit/a/b/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->setSource(I)V

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Ljp/pioneer/mbg/pioneerkit/b/u;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    :try_start_0
    sget v0, Ljp/pioneer/mbg/pioneerkit/b/u;->b:I

    const/16 v3, 0x10

    if-ge v0, v3, :cond_a

    const-string v0, "android.view.IWindowManager$Stub"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "getService"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v4, "asInterface"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/os/IBinder;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "window"

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/u;->h:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    move v0, v2

    :goto_1
    array-length v4, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v0, v4, :cond_3

    :cond_2
    :goto_2
    iput-boolean v1, p0, Ljp/pioneer/mbg/pioneerkit/b/u;->a:Z

    move v0, v1

    goto :goto_0

    :cond_3
    :try_start_1
    aget-object v4, v3, v0

    if-nez v4, :cond_5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "injectPointerEvent"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    iput-object v4, p0, Ljp/pioneer/mbg/pioneerkit/b/u;->d:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljp/pioneer/mbg/pioneerkit/a/a;->a(Ljava/lang/String;)V

    :cond_6
    :goto_3
    iget-object v4, p0, Ljp/pioneer/mbg/pioneerkit/b/u;->d:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_4

    iget-object v4, p0, Ljp/pioneer/mbg/pioneerkit/b/u;->e:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_4

    iget-object v4, p0, Ljp/pioneer/mbg/pioneerkit/b/u;->f:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_4

    iget-object v4, p0, Ljp/pioneer/mbg/pioneerkit/b/u;->g:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_7
    const-string v6, "injectKeyEvent"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    iput-object v4, p0, Ljp/pioneer/mbg/pioneerkit/b/u;->e:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljp/pioneer/mbg/pioneerkit/a/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    goto/16 :goto_0

    :cond_8
    :try_start_2
    const-string v6, "injectTrackballEvent"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    iput-object v4, p0, Ljp/pioneer/mbg/pioneerkit/b/u;->f:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljp/pioneer/mbg/pioneerkit/a/a;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const-string v6, "setEventDispatching"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    iput-object v4, p0, Ljp/pioneer/mbg/pioneerkit/b/u;->g:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljp/pioneer/mbg/pioneerkit/a/a;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    const-string v0, "android.hardware.input.IInputManager$Stub"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "getService"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v4, "asInterface"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/os/IBinder;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "input"

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/u;->i:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    move v0, v2

    :goto_4
    array-length v4, v3

    if-ge v0, v4, :cond_2

    aget-object v4, v3, v0

    if-nez v4, :cond_c

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_c
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "injectInputEvent"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    iput-object v4, p0, Ljp/pioneer/mbg/pioneerkit/b/u;->d:Ljava/lang/reflect/Method;

    :cond_d
    iget-object v4, p0, Ljp/pioneer/mbg/pioneerkit/b/u;->d:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v4, :cond_b

    goto/16 :goto_2
.end method

.method public a(Landroid/view/KeyEvent;Z)Z
    .locals 6

    const/16 v2, 0x10

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljp/pioneer/mbg/pioneerkit/b/u;->a()V

    sget v0, Ljp/pioneer/mbg/pioneerkit/b/u;->b:I

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/u;->e:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v0, Ljp/pioneer/mbg/pioneerkit/b/u;->b:I

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/u;->d:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    :try_start_0
    sget v0, Ljp/pioneer/mbg/pioneerkit/b/u;->b:I

    if-ge v0, v2, :cond_3

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/u;->e:Ljava/lang/reflect/Method;

    iget-object v2, p0, Ljp/pioneer/mbg/pioneerkit/b/u;->h:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    :goto_1
    :try_start_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Ljp/pioneer/mbg/pioneerkit/b/a;->c()Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Ljp/pioneer/mbg/pioneerkit/b/a;->b(JZ)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Ljp/pioneer/mbg/pioneerkit/b/a;->c()Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Ljp/pioneer/mbg/pioneerkit/b/a;->b(JZ)V

    goto :goto_0

    :cond_3
    :try_start_2
    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/u;->d:Ljava/lang/reflect/Method;

    iget-object v2, p0, Ljp/pioneer/mbg/pioneerkit/b/u;->i:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    goto :goto_1

    :catch_1
    move-exception v0

    move v0, v1

    :goto_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Ljp/pioneer/mbg/pioneerkit/b/a;->c()Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Ljp/pioneer/mbg/pioneerkit/b/a;->b(JZ)V

    goto :goto_0

    :catch_2
    move-exception v0

    move v0, v1

    :goto_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Ljp/pioneer/mbg/pioneerkit/b/a;->c()Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Ljp/pioneer/mbg/pioneerkit/b/a;->b(JZ)V

    goto/16 :goto_0

    :catch_3
    move-exception v2

    goto :goto_4

    :catch_4
    move-exception v2

    goto :goto_3

    :catch_5
    move-exception v0

    move v0, v1

    goto :goto_2
.end method

.method public a(Landroid/view/MotionEvent;Z)Z
    .locals 6

    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljp/pioneer/mbg/pioneerkit/b/u;->a()V

    iget-object v3, p0, Ljp/pioneer/mbg/pioneerkit/b/u;->d:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    sget v3, Ljp/pioneer/mbg/pioneerkit/b/u;->b:I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_2

    iget-object v0, p0, Ljp/pioneer/mbg/pioneerkit/b/u;->d:Ljava/lang/reflect/Method;

    iget-object v2, p0, Ljp/pioneer/mbg/pioneerkit/b/u;->h:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    :goto_1
    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Ljp/pioneer/mbg/pioneerkit/b/a;->c()Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Ljp/pioneer/mbg/pioneerkit/b/a;->a(JZ)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Ljp/pioneer/mbg/pioneerkit/b/a;->c()Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Ljp/pioneer/mbg/pioneerkit/b/a;->a(JZ)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    :goto_3
    const/16 v2, 0x1002

    :try_start_2
    invoke-virtual {p0, p1, v2}, Ljp/pioneer/mbg/pioneerkit/b/u;->a(Landroid/view/MotionEvent;I)V

    iget-object v2, p0, Ljp/pioneer/mbg/pioneerkit/b/u;->d:Ljava/lang/reflect/Method;

    iget-object v3, p0, Ljp/pioneer/mbg/pioneerkit/b/u;->i:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_3

    :catch_1
    move-exception v0

    move v0, v1

    :goto_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Ljp/pioneer/mbg/pioneerkit/b/a;->c()Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Ljp/pioneer/mbg/pioneerkit/b/a;->a(JZ)V

    goto :goto_0

    :catch_2
    move-exception v0

    move v0, v1

    :goto_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Ljp/pioneer/mbg/pioneerkit/b/a;->c()Ljp/pioneer/mbg/pioneerkit/b/a;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, Ljp/pioneer/mbg/pioneerkit/b/a;->a(JZ)V

    goto/16 :goto_0

    :catch_3
    move-exception v2

    goto :goto_5

    :catch_4
    move-exception v2

    goto :goto_4

    :catch_5
    move-exception v0

    move v0, v1

    goto :goto_2
.end method
