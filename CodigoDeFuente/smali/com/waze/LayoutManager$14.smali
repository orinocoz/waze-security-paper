.class Lcom/waze/LayoutManager$14;
.super Ljava/lang/Object;
.source "LayoutManager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/LayoutManager;->OpenPopUps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/LayoutManager;


# direct methods
.method constructor <init>(Lcom/waze/LayoutManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/LayoutManager$14;->this$0:Lcom/waze/LayoutManager;

    .line 912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 937
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 938
    iget-object v0, p0, Lcom/waze/LayoutManager$14;->this$0:Lcom/waze/LayoutManager;

    const/4 v1, 0x0

    #setter for: Lcom/waze/LayoutManager;->bRefreshPageTime:Z
    invoke-static {v0, v1}, Lcom/waze/LayoutManager;->access$13(Lcom/waze/LayoutManager;Z)V

    .line 940
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 933
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    .line 916
    iget-object v0, p0, Lcom/waze/LayoutManager$14;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->mLastPageNumber:I
    invoke-static {v0}, Lcom/waze/LayoutManager;->access$10(Lcom/waze/LayoutManager;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 930
    :goto_0
    return-void

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/waze/LayoutManager$14;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->mLastPageNumber:I
    invoke-static {v0}, Lcom/waze/LayoutManager;->access$10(Lcom/waze/LayoutManager;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/waze/LayoutManager$14;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->mLastPageNumber:I
    invoke-static {v0}, Lcom/waze/LayoutManager;->access$10(Lcom/waze/LayoutManager;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 921
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    sget-object v1, Lcom/waze/PopupAction;->popup_hidden:Lcom/waze/PopupAction;

    invoke-virtual {v1}, Lcom/waze/PopupAction;->ordinal()I

    move-result v1

    .line 922
    iget-object v2, p0, Lcom/waze/LayoutManager$14;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->mLastPageNumber:I
    invoke-static {v2}, Lcom/waze/LayoutManager;->access$10(Lcom/waze/LayoutManager;)I

    move-result v2

    .line 921
    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/NativeManager;->PopupAction(III)V

    .line 924
    :cond_1
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    sget-object v1, Lcom/waze/PopupAction;->popup_shown:Lcom/waze/PopupAction;

    invoke-virtual {v1}, Lcom/waze/PopupAction;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1, v3}, Lcom/waze/NativeManager;->PopupAction(III)V

    .line 926
    iget-object v0, p0, Lcom/waze/LayoutManager$14;->this$0:Lcom/waze/LayoutManager;

    invoke-virtual {v0}, Lcom/waze/LayoutManager;->CloseAlertTicker()V

    .line 927
    iget-object v0, p0, Lcom/waze/LayoutManager$14;->this$0:Lcom/waze/LayoutManager;

    iget-object v1, p0, Lcom/waze/LayoutManager$14;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->mLastPageNumber:I
    invoke-static {v1}, Lcom/waze/LayoutManager;->access$10(Lcom/waze/LayoutManager;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/waze/LayoutManager;->SwitchDot(II)V

    .line 928
    iget-object v0, p0, Lcom/waze/LayoutManager$14;->this$0:Lcom/waze/LayoutManager;

    #setter for: Lcom/waze/LayoutManager;->mLastPageNumber:I
    invoke-static {v0, p1}, Lcom/waze/LayoutManager;->access$11(Lcom/waze/LayoutManager;I)V

    .line 929
    iget-object v0, p0, Lcom/waze/LayoutManager$14;->this$0:Lcom/waze/LayoutManager;

    #setter for: Lcom/waze/LayoutManager;->nPageNumber:I
    invoke-static {v0, p1}, Lcom/waze/LayoutManager;->access$12(Lcom/waze/LayoutManager;I)V

    goto :goto_0
.end method
