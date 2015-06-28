.class Lcom/waze/navigate/AddressPreviewActivity$13$1;
.super Ljava/lang/Object;
.source "AddressPreviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressPreviewActivity$13;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/waze/navigate/AddressPreviewActivity$13;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressPreviewActivity$13;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity$13$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$13;

    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 792
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$13$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$13;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$13;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity$13;->access$0(Lcom/waze/navigate/AddressPreviewActivity$13;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v0

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mNatMgr:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$20(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 793
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$13$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$13;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$13;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity$13;->access$0(Lcom/waze/navigate/AddressPreviewActivity$13;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v0

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$10(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$13$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$13;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$13;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity$13;->access$0(Lcom/waze/navigate/AddressPreviewActivity$13;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v1

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->navigate(Lcom/waze/navigate/AddressItem;Lcom/waze/navigate/DriveToNavigateCallback;)V

    .line 794
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$13$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$13;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$13;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity$13;->access$0(Lcom/waze/navigate/AddressPreviewActivity$13;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/waze/navigate/AddressPreviewActivity;->setResult(I)V

    .line 795
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$13$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$13;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$13;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity$13;->access$0(Lcom/waze/navigate/AddressPreviewActivity$13;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v0

    const/4 v1, 0x1

    #setter for: Lcom/waze/navigate/AddressPreviewActivity;->mWasResultSet:Z
    invoke-static {v0, v1}, Lcom/waze/navigate/AddressPreviewActivity;->access$22(Lcom/waze/navigate/AddressPreviewActivity;Z)V

    .line 796
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$13$1;->this$1:Lcom/waze/navigate/AddressPreviewActivity$13;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity$13;->this$0:Lcom/waze/navigate/AddressPreviewActivity;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity$13;->access$0(Lcom/waze/navigate/AddressPreviewActivity$13;)Lcom/waze/navigate/AddressPreviewActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/navigate/AddressPreviewActivity;->finish()V

    .line 797
    return-void
.end method
