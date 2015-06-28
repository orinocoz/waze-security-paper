.class Lcom/waze/navigate/DriveToNativeManager$40;
.super Ljava/lang/Object;
.source "DriveToNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->VerifyEventByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$Id:Ljava/lang/String;

.field private final synthetic val$MeetingId:Ljava/lang/String;

.field private final synthetic val$bToDrive:Ljava/lang/Boolean;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/Boolean;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$40;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput-object p2, p0, Lcom/waze/navigate/DriveToNativeManager$40;->val$bToDrive:Ljava/lang/Boolean;

    iput p3, p0, Lcom/waze/navigate/DriveToNativeManager$40;->val$index:I

    iput-object p4, p0, Lcom/waze/navigate/DriveToNativeManager$40;->val$MeetingId:Ljava/lang/String;

    iput-object p5, p0, Lcom/waze/navigate/DriveToNativeManager$40;->val$Id:Ljava/lang/String;

    .line 1192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$40;->val$bToDrive:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$40;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iget v1, p0, Lcom/waze/navigate/DriveToNativeManager$40;->val$index:I

    iget-object v2, p0, Lcom/waze/navigate/DriveToNativeManager$40;->val$MeetingId:Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/navigate/DriveToNativeManager$40;->val$Id:Ljava/lang/String;

    #calls: Lcom/waze/navigate/DriveToNativeManager;->VerifyEventAndDriveByIndexNTV(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/waze/navigate/DriveToNativeManager;->access$36(Lcom/waze/navigate/DriveToNativeManager;ILjava/lang/String;Ljava/lang/String;)V

    .line 1200
    :goto_0
    return-void

    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$40;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iget v1, p0, Lcom/waze/navigate/DriveToNativeManager$40;->val$index:I

    iget-object v2, p0, Lcom/waze/navigate/DriveToNativeManager$40;->val$MeetingId:Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/navigate/DriveToNativeManager$40;->val$Id:Ljava/lang/String;

    #calls: Lcom/waze/navigate/DriveToNativeManager;->VerifyEventByIndexNTV(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/waze/navigate/DriveToNativeManager;->access$37(Lcom/waze/navigate/DriveToNativeManager;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
