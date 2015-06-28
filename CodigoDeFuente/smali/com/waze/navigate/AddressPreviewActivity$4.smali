.class Lcom/waze/navigate/AddressPreviewActivity$4;
.super Lcom/waze/ifs/async/RunnableExecutor;
.source "AddressPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/navigate/AddressPreviewActivity;
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
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity$4;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    .line 1977
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableExecutor;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/AddressPreviewActivity$4;)Lcom/waze/navigate/AddressPreviewActivity;
    .locals 1
    .parameter

    .prologue
    .line 1977
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$4;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    return-object v0
.end method


# virtual methods
.method public event()V
    .locals 7

    .prologue
    .line 1984
    iget-object v3, p0, Lcom/waze/navigate/AddressPreviewActivity$4;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #calls: Lcom/waze/navigate/AddressPreviewActivity;->setAddressOptionsView()V
    invoke-static {v3}, Lcom/waze/navigate/AddressPreviewActivity;->access$5(Lcom/waze/navigate/AddressPreviewActivity;)V

    .line 1986
    iget-object v3, p0, Lcom/waze/navigate/AddressPreviewActivity$4;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    invoke-virtual {v3}, Lcom/waze/navigate/AddressPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->orientation:I

    .line 1987
    .local v0, display_mode:I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 1988
    iget-object v3, p0, Lcom/waze/navigate/AddressPreviewActivity$4;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v3}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/navigate/AddressItem;->getLocationX()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1989
    .local v1, locationX:I
    iget-object v3, p0, Lcom/waze/navigate/AddressPreviewActivity$4;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v3}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/navigate/AddressItem;->getLocationY()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/waze/navigate/AddressPreviewActivity$4;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->LS_Y_FACTOR:F
    invoke-static {v4}, Lcom/waze/navigate/AddressPreviewActivity;->access$7(Lcom/waze/navigate/AddressPreviewActivity;)F

    move-result v4

    iget-object v5, p0, Lcom/waze/navigate/AddressPreviewActivity$4;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mLockHeight:I
    invoke-static {v5}, Lcom/waze/navigate/AddressPreviewActivity;->access$8(Lcom/waze/navigate/AddressPreviewActivity;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sub-int v2, v3, v4

    .line 1996
    .local v2, locationY:I
    :goto_0
    iget-object v3, p0, Lcom/waze/navigate/AddressPreviewActivity$4;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    new-instance v4, Lcom/waze/navigate/AddressPreviewActivity$4$1;

    invoke-direct {v4, p0, v1, v2}, Lcom/waze/navigate/AddressPreviewActivity$4$1;-><init>(Lcom/waze/navigate/AddressPreviewActivity$4;II)V

    .line 2002
    const-wide/16 v5, 0x1f4

    .line 1996
    invoke-virtual {v3, v4, v5, v6}, Lcom/waze/navigate/AddressPreviewActivity;->postDelayed(Ljava/lang/Runnable;J)V

    .line 2003
    return-void

    .line 1991
    .end local v1           #locationX:I
    .end local v2           #locationY:I
    :cond_0
    iget-object v3, p0, Lcom/waze/navigate/AddressPreviewActivity$4;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v3}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/navigate/AddressItem;->getLocationX()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/waze/navigate/AddressPreviewActivity$4;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mMapCovered:I
    invoke-static {v4}, Lcom/waze/navigate/AddressPreviewActivity;->access$1(Lcom/waze/navigate/AddressPreviewActivity;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/waze/navigate/AddressPreviewActivity$4;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->LS_X_FACTOR:F
    invoke-static {v5}, Lcom/waze/navigate/AddressPreviewActivity;->access$9(Lcom/waze/navigate/AddressPreviewActivity;)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v1, v3, v4

    .line 1992
    .restart local v1       #locationX:I
    iget-object v3, p0, Lcom/waze/navigate/AddressPreviewActivity$4;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v3}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/navigate/AddressItem;->getLocationY()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .restart local v2       #locationY:I
    goto :goto_0
.end method
