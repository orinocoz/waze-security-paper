.class Lcom/waze/navigate/DriveToNativeManager$42;
.super Ljava/lang/Object;
.source "DriveToNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/DriveToNativeManager;->CalendarAddressVerified(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/DriveToNativeManager;

.field private final synthetic val$Address:Ljava/lang/String;

.field private final synthetic val$Lat:I

.field private final synthetic val$Lon:I

.field private final synthetic val$MeetingId:Ljava/lang/String;

.field private final synthetic val$venue:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/DriveToNativeManager$42;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iput-object p2, p0, Lcom/waze/navigate/DriveToNativeManager$42;->val$Address:Ljava/lang/String;

    iput p3, p0, Lcom/waze/navigate/DriveToNativeManager$42;->val$Lat:I

    iput p4, p0, Lcom/waze/navigate/DriveToNativeManager$42;->val$Lon:I

    iput-object p5, p0, Lcom/waze/navigate/DriveToNativeManager$42;->val$MeetingId:Ljava/lang/String;

    iput-object p6, p0, Lcom/waze/navigate/DriveToNativeManager$42;->val$venue:Ljava/lang/String;

    .line 1214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/waze/navigate/DriveToNativeManager$42;->this$0:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v1, p0, Lcom/waze/navigate/DriveToNativeManager$42;->val$Address:Ljava/lang/String;

    iget v2, p0, Lcom/waze/navigate/DriveToNativeManager$42;->val$Lat:I

    iget v3, p0, Lcom/waze/navigate/DriveToNativeManager$42;->val$Lon:I

    iget-object v4, p0, Lcom/waze/navigate/DriveToNativeManager$42;->val$MeetingId:Ljava/lang/String;

    iget-object v5, p0, Lcom/waze/navigate/DriveToNativeManager$42;->val$venue:Ljava/lang/String;

    #calls: Lcom/waze/navigate/DriveToNativeManager;->CalendarAddressVerifiedNTV(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/waze/navigate/DriveToNativeManager;->access$39(Lcom/waze/navigate/DriveToNativeManager;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 1218
    return-void
.end method
