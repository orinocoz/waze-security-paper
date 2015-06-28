.class Lcom/waze/navigate/DriveToNativeManager$44;
.super Ljava/lang/Object;
.source "DriveToNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->drive(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$MeetingId:Ljava/lang/String;

.field private final synthetic val$bIsShare:Z


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$44;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput-object p2, p0, Lcom/waze/navigate/DriveToNativeManager$44;->val$MeetingId:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/waze/navigate/DriveToNativeManager$44;->val$bIsShare:Z

    .line 1233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$44;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$44;->val$MeetingId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/waze/navigate/DriveToNativeManager$44;->val$bIsShare:Z

    #calls: Lcom/waze/navigate/DriveToNativeManager;->DriveEventNTV(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->access$41(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;Z)V

    .line 1237
    return-void
.end method
