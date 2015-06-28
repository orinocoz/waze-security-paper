.class Lcom/waze/NativeManager$41;
.super Ljava/lang/Object;
.source "NativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/NativeManager;->SendShareMyRide()V
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
    iput-object p1, p0, Lcom/waze/NativeManager$41;->this$0:Lcom/waze/NativeManager;

    .line 735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/waze/NativeManager$41;->this$0:Lcom/waze/NativeManager;

    #calls: Lcom/waze/NativeManager;->SendShareMyRideNTV()V
    invoke-static {v0}, Lcom/waze/NativeManager;->access$57(Lcom/waze/NativeManager;)V

    .line 739
    return-void
.end method
