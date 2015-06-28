.class Lcom/waze/navigate/DriveToNativeManager$41;
.super Ljava/lang/Object;
.source "DriveToNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->CalendarAddressVerifiedByIndex(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$MeetingId:Ljava/lang/String;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$41;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput p2, p0, Lcom/waze/navigate/DriveToNativeManager$41;->val$index:I

    iput-object p3, p0, Lcom/waze/navigate/DriveToNativeManager$41;->val$MeetingId:Ljava/lang/String;

    .line 1205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$41;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iget v1, p0, Lcom/waze/navigate/DriveToNativeManager$41;->val$index:I

    iget-object v2, p0, Lcom/waze/navigate/DriveToNativeManager$41;->val$MeetingId:Ljava/lang/String;

    #calls: Lcom/waze/navigate/DriveToNativeManager;->CalendarAddressVerifiedByIndexNTV(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->access$38(Lcom/waze/navigate/DriveToNativeManager;ILjava/lang/String;)V

    .line 1209
    return-void
.end method
