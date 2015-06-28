.class public Lcom/waze/PowerManager;
.super Landroid/content/BroadcastReceiver;
.source "PowerManager.java"


# static fields
.field private static mInstance:Lcom/waze/PowerManager;


# instance fields
.field private volatile mCurrentLevel:I

.field private volatile mIsCharging:I

.field private volatile mTemperature:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/PowerManager;->mInstance:Lcom/waze/PowerManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 93
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 117
    iput v0, p0, Lcom/waze/PowerManager;->mTemperature:I

    .line 118
    iput v0, p0, Lcom/waze/PowerManager;->mCurrentLevel:I

    .line 119
    iput v0, p0, Lcom/waze/PowerManager;->mIsCharging:I

    .line 94
    return-void
.end method

.method static Create(Landroid/content/Context;)Lcom/waze/PowerManager;
    .locals 3
    .parameter "context"

    .prologue
    .line 39
    sget-object v2, Lcom/waze/PowerManager;->mInstance:Lcom/waze/PowerManager;

    if-nez v2, :cond_0

    .line 41
    new-instance v2, Lcom/waze/PowerManager;

    invoke-direct {v2}, Lcom/waze/PowerManager;-><init>()V

    sput-object v2, Lcom/waze/PowerManager;->mInstance:Lcom/waze/PowerManager;

    .line 43
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, ifilter:Landroid/content/IntentFilter;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 45
    .local v1, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/waze/PowerManager;->Instance()Lcom/waze/PowerManager;

    move-result-object v2

    invoke-direct {v2, v1}, Lcom/waze/PowerManager;->SetDataFromIntent(Landroid/content/Intent;)V

    .line 47
    .end local v0           #ifilter:Landroid/content/IntentFilter;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    sget-object v2, Lcom/waze/PowerManager;->mInstance:Lcom/waze/PowerManager;

    return-object v2
.end method

.method static Instance()Lcom/waze/PowerManager;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/waze/PowerManager;->mInstance:Lcom/waze/PowerManager;

    return-object v0
.end method

.method private SetDataFromIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/16 v6, 0x64

    const/4 v3, 0x0

    .line 97
    if-nez p1, :cond_0

    .line 111
    :goto_0
    return-void

    .line 100
    :cond_0
    const-string v4, "level"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 101
    .local v0, level:I
    const-string v4, "scale"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 104
    .local v1, scale:I
    mul-int/lit8 v4, v0, 0x64

    div-int/2addr v4, v1

    iput v4, p0, Lcom/waze/PowerManager;->mCurrentLevel:I

    .line 106
    const-string v4, "status"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 107
    .local v2, status:I
    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    .line 108
    const/4 v4, 0x5

    if-ne v2, v4, :cond_2

    :cond_1
    const/4 v3, 0x1

    .line 107
    :cond_2
    iput v3, p0, Lcom/waze/PowerManager;->mIsCharging:I

    .line 110
    const-string v3, "temperature"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    iput v3, p0, Lcom/waze/PowerManager;->mTemperature:I

    goto :goto_0
.end method


# virtual methods
.method public getCurrentLevel()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/waze/PowerManager;->mCurrentLevel:I

    return v0
.end method

.method public getIsCharging()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/waze/PowerManager;->mIsCharging:I

    return v0
.end method

.method public getTemperature()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/waze/PowerManager;->mTemperature:I

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-direct {p0, p2}, Lcom/waze/PowerManager;->SetDataFromIntent(Landroid/content/Intent;)V

    .line 61
    :cond_0
    return-void
.end method
