.class Lcom/waze/navigate/social/ShareDriveActivity$19;
.super Ljava/lang/Object;
.source "ShareDriveActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/social/ShareDriveActivity;->askToAddAFriend(Lcom/waze/user/PersonBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/social/ShareDriveActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/social/ShareDriveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/social/ShareDriveActivity$19;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    .line 712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 716
    iget-object v0, p0, Lcom/waze/navigate/social/ShareDriveActivity$19;->this$0:Lcom/waze/navigate/social/ShareDriveActivity;

    invoke-virtual {v0}, Lcom/waze/navigate/social/ShareDriveActivity;->SendMeeting()V

    .line 717
    return-void
.end method
