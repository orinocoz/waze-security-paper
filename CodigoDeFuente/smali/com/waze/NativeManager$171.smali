.class Lcom/waze/NativeManager$171;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->stopLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/NativeManager;


# direct methods
.method constructor <init>(Lcom/waze/NativeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/NativeManager$171;->this$0:Lcom/waze/NativeManager;

    .line 4544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4547
    iget-object v0, p0, Lcom/waze/NativeManager$171;->this$0:Lcom/waze/NativeManager;

    #getter for: Lcom/waze/NativeManager;->mLocationListner:Lcom/waze/NativeLocListener;
    invoke-static {v0}, Lcom/waze/NativeManager;->access$96(Lcom/waze/NativeManager;)Lcom/waze/NativeLocListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeLocListener;->stop()V

    .line 4548
    return-void
.end method
