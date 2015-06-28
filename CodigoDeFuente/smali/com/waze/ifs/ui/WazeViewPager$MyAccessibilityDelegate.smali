.class Lcom/waze/ifs/ui/WazeViewPager$MyAccessibilityDelegate;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "WazeViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/ifs/ui/WazeViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/ifs/ui/WazeViewPager;


# direct methods
.method constructor <init>(Lcom/waze/ifs/ui/WazeViewPager;)V
    .locals 0
    .parameter

    .prologue
    .line 2768
    iput-object p1, p0, Lcom/waze/ifs/ui/WazeViewPager$MyAccessibilityDelegate;->this$0:Lcom/waze/ifs/ui/WazeViewPager;

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method

.method private canScroll()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2820
    iget-object v1, p0, Lcom/waze/ifs/ui/WazeViewPager$MyAccessibilityDelegate;->this$0:Lcom/waze/ifs/ui/WazeViewPager;

    #getter for: Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;
    invoke-static {v1}, Lcom/waze/ifs/ui/WazeViewPager;->access$1(Lcom/waze/ifs/ui/WazeViewPager;)Lcom/waze/ifs/ui/WazePagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/waze/ifs/ui/WazeViewPager$MyAccessibilityDelegate;->this$0:Lcom/waze/ifs/ui/WazeViewPager;

    #getter for: Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;
    invoke-static {v1}, Lcom/waze/ifs/ui/WazeViewPager;->access$1(Lcom/waze/ifs/ui/WazeViewPager;)Lcom/waze/ifs/ui/WazePagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/ifs/ui/WazePagerAdapter;->getCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter "host"
    .parameter "event"

    .prologue
    .line 2772
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2773
    const-class v1, Lcom/waze/ifs/ui/WazeViewPager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2774
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->obtain()Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v0

    .line 2775
    .local v0, recordCompat:Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    invoke-direct {p0}, Lcom/waze/ifs/ui/WazeViewPager$MyAccessibilityDelegate;->canScroll()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setScrollable(Z)V

    .line 2776
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_0

    .line 2777
    iget-object v1, p0, Lcom/waze/ifs/ui/WazeViewPager$MyAccessibilityDelegate;->this$0:Lcom/waze/ifs/ui/WazeViewPager;

    #getter for: Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;
    invoke-static {v1}, Lcom/waze/ifs/ui/WazeViewPager;->access$1(Lcom/waze/ifs/ui/WazeViewPager;)Lcom/waze/ifs/ui/WazePagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2778
    iget-object v1, p0, Lcom/waze/ifs/ui/WazeViewPager$MyAccessibilityDelegate;->this$0:Lcom/waze/ifs/ui/WazeViewPager;

    #getter for: Lcom/waze/ifs/ui/WazeViewPager;->mAdapter:Lcom/waze/ifs/ui/WazePagerAdapter;
    invoke-static {v1}, Lcom/waze/ifs/ui/WazeViewPager;->access$1(Lcom/waze/ifs/ui/WazeViewPager;)Lcom/waze/ifs/ui/WazePagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/ifs/ui/WazePagerAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setItemCount(I)V

    .line 2779
    iget-object v1, p0, Lcom/waze/ifs/ui/WazeViewPager$MyAccessibilityDelegate;->this$0:Lcom/waze/ifs/ui/WazeViewPager;

    #getter for: Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I
    invoke-static {v1}, Lcom/waze/ifs/ui/WazeViewPager;->access$2(Lcom/waze/ifs/ui/WazeViewPager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 2780
    iget-object v1, p0, Lcom/waze/ifs/ui/WazeViewPager$MyAccessibilityDelegate;->this$0:Lcom/waze/ifs/ui/WazeViewPager;

    #getter for: Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I
    invoke-static {v1}, Lcom/waze/ifs/ui/WazeViewPager;->access$2(Lcom/waze/ifs/ui/WazeViewPager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    .line 2782
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2
    .parameter "host"
    .parameter "info"

    .prologue
    .line 2786
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2787
    const-class v0, Lcom/waze/ifs/ui/WazeViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 2788
    invoke-direct {p0}, Lcom/waze/ifs/ui/WazeViewPager$MyAccessibilityDelegate;->canScroll()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 2789
    iget-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager$MyAccessibilityDelegate;->this$0:Lcom/waze/ifs/ui/WazeViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/WazeViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2790
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 2792
    :cond_0
    iget-object v0, p0, Lcom/waze/ifs/ui/WazeViewPager$MyAccessibilityDelegate;->this$0:Lcom/waze/ifs/ui/WazeViewPager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/WazeViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2793
    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 2795
    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4
    .parameter "host"
    .parameter "action"
    .parameter "args"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2799
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2816
    :goto_0
    return v0

    .line 2802
    :cond_0
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    .line 2816
    goto :goto_0

    .line 2804
    :sswitch_0
    iget-object v2, p0, Lcom/waze/ifs/ui/WazeViewPager$MyAccessibilityDelegate;->this$0:Lcom/waze/ifs/ui/WazeViewPager;

    invoke-virtual {v2, v0}, Lcom/waze/ifs/ui/WazeViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2805
    iget-object v1, p0, Lcom/waze/ifs/ui/WazeViewPager$MyAccessibilityDelegate;->this$0:Lcom/waze/ifs/ui/WazeViewPager;

    iget-object v2, p0, Lcom/waze/ifs/ui/WazeViewPager$MyAccessibilityDelegate;->this$0:Lcom/waze/ifs/ui/WazeViewPager;

    #getter for: Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I
    invoke-static {v2}, Lcom/waze/ifs/ui/WazeViewPager;->access$2(Lcom/waze/ifs/ui/WazeViewPager;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/waze/ifs/ui/WazeViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2808
    goto :goto_0

    .line 2810
    :sswitch_1
    iget-object v2, p0, Lcom/waze/ifs/ui/WazeViewPager$MyAccessibilityDelegate;->this$0:Lcom/waze/ifs/ui/WazeViewPager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/waze/ifs/ui/WazeViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2811
    iget-object v1, p0, Lcom/waze/ifs/ui/WazeViewPager$MyAccessibilityDelegate;->this$0:Lcom/waze/ifs/ui/WazeViewPager;

    iget-object v2, p0, Lcom/waze/ifs/ui/WazeViewPager$MyAccessibilityDelegate;->this$0:Lcom/waze/ifs/ui/WazeViewPager;

    #getter for: Lcom/waze/ifs/ui/WazeViewPager;->mCurItem:I
    invoke-static {v2}, Lcom/waze/ifs/ui/WazeViewPager;->access$2(Lcom/waze/ifs/ui/WazeViewPager;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/waze/ifs/ui/WazeViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2814
    goto :goto_0

    .line 2802
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method
