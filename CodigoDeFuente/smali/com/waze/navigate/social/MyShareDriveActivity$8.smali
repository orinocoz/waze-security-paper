.class Lcom/waze/navigate/social/MyShareDriveActivity$8;
.super Ljava/lang/Object;
.source "MyShareDriveActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/MyShareDriveActivity;->stopMeeting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/MyShareDriveActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/MyShareDriveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/MyShareDriveActivity$8;->this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 396
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 397
    const-string v0, "MY_SHARED_DRIVE_STOP_SHARING"

    const-string v1, "VAUE"

    iget-object v2, p0, Lcom/waze/navigate/social/MyShareDriveActivity$8;->this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

    iget-object v2, v2, Lcom/waze/navigate/social/MyShareDriveActivity;->sMeeting:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/waze/navigate/social/MyShareDriveActivity$8;->this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

    #getter for: Lcom/waze/navigate/social/MyShareDriveActivity;->nm:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/navigate/social/MyShareDriveActivity;->access$11(Lcom/waze/navigate/social/MyShareDriveActivity;)Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->StopFollow()V

    .line 399
    iget-object v0, p0, Lcom/waze/navigate/social/MyShareDriveActivity$8;->this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/waze/navigate/social/MyShareDriveActivity;->setResult(I)V

    .line 400
    iget-object v0, p0, Lcom/waze/navigate/social/MyShareDriveActivity$8;->this$0:Lcom/waze/navigate/social/MyShareDriveActivity;

    invoke-virtual {v0}, Lcom/waze/navigate/social/MyShareDriveActivity;->finish()V

    .line 402
    :cond_0
    return-void
.end method
