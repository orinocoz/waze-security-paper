.class Lcom/waze/navigate/DriveToNativeManager$28;
.super Ljava/lang/Object;
.source "DriveToNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->notifyAddressItemClicked(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$28;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput p2, p0, Lcom/waze/navigate/DriveToNativeManager$28;->val$index:I

    .line 874
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 877
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$28;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iget v1, p0, Lcom/waze/navigate/DriveToNativeManager$28;->val$index:I

    #calls: Lcom/waze/navigate/DriveToNativeManager;->notifyAddressItemClickedNTV(I)V
    invoke-static {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->access$27(Lcom/waze/navigate/DriveToNativeManager;I)V

    .line 878
    return-void
.end method
