.class Lcom/waze/navigate/DriveToNativeManager$38;
.super Ljava/lang/Object;
.source "DriveToNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->openPrivateMessage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$38;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput p2, p0, Lcom/waze/navigate/DriveToNativeManager$38;->val$userId:I

    .line 1173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$38;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iget v1, p0, Lcom/waze/navigate/DriveToNativeManager$38;->val$userId:I

    #calls: Lcom/waze/navigate/DriveToNativeManager;->openPrivateMessageNTV(I)V
    invoke-static {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->access$34(Lcom/waze/navigate/DriveToNativeManager;I)V

    .line 1177
    return-void
.end method
