.class Lcom/waze/NativeLocListener$WatchDogTask$1;
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


# direct methods
.method constructor <init>(Lcom/waze/NativeLocListener$WatchDogTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeLocListener$WatchDogTask$1;->this$1:Lcom/waze/NativeLocListener$WatchDogTask;

    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/waze/NativeLocListener$WatchDogTask$1;->this$1:Lcom/waze/NativeLocListener$WatchDogTask;

    #getter for: Lcom/waze/NativeLocListener$WatchDogTask;->this$0:Lcom/waze/NativeLocListener;
    invoke-static {v0}, Lcom/waze/NativeLocListener$WatchDogTask;->access$1(Lcom/waze/NativeLocListener$WatchDogTask;)Lcom/waze/NativeLocListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeLocListener;->start()V

    .line 603
    return-void
.end method
