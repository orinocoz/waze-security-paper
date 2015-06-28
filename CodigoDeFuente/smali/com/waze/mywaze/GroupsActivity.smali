.class public Lcom/waze/mywaze/GroupsActivity;
.super Lcom/waze/view/web/SimpleWebActivity;
.source "GroupsActivity.java"

# interfaces
.implements Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;


# instance fields
.field public myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/waze/view/web/SimpleWebActivity;-><init>()V

    .line 14
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/mywaze/GroupsActivity;->myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    .line 15
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/waze/view/web/SimpleWebActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f0700fc

    invoke-virtual {p0, v0}, Lcom/waze/mywaze/GroupsActivity;->setTitleText(I)V

    .line 22
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/waze/mywaze/GroupsActivity;->setWebViewFlags(I)V

    .line 23
    return-void
.end method

.method public onUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/waze/mywaze/GroupsActivity;->loadUrl(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public onWebViewSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/waze/mywaze/GroupsActivity;->myWazeNativeManager:Lcom/waze/mywaze/MyWazeNativeManager;

    invoke-virtual {v0, p0, p1, p2}, Lcom/waze/mywaze/MyWazeNativeManager;->getGroupsUrl(Lcom/waze/mywaze/MyWazeNativeManager$UrlCallback;II)V

    .line 28
    return-void
.end method
