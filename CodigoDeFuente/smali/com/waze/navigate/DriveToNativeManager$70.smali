.class Lcom/waze/navigate/DriveToNativeManager$70;
.super Ljava/lang/Object;
.source "DriveToNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->InitMeeting(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$sMeetingID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$70;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput-object p2, p0, Lcom/waze/navigate/DriveToNativeManager$70;->val$sMeetingID:Ljava/lang/String;

    .line 1696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$70;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$70;->val$sMeetingID:Ljava/lang/String;

    #calls: Lcom/waze/navigate/DriveToNativeManager;->InitMeetingNTV(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->access$64(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;)V

    .line 1700
    return-void
.end method
