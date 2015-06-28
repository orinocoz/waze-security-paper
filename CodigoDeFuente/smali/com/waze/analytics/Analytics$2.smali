.class Lcom/waze/analytics/Analytics$2;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/analytics/Analytics;->adsContextClear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$nm:Lcom/waze/NativeManager;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/analytics/Analytics$2;->val$nm:Lcom/waze/NativeManager;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/waze/analytics/Analytics$2;->val$nm:Lcom/waze/NativeManager;

    invoke-virtual {v0}, Lcom/waze/NativeManager;->logAnalyticsAdsContextClearNTV()V

    .line 108
    return-void
.end method
