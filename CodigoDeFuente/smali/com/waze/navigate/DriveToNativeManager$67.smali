.class Lcom/waze/navigate/DriveToNativeManager$67;
.super Ljava/lang/Object;
.source "DriveToNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->setScreenFreeze(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$bFreeze:Z


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$67;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput-boolean p2, p0, Lcom/waze/navigate/DriveToNativeManager$67;->val$bFreeze:Z

    .line 1654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1657
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$67;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iget-boolean v1, p0, Lcom/waze/navigate/DriveToNativeManager$67;->val$bFreeze:Z

    #calls: Lcom/waze/navigate/DriveToNativeManager;->setScreenFreezeNTV(Z)V
    invoke-static {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->access$61(Lcom/waze/navigate/DriveToNativeManager;Z)V

    .line 1658
    return-void
.end method
