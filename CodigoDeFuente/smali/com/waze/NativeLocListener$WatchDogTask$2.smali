.class Lcom/waze/NativeLocListener$WatchDogTask$2;
.super Ljava/lang/Object;
.source "NativeLocListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeLocListener$WatchDogTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/NativeLocListener$WatchDogTask;

.field private final synthetic val$startEvent:Ljava/lang/Runnable;

.field private final synthetic val$timeSinceFix:J


# direct methods
.method constructor <init>(Lcom/waze/NativeLocListener$WatchDogTask;JLjava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeLocListener$WatchDogTask$2;->this$1:Lcom/waze/NativeLocListener$WatchDogTask;

    iput-wide p2, p0, Lcom/waze/NativeLocListener$WatchDogTask$2;->val$timeSinceFix:J

    iput-object p4, p0, Lcom/waze/NativeLocListener$WatchDogTask$2;->val$startEvent:Ljava/lang/Runnable;

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 608
    const-string v0, "LOCATION_LISTENER"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No GPS fix for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/waze/NativeLocListener$WatchDogTask$2;->val$timeSinceFix:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms. Restarting GPS engine. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/waze/Logger;->w_(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcom/waze/NativeLocListener$WatchDogTask$2;->this$1:Lcom/waze/NativeLocListener$WatchDogTask;

    #getter for: Lcom/waze/NativeLocListener$WatchDogTask;->this$0:Lcom/waze/NativeLocListener;
    invoke-static {v0}, Lcom/waze/NativeLocListener$WatchDogTask;->access$1(Lcom/waze/NativeLocListener$WatchDogTask;)Lcom/waze/NativeLocListener;

    move-result-object v0

    const/4 v1, 0x0

    #setter for: Lcom/waze/NativeLocListener;->mGpsFixSent:Z
    invoke-static {v0, v1}, Lcom/waze/NativeLocListener;->access$3(Lcom/waze/NativeLocListener;Z)V

    .line 610
    iget-object v0, p0, Lcom/waze/NativeLocListener$WatchDogTask$2;->this$1:Lcom/waze/NativeLocListener$WatchDogTask;

    #getter for: Lcom/waze/NativeLocListener$WatchDogTask;->this$0:Lcom/waze/NativeLocListener;
    invoke-static {v0}, Lcom/waze/NativeLocListener$WatchDogTask;->access$1(Lcom/waze/NativeLocListener$WatchDogTask;)Lcom/waze/NativeLocListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeLocListener;->stop()V

    .line 611
    iget-object v0, p0, Lcom/waze/NativeLocListener$WatchDogTask$2;->val$startEvent:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 612
    return-void
.end method
