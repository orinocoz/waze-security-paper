.class Lcom/waze/reports/EditMapLocationFragment$2;
.super Landroid/os/Handler;
.source "EditMapLocationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/reports/EditMapLocationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/EditMapLocationFragment;


# direct methods
.method constructor <init>(Lcom/waze/reports/EditMapLocationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/EditMapLocationFragment$2;->this$0:Lcom/waze/reports/EditMapLocationFragment;

    .line 166
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 168
    iget v2, p1, Landroid/os/Message;->what:I

    sget v3, Lcom/waze/navigate/DriveToNativeManager;->UH_MAP_CENTER:I

    if-ne v2, v3, :cond_1

    .line 169
    iget-object v2, p0, Lcom/waze/reports/EditMapLocationFragment$2;->this$0:Lcom/waze/reports/EditMapLocationFragment;

    #getter for: Lcom/waze/reports/EditMapLocationFragment;->mDriveTo:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v2}, Lcom/waze/reports/EditMapLocationFragment;->access$1(Lcom/waze/reports/EditMapLocationFragment;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v2

    sget v3, Lcom/waze/navigate/DriveToNativeManager;->UH_MAP_CENTER:I

    iget-object v4, p0, Lcom/waze/reports/EditMapLocationFragment$2;->this$0:Lcom/waze/reports/EditMapLocationFragment;

    iget-object v4, v4, Lcom/waze/reports/EditMapLocationFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Lcom/waze/navigate/DriveToNativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 171
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 172
    .local v0, b:Landroid/os/Bundle;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 173
    const-string v2, "position"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/waze/reports/EditMapLocationFragment$Position;

    .line 174
    .local v1, pos:Lcom/waze/reports/EditMapLocationFragment$Position;
    iget-object v2, p0, Lcom/waze/reports/EditMapLocationFragment$2;->this$0:Lcom/waze/reports/EditMapLocationFragment;

    invoke-virtual {v2}, Lcom/waze/reports/EditMapLocationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/waze/reports/EditMapLocationFragment$IEditMap;

    iget v3, v1, Lcom/waze/reports/EditMapLocationFragment$Position;->longitude:I

    iget v4, v1, Lcom/waze/reports/EditMapLocationFragment$Position;->latitude:I

    invoke-interface {v2, v3, v4}, Lcom/waze/reports/EditMapLocationFragment$IEditMap;->doneEditMap(II)V

    .line 188
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #pos:Lcom/waze/reports/EditMapLocationFragment$Position;
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    sget v3, Lcom/waze/NativeManager;->UH_LOCATION_PICKER_STATE:I

    if-ne v2, v3, :cond_3

    .line 178
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/waze/reports/EditMapLocationFragment$2;->this$0:Lcom/waze/reports/EditMapLocationFragment;

    #getter for: Lcom/waze/reports/EditMapLocationFragment;->mDoneEnabled:Z
    invoke-static {v2}, Lcom/waze/reports/EditMapLocationFragment;->access$6(Lcom/waze/reports/EditMapLocationFragment;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 179
    iget-object v2, p0, Lcom/waze/reports/EditMapLocationFragment$2;->this$0:Lcom/waze/reports/EditMapLocationFragment;

    #getter for: Lcom/waze/reports/EditMapLocationFragment;->mTitleButtonBar:Lcom/waze/view/title/TitleButtonBar;
    invoke-static {v2}, Lcom/waze/reports/EditMapLocationFragment;->access$7(Lcom/waze/reports/EditMapLocationFragment;)Lcom/waze/view/title/TitleButtonBar;

    move-result-object v2

    const v3, 0x7f02010b

    invoke-virtual {v2, v4, v3}, Lcom/waze/view/title/TitleButtonBar;->setCloseImageResource(II)V

    .line 180
    iget-object v2, p0, Lcom/waze/reports/EditMapLocationFragment$2;->this$0:Lcom/waze/reports/EditMapLocationFragment;

    const/4 v3, 0x1

    #setter for: Lcom/waze/reports/EditMapLocationFragment;->mDoneEnabled:Z
    invoke-static {v2, v3}, Lcom/waze/reports/EditMapLocationFragment;->access$8(Lcom/waze/reports/EditMapLocationFragment;Z)V

    goto :goto_0

    .line 181
    :cond_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/waze/reports/EditMapLocationFragment$2;->this$0:Lcom/waze/reports/EditMapLocationFragment;

    #getter for: Lcom/waze/reports/EditMapLocationFragment;->mDoneEnabled:Z
    invoke-static {v2}, Lcom/waze/reports/EditMapLocationFragment;->access$6(Lcom/waze/reports/EditMapLocationFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/waze/reports/EditMapLocationFragment$2;->this$0:Lcom/waze/reports/EditMapLocationFragment;

    #getter for: Lcom/waze/reports/EditMapLocationFragment;->mTitleButtonBar:Lcom/waze/view/title/TitleButtonBar;
    invoke-static {v2}, Lcom/waze/reports/EditMapLocationFragment;->access$7(Lcom/waze/reports/EditMapLocationFragment;)Lcom/waze/view/title/TitleButtonBar;

    move-result-object v2

    const v3, 0x7f02042e

    invoke-virtual {v2, v4, v3}, Lcom/waze/view/title/TitleButtonBar;->setCloseImageResource(II)V

    .line 183
    iget-object v2, p0, Lcom/waze/reports/EditMapLocationFragment$2;->this$0:Lcom/waze/reports/EditMapLocationFragment;

    #setter for: Lcom/waze/reports/EditMapLocationFragment;->mDoneEnabled:Z
    invoke-static {v2, v4}, Lcom/waze/reports/EditMapLocationFragment;->access$8(Lcom/waze/reports/EditMapLocationFragment;Z)V

    goto :goto_0

    .line 187
    :cond_3
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
