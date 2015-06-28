.class Lcom/waze/LayoutManager$15;
.super Ljava/lang/Object;
.source "LayoutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/LayoutManager;->SwitchPagePeriodicly()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/LayoutManager;

.field private final synthetic val$myPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Lcom/waze/LayoutManager;Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/LayoutManager$15;->this$0:Lcom/waze/LayoutManager;

    iput-object p2, p0, Lcom/waze/LayoutManager$15;->val$myPager:Landroid/support/v4/view/ViewPager;

    .line 977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 979
    iget-object v0, p0, Lcom/waze/LayoutManager$15;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->bIsPopUpShow:Z
    invoke-static {v0}, Lcom/waze/LayoutManager;->access$14(Lcom/waze/LayoutManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/waze/LayoutManager$15;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->nNumberOfViews:I
    invoke-static {v0}, Lcom/waze/LayoutManager;->access$15(Lcom/waze/LayoutManager;)I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/waze/LayoutManager$15;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->bRefreshPageTime:Z
    invoke-static {v0}, Lcom/waze/LayoutManager;->access$16(Lcom/waze/LayoutManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 981
    iget-object v0, p0, Lcom/waze/LayoutManager$15;->this$0:Lcom/waze/LayoutManager;

    invoke-virtual {v0, v2}, Lcom/waze/LayoutManager;->callCloseAllPopups(I)V

    .line 1001
    :cond_0
    :goto_0
    return-void

    .line 984
    :cond_1
    iget-object v0, p0, Lcom/waze/LayoutManager$15;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->bRefreshPageTime:Z
    invoke-static {v0}, Lcom/waze/LayoutManager;->access$16(Lcom/waze/LayoutManager;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 985
    iget-object v0, p0, Lcom/waze/LayoutManager$15;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->nNumberOfViews:I
    invoke-static {v0}, Lcom/waze/LayoutManager;->access$15(Lcom/waze/LayoutManager;)I

    move-result v0

    iget-object v1, p0, Lcom/waze/LayoutManager$15;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->nPageNumber:I
    invoke-static {v1}, Lcom/waze/LayoutManager;->access$17(Lcom/waze/LayoutManager;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-gt v0, v1, :cond_2

    .line 986
    iget-object v0, p0, Lcom/waze/LayoutManager$15;->this$0:Lcom/waze/LayoutManager;

    invoke-virtual {v0, v2}, Lcom/waze/LayoutManager;->callCloseAllPopups(I)V

    goto :goto_0

    .line 988
    :cond_2
    iget-object v0, p0, Lcom/waze/LayoutManager$15;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->nPageNumber:I
    invoke-static {v0}, Lcom/waze/LayoutManager;->access$17(Lcom/waze/LayoutManager;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    #setter for: Lcom/waze/LayoutManager;->nPageNumber:I
    invoke-static {v0, v1}, Lcom/waze/LayoutManager;->access$12(Lcom/waze/LayoutManager;I)V

    .line 989
    iget-object v0, p0, Lcom/waze/LayoutManager$15;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->mViews:[Landroid/view/View;
    invoke-static {v0}, Lcom/waze/LayoutManager;->access$18(Lcom/waze/LayoutManager;)[Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/LayoutManager$15;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->nPageNumber:I
    invoke-static {v1}, Lcom/waze/LayoutManager;->access$17(Lcom/waze/LayoutManager;)I

    move-result v1

    aget-object v0, v0, v1

    if-nez v0, :cond_3

    .line 990
    iget-object v0, p0, Lcom/waze/LayoutManager$15;->this$0:Lcom/waze/LayoutManager;

    invoke-virtual {v0, v2}, Lcom/waze/LayoutManager;->callCloseAllPopups(I)V

    goto :goto_0

    .line 992
    :cond_3
    iget-object v0, p0, Lcom/waze/LayoutManager$15;->val$myPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/waze/LayoutManager$15;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->nPageNumber:I
    invoke-static {v1}, Lcom/waze/LayoutManager;->access$17(Lcom/waze/LayoutManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 993
    iget-object v1, p0, Lcom/waze/LayoutManager$15;->val$myPager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/waze/LayoutManager$15;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->mViews:[Landroid/view/View;
    invoke-static {v0}, Lcom/waze/LayoutManager;->access$18(Lcom/waze/LayoutManager;)[Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/waze/LayoutManager$15;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->nPageNumber:I
    invoke-static {v2}, Lcom/waze/LayoutManager;->access$17(Lcom/waze/LayoutManager;)I

    move-result v2

    aget-object v0, v0, v2

    check-cast v0, Lcom/waze/view/popups/PopUp;

    invoke-virtual {v0}, Lcom/waze/view/popups/PopUp;->GetTimer()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/support/v4/view/ViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 997
    :cond_4
    iget-object v0, p0, Lcom/waze/LayoutManager$15;->this$0:Lcom/waze/LayoutManager;

    #setter for: Lcom/waze/LayoutManager;->bRefreshPageTime:Z
    invoke-static {v0, v1}, Lcom/waze/LayoutManager;->access$13(Lcom/waze/LayoutManager;Z)V

    .line 998
    iget-object v0, p0, Lcom/waze/LayoutManager$15;->val$myPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/waze/LayoutManager$15;->this$0:Lcom/waze/LayoutManager;

    #getter for: Lcom/waze/LayoutManager;->mInterruptTime:I
    invoke-static {v1}, Lcom/waze/LayoutManager;->access$19(Lcom/waze/LayoutManager;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/support/v4/view/ViewPager;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
