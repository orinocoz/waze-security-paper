.class public Lcom/waze/test/TestGps;
.super Landroid/app/Activity;
.source "TestGps.java"


# instance fields
.field final GPS_WD_PERIOD:J

.field mGpsHandler:Landroid/os/Handler;

.field mGpsListener:Landroid/location/LocationListener;

.field mGpsWatchDog:Ljava/util/TimerTask;

.field mStarted:Z

.field mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    new-instance v0, Lcom/waze/test/TestGps$1;

    invoke-direct {v0, p0}, Lcom/waze/test/TestGps$1;-><init>(Lcom/waze/test/TestGps;)V

    iput-object v0, p0, Lcom/waze/test/TestGps;->mGpsWatchDog:Ljava/util/TimerTask;

    .line 84
    new-instance v0, Lcom/waze/test/TestGps$2;

    invoke-direct {v0, p0}, Lcom/waze/test/TestGps$2;-><init>(Lcom/waze/test/TestGps;)V

    iput-object v0, p0, Lcom/waze/test/TestGps;->mGpsListener:Landroid/location/LocationListener;

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/waze/test/TestGps;->mGpsHandler:Landroid/os/Handler;

    .line 104
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/waze/test/TestGps;->mTimer:Ljava/util/Timer;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/test/TestGps;->mStarted:Z

    .line 107
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/waze/test/TestGps;->GPS_WD_PERIOD:J

    .line 17
    return-void
.end method

.method static synthetic access$0(Lcom/waze/test/TestGps;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/waze/test/TestGps;->stopGPS()V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/test/TestGps;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/waze/test/TestGps;->startGPS()V

    return-void
.end method

.method private startGPS()V
    .locals 7

    .prologue
    .line 43
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/waze/test/TestGps;->mStarted:Z

    .line 44
    const-string v1, "Starting GPS"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 45
    .local v6, t:Landroid/widget/Toast;
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 46
    invoke-virtual {p0}, Lcom/waze/test/TestGps;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 47
    .local v0, service:Landroid/location/LocationManager;
    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/waze/test/TestGps;->mGpsListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 48
    return-void
.end method

.method private stopGPS()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 52
    iput-boolean v3, p0, Lcom/waze/test/TestGps;->mStarted:Z

    .line 53
    const-string v2, "Stopping GPS"

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 54
    .local v1, t:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 55
    invoke-virtual {p0}, Lcom/waze/test/TestGps;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 56
    .local v0, service:Landroid/location/LocationManager;
    iget-object v2, p0, Lcom/waze/test/TestGps;->mGpsListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 57
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v2, 0x2710

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f030119

    invoke-virtual {p0, v0}, Lcom/waze/test/TestGps;->setContentView(I)V

    .line 24
    invoke-direct {p0}, Lcom/waze/test/TestGps;->startGPS()V

    .line 25
    iget-object v0, p0, Lcom/waze/test/TestGps;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/waze/test/TestGps;->mGpsWatchDog:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 26
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 38
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 32
    return-void
.end method
