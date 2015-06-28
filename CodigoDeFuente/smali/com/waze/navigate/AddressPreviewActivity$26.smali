.class Lcom/waze/navigate/AddressPreviewActivity$26;
.super Ljava/lang/Object;
.source "AddressPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressPreviewActivity;->refreshView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/AddressPreviewActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressPreviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity$26;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    .line 1467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$26;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v0}, Lcom/waze/navigate/AddressPreviewActivity;->access$10(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$26;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v1}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->eraseAddressItem(Lcom/waze/navigate/AddressItem;)V

    .line 1471
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$26;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    const v1, 0x800f

    invoke-virtual {v0, v1}, Lcom/waze/navigate/AddressPreviewActivity;->setResult(I)V

    .line 1472
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$26;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    const/4 v1, 0x1

    #setter for: Lcom/waze/navigate/AddressPreviewActivity;->mWasResultSet:Z
    invoke-static {v0, v1}, Lcom/waze/navigate/AddressPreviewActivity;->access$22(Lcom/waze/navigate/AddressPreviewActivity;Z)V

    .line 1473
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$26;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    invoke-virtual {v0}, Lcom/waze/navigate/AddressPreviewActivity;->finish()V

    .line 1474
    return-void
.end method
