.class Lcom/facebook/AppEventsLogger$1;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$eventTime:J

.field private final synthetic val$logger:Lcom/facebook/AppEventsLogger;

.field private final synthetic val$sourceApplicationInfo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/AppEventsLogger;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/AppEventsLogger$1;->val$logger:Lcom/facebook/AppEventsLogger;

    iput-wide p2, p0, Lcom/facebook/AppEventsLogger$1;->val$eventTime:J

    iput-object p4, p0, Lcom/facebook/AppEventsLogger$1;->val$sourceApplicationInfo:Ljava/lang/String;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 295
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$1;->val$logger:Lcom/facebook/AppEventsLogger;

    iget-wide v1, p0, Lcom/facebook/AppEventsLogger$1;->val$eventTime:J

    iget-object v3, p0, Lcom/facebook/AppEventsLogger$1;->val$sourceApplicationInfo:Ljava/lang/String;

    #calls: Lcom/facebook/AppEventsLogger;->logAppSessionResumeEvent(JLjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/AppEventsLogger;->access$3(Lcom/facebook/AppEventsLogger;JLjava/lang/String;)V

    .line 296
    return-void
.end method
