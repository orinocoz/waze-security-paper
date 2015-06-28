.class Lcom/waze/view/popups/PoiPopUp$3;
.super Landroid/os/Handler;
.source "PoiPopUp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/popups/PoiPopUp;->onNavigateButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/popups/PoiPopUp;

.field private final synthetic val$dtnm:Lcom/waze/navigate/DriveToNativeManager;


# direct methods
.method constructor <init>(Lcom/waze/view/popups/PoiPopUp;Lcom/waze/navigate/DriveToNativeManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/popups/PoiPopUp$3;->this$0:Lcom/waze/view/popups/PoiPopUp;

    iput-object p2, p0, Lcom/waze/view/popups/PoiPopUp$3;->val$dtnm:Lcom/waze/navigate/DriveToNativeManager;

    .line 173
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 176
    iget v2, p1, Landroid/os/Message;->what:I

    sget v3, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    if-ne v2, v3, :cond_0

    .line 177
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 178
    iget-object v2, p0, Lcom/waze/view/popups/PoiPopUp$3;->this$0:Lcom/waze/view/popups/PoiPopUp;

    #getter for: Lcom/waze/view/popups/PoiPopUp;->mVenueGetHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/waze/view/popups/PoiPopUp;->access$14(Lcom/waze/view/popups/PoiPopUp;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/view/popups/PoiPopUp$3;->this$0:Lcom/waze/view/popups/PoiPopUp;

    #getter for: Lcom/waze/view/popups/PoiPopUp;->mVenuGetFailRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/waze/view/popups/PoiPopUp;->access$15(Lcom/waze/view/popups/PoiPopUp;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 180
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 181
    .local v1, b:Landroid/os/Bundle;
    const-string v2, "address_item"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/waze/navigate/AddressItem;

    .line 182
    .local v0, ai:Lcom/waze/navigate/AddressItem;
    iget-object v2, p0, Lcom/waze/view/popups/PoiPopUp$3;->val$dtnm:Lcom/waze/navigate/DriveToNativeManager;

    sget v3, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    iget-object v4, p0, Lcom/waze/view/popups/PoiPopUp$3;->this$0:Lcom/waze/view/popups/PoiPopUp;

    #getter for: Lcom/waze/view/popups/PoiPopUp;->mVenueGetHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/waze/view/popups/PoiPopUp;->access$14(Lcom/waze/view/popups/PoiPopUp;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/waze/navigate/DriveToNativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 184
    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->getLocationX()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->getLocationY()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    iget-object v2, p0, Lcom/waze/view/popups/PoiPopUp$3;->this$0:Lcom/waze/view/popups/PoiPopUp;

    #getter for: Lcom/waze/view/popups/PoiPopUp;->mVenuGetFailRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/waze/view/popups/PoiPopUp;->access$15(Lcom/waze/view/popups/PoiPopUp;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 186
    iget-object v2, p0, Lcom/waze/view/popups/PoiPopUp$3;->this$0:Lcom/waze/view/popups/PoiPopUp;

    #getter for: Lcom/waze/view/popups/PoiPopUp;->mVenuGetFailRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/waze/view/popups/PoiPopUp;->access$15(Lcom/waze/view/popups/PoiPopUp;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 187
    iget-object v2, p0, Lcom/waze/view/popups/PoiPopUp$3;->this$0:Lcom/waze/view/popups/PoiPopUp;

    #setter for: Lcom/waze/view/popups/PoiPopUp;->mVenuGetFailRunnable:Ljava/lang/Runnable;
    invoke-static {v2, v5}, Lcom/waze/view/popups/PoiPopUp;->access$16(Lcom/waze/view/popups/PoiPopUp;Ljava/lang/Runnable;)V

    .line 196
    .end local v0           #ai:Lcom/waze/navigate/AddressItem;
    .end local v1           #b:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 191
    .restart local v0       #ai:Lcom/waze/navigate/AddressItem;
    .restart local v1       #b:Landroid/os/Bundle;
    :cond_1
    iget-object v2, p0, Lcom/waze/view/popups/PoiPopUp$3;->this$0:Lcom/waze/view/popups/PoiPopUp;

    #setter for: Lcom/waze/view/popups/PoiPopUp;->mVenuGetFailRunnable:Ljava/lang/Runnable;
    invoke-static {v2, v5}, Lcom/waze/view/popups/PoiPopUp;->access$16(Lcom/waze/view/popups/PoiPopUp;Ljava/lang/Runnable;)V

    .line 192
    invoke-static {}, Lcom/waze/view/popups/PoiPopUp;->access$6()Lcom/waze/LayoutManager;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/waze/LayoutManager;->callCloseAllPopups(I)V

    .line 193
    iget-object v2, p0, Lcom/waze/view/popups/PoiPopUp$3;->val$dtnm:Lcom/waze/navigate/DriveToNativeManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v5, v3, v7}, Lcom/waze/navigate/DriveToNativeManager;->navigate(Lcom/waze/navigate/AddressItem;Lcom/waze/navigate/DriveToNavigateCallback;ZZ)V

    .line 194
    invoke-static {}, Lcom/waze/analytics/Analytics;->adsContextNavigationInit()V

    goto :goto_0
.end method
