.class public Ljp/pioneer/ce/aam2/AAM2Kit/a/a;
.super Ljava/lang/Object;


# static fields
.field private static c:Ljp/pioneer/ce/aam2/AAM2Kit/a/a;


# instance fields
.field a:Z

.field private b:Z

.field private d:Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcherPrivate;

.field private e:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Ljp/pioneer/ce/aam2/AAM2Kit/a/a;->c:Ljp/pioneer/ce/aam2/AAM2Kit/a/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/a/a;->b:Z

    iput-boolean v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/a/a;->a:Z

    new-instance v0, Ljp/pioneer/ce/aam2/AAM2Kit/a/b;

    invoke-direct {v0, p0}, Ljp/pioneer/ce/aam2/AAM2Kit/a/b;-><init>(Ljp/pioneer/ce/aam2/AAM2Kit/a/a;)V

    iput-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/a/a;->e:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Ljp/pioneer/ce/aam2/AAM2Kit/a/a;)Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcherPrivate;
    .locals 1

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/a/a;->d:Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcherPrivate;

    return-object v0
.end method

.method public static a()Ljp/pioneer/ce/aam2/AAM2Kit/a/a;
    .locals 1

    sget-object v0, Ljp/pioneer/ce/aam2/AAM2Kit/a/a;->c:Ljp/pioneer/ce/aam2/AAM2Kit/a/a;

    if-nez v0, :cond_0

    new-instance v0, Ljp/pioneer/ce/aam2/AAM2Kit/a/a;

    invoke-direct {v0}, Ljp/pioneer/ce/aam2/AAM2Kit/a/a;-><init>()V

    sput-object v0, Ljp/pioneer/ce/aam2/AAM2Kit/a/a;->c:Ljp/pioneer/ce/aam2/AAM2Kit/a/a;

    :cond_0
    sget-object v0, Ljp/pioneer/ce/aam2/AAM2Kit/a/a;->c:Ljp/pioneer/ce/aam2/AAM2Kit/a/a;

    return-object v0
.end method

.method static synthetic a(Ljp/pioneer/ce/aam2/AAM2Kit/a/a;Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcherPrivate;)V
    .locals 0

    iput-object p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/a/a;->d:Lcom/abaltatech/protocoldispatcher/IPProtocolDispatcherPrivate;

    return-void
.end method

.method static synthetic a(Ljp/pioneer/ce/aam2/AAM2Kit/a/a;Z)V
    .locals 0

    iput-boolean p1, p0, Ljp/pioneer/ce/aam2/AAM2Kit/a/a;->b:Z

    return-void
.end method

.method static synthetic b(Ljp/pioneer/ce/aam2/AAM2Kit/a/a;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/a/a;->e:Landroid/content/ServiceConnection;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 4

    iget-boolean v0, p0, Ljp/pioneer/ce/aam2/AAM2Kit/a/a;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "jp.pioneer.mbg.appradio.AppRadioLauncher"

    const-string v2, "com.abaltatech.protocoldispatcher.ProtocolDispatcherService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "abaltatech.intent.action.bindProtocolDispatcherPrivateService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lcom/abaltatech/weblinkserver/WLServerApp;->getApplication()Lcom/abaltatech/weblinkserver/WLServerApp;

    move-result-object v0

    iget-object v2, p0, Ljp/pioneer/ce/aam2/AAM2Kit/a/a;->e:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/abaltatech/weblinkserver/WLServerApp;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method
