.class Lcom/waze/analytics/Analytics$1;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/analytics/Analytics;->logAdsContext(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$event:Ljava/lang/String;

.field private final synthetic val$nm:Lcom/waze/NativeManager;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/analytics/Analytics$1;->val$nm:Lcom/waze/NativeManager;

    iput-object p2, p0, Lcom/waze/analytics/Analytics$1;->val$event:Ljava/lang/String;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/waze/analytics/Analytics$1;->val$nm:Lcom/waze/NativeManager;

    iget-object v1, p0, Lcom/waze/analytics/Analytics$1;->val$event:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->logAnalyticsAdsContextNTV(Ljava/lang/String;)V

    .line 93
    return-void
.end method
