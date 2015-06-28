.class Lcom/waze/navigate/DriveToNativeManager$25;
.super Ljava/lang/Object;
.source "DriveToNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->notifyAddressItemShown(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$index:I

.field private final synthetic val$isItemSeenAlready:Z


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$25;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput p2, p0, Lcom/waze/navigate/DriveToNativeManager$25;->val$index:I

    iput-boolean p3, p0, Lcom/waze/navigate/DriveToNativeManager$25;->val$isItemSeenAlready:Z

    .line 844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 847
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$25;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iget v1, p0, Lcom/waze/navigate/DriveToNativeManager$25;->val$index:I

    iget-boolean v2, p0, Lcom/waze/navigate/DriveToNativeManager$25;->val$isItemSeenAlready:Z

    #calls: Lcom/waze/navigate/DriveToNativeManager;->notifyAddressItemShownNTV(IZ)V
    invoke-static {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->access$24(Lcom/waze/navigate/DriveToNativeManager;IZ)V

    .line 848
    return-void
.end method
