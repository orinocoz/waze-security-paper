.class Lcom/waze/mywaze/social/FacebookEventActivity$1$1;
.super Ljava/lang/Object;
.source "FacebookEventActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/mywaze/social/FacebookEventActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/mywaze/social/FacebookEventActivity$1;


# direct methods
.method constructor <init>(Lcom/waze/mywaze/social/FacebookEventActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/mywaze/social/FacebookEventActivity$1$1;->this$1:Lcom/waze/mywaze/social/FacebookEventActivity$1;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 85
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 87
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/mywaze/social/FacebookEventActivity$1$1;->this$1:Lcom/waze/mywaze/social/FacebookEventActivity$1;

    #getter for: Lcom/waze/mywaze/social/FacebookEventActivity$1;->this$0:Lcom/waze/mywaze/social/FacebookEventActivity;
    invoke-static {v1}, Lcom/waze/mywaze/social/FacebookEventActivity$1;->access$0(Lcom/waze/mywaze/social/FacebookEventActivity$1;)Lcom/waze/mywaze/social/FacebookEventActivity;

    move-result-object v1

    #getter for: Lcom/waze/mywaze/social/FacebookEventActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v1}, Lcom/waze/mywaze/social/FacebookEventActivity;->access$0(Lcom/waze/mywaze/social/FacebookEventActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/navigate/AddressItem;->getMeetingId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->VerifyEventWithNoAddress(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/waze/mywaze/social/FacebookEventActivity$1$1;->this$1:Lcom/waze/mywaze/social/FacebookEventActivity$1;

    #getter for: Lcom/waze/mywaze/social/FacebookEventActivity$1;->this$0:Lcom/waze/mywaze/social/FacebookEventActivity;
    invoke-static {v0}, Lcom/waze/mywaze/social/FacebookEventActivity$1;->access$0(Lcom/waze/mywaze/social/FacebookEventActivity$1;)Lcom/waze/mywaze/social/FacebookEventActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/waze/mywaze/social/FacebookEventActivity;->setResult(I)V

    .line 89
    iget-object v0, p0, Lcom/waze/mywaze/social/FacebookEventActivity$1$1;->this$1:Lcom/waze/mywaze/social/FacebookEventActivity$1;

    #getter for: Lcom/waze/mywaze/social/FacebookEventActivity$1;->this$0:Lcom/waze/mywaze/social/FacebookEventActivity;
    invoke-static {v0}, Lcom/waze/mywaze/social/FacebookEventActivity$1;->access$0(Lcom/waze/mywaze/social/FacebookEventActivity$1;)Lcom/waze/mywaze/social/FacebookEventActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/mywaze/social/FacebookEventActivity;->finish()V

    .line 91
    :cond_0
    return-void
.end method
