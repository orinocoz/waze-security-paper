.class Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;
.super Ljava/lang/Object;
.source "ReportMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/reports/ReportMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReportMenuOrganizer"
.end annotation


# static fields
.field private static final ID_BASE:I = 0x64


# instance fields
.field final _container:Landroid/widget/RelativeLayout;

.field _curNumOfItems:I

.field final _isVertical:Z

.field _lastButton:I

.field _lastFirstInLine:I

.field final _menuSpacing:I

.field final _numLines:I

.field final synthetic this$0:Lcom/waze/reports/ReportMenu;


# direct methods
.method constructor <init>(Lcom/waze/reports/ReportMenu;Landroid/widget/RelativeLayout;IZ)V
    .locals 2
    .parameter
    .parameter "container"
    .parameter "numLines"
    .parameter "isVertical"

    .prologue
    const/4 v0, 0x0

    .line 639
    iput-object p1, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->this$0:Lcom/waze/reports/ReportMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    iput v0, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_curNumOfItems:I

    .line 636
    iput v0, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_lastFirstInLine:I

    .line 637
    iput v0, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_lastButton:I

    .line 640
    iput-object p2, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_container:Landroid/widget/RelativeLayout;

    .line 641
    iput p3, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_numLines:I

    .line 642
    iput-boolean p4, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_isVertical:Z

    .line 643
    invoke-virtual {p1}, Lcom/waze/reports/ReportMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_menuSpacing:I

    .line 644
    return-void
.end method


# virtual methods
.method addReportButton(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V
    .locals 11
    .parameter "title"
    .parameter "imageResId"
    .parameter "ocl"

    .prologue
    const/4 v6, 0x3

    const/high16 v10, 0x42ba

    const/4 v5, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 647
    invoke-virtual {p0, p1, p2, p3}, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->buildReportButton(Ljava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    .line 648
    .local v0, button:Landroid/view/View;
    iget v9, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_curNumOfItems:I

    add-int/lit8 v9, v9, 0x64

    invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V

    .line 650
    iget-object v9, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->this$0:Lcom/waze/reports/ReportMenu;

    #getter for: Lcom/waze/reports/ReportMenu;->mDensity:F
    invoke-static {v9}, Lcom/waze/reports/ReportMenu;->access$0(Lcom/waze/reports/ReportMenu;)F

    move-result v9

    mul-float/2addr v9, v10

    float-to-int v4, v9

    .line 651
    .local v4, width:I
    iget-boolean v9, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_isVertical:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->this$0:Lcom/waze/reports/ReportMenu;

    #getter for: Lcom/waze/reports/ReportMenu;->mDensity:F
    invoke-static {v9}, Lcom/waze/reports/ReportMenu;->access$0(Lcom/waze/reports/ReportMenu;)F

    move-result v9

    mul-float/2addr v9, v10

    float-to-int v1, v9

    .line 652
    .local v1, height:I
    :goto_0
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 654
    .local v3, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget v9, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_lastButton:I

    if-nez v9, :cond_2

    .line 655
    iget-object v6, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->this$0:Lcom/waze/reports/ReportMenu;

    #getter for: Lcom/waze/reports/ReportMenu;->mDensity:F
    invoke-static {v6}, Lcom/waze/reports/ReportMenu;->access$0(Lcom/waze/reports/ReportMenu;)F

    move-result v6

    iget-boolean v7, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_isVertical:Z

    if-eqz v7, :cond_0

    const/16 v5, 0xd

    :cond_0
    int-to-float v5, v5

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v5, v8, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 656
    iget v5, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_curNumOfItems:I

    add-int/lit8 v5, v5, 0x64

    iput v5, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_lastFirstInLine:I

    .line 672
    :goto_1
    iget v5, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_curNumOfItems:I

    add-int/lit8 v5, v5, 0x64

    iput v5, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_lastButton:I

    .line 673
    iget v5, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_curNumOfItems:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_curNumOfItems:I

    .line 674
    iget-object v5, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_container:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 675
    return-void

    .line 651
    .end local v1           #height:I
    .end local v3           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    const/high16 v9, 0x42aa

    iget-object v10, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->this$0:Lcom/waze/reports/ReportMenu;

    #getter for: Lcom/waze/reports/ReportMenu;->mDensity:F
    invoke-static {v10}, Lcom/waze/reports/ReportMenu;->access$0(Lcom/waze/reports/ReportMenu;)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v1, v9

    goto :goto_0

    .line 658
    .restart local v1       #height:I
    .restart local v3       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget v9, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_curNumOfItems:I

    iget v10, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_numLines:I

    rem-int/2addr v9, v10

    if-nez v9, :cond_3

    move v2, v7

    .line 659
    .local v2, isInFirstLine:Z
    :goto_2
    if-eqz v2, :cond_8

    .line 660
    iget-boolean v9, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_isVertical:Z

    if-eqz v9, :cond_4

    .line 661
    :goto_3
    iget v9, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_lastFirstInLine:I

    .line 660
    invoke-virtual {v3, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 662
    iget-boolean v5, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_isVertical:Z

    if-eqz v5, :cond_5

    move v5, v6

    :goto_4
    iget v6, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_lastFirstInLine:I

    invoke-virtual {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 663
    iget-boolean v5, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_isVertical:Z

    if-eqz v5, :cond_6

    move v5, v8

    :goto_5
    iget-boolean v6, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_isVertical:Z

    if-eqz v6, :cond_7

    iget v6, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_menuSpacing:I

    :goto_6
    invoke-virtual {v3, v5, v6, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 664
    iget v5, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_curNumOfItems:I

    add-int/lit8 v5, v5, 0x64

    iput v5, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_lastFirstInLine:I

    goto :goto_1

    .end local v2           #isInFirstLine:Z
    :cond_3
    move v2, v8

    .line 658
    goto :goto_2

    .line 660
    .restart local v2       #isInFirstLine:Z
    :cond_4
    const/4 v5, 0x6

    goto :goto_3

    :cond_5
    move v5, v7

    .line 662
    goto :goto_4

    .line 663
    :cond_6
    iget v5, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_menuSpacing:I

    goto :goto_5

    :cond_7
    move v6, v8

    goto :goto_6

    .line 666
    :cond_8
    iget-boolean v9, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_isVertical:Z

    if-eqz v9, :cond_9

    const/4 v5, 0x6

    .line 667
    :cond_9
    iget v9, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_lastButton:I

    .line 666
    invoke-virtual {v3, v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 668
    iget-boolean v5, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_isVertical:Z

    if-eqz v5, :cond_a

    :goto_7
    iget v5, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_lastButton:I

    invoke-virtual {v3, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 669
    iget-boolean v5, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_isVertical:Z

    if-eqz v5, :cond_b

    iget v5, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_menuSpacing:I

    :goto_8
    iget-boolean v6, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_isVertical:Z

    if-eqz v6, :cond_c

    move v6, v8

    :goto_9
    invoke-virtual {v3, v5, v6, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_a
    move v7, v6

    .line 668
    goto :goto_7

    :cond_b
    move v5, v8

    .line 669
    goto :goto_8

    :cond_c
    iget v6, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_menuSpacing:I

    goto :goto_9
.end method

.method buildReportButton(Ljava/lang/String;ILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 12
    .parameter "title"
    .parameter "imageResId"
    .parameter "ocl"

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x2

    const/4 v9, 0x0

    .line 679
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->this$0:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v6}, Lcom/waze/reports/ReportMenu;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    iget-boolean v6, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->_isVertical:Z

    if-eqz v6, :cond_0

    .line 680
    const v6, 0x7f060019

    .line 679
    :goto_0
    invoke-direct {v2, v7, v8, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 683
    .local v2, layout:Landroid/widget/LinearLayout;
    const v6, 0x7f0201f7

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 684
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 685
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 686
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 687
    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 688
    invoke-virtual {v2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 689
    iget-object v6, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->this$0:Lcom/waze/reports/ReportMenu;

    #getter for: Lcom/waze/reports/ReportMenu;->mDensity:F
    invoke-static {v6}, Lcom/waze/reports/ReportMenu;->access$0(Lcom/waze/reports/ReportMenu;)F

    move-result v6

    const/high16 v7, 0x40a0

    mul-float/2addr v6, v7

    float-to-int v5, v6

    .line 690
    .local v5, padding:I
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 692
    new-instance v1, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->this$0:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v6}, Lcom/waze/reports/ReportMenu;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 693
    .local v1, iv:Landroid/widget/ImageView;
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 694
    invoke-virtual {v2, v1, v10, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 695
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f80

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 697
    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v6, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->this$0:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v6}, Lcom/waze/reports/ReportMenu;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f06001f

    invoke-direct {v4, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 699
    .local v4, newContext:Landroid/view/ContextThemeWrapper;
    new-instance v0, Lcom/waze/view/text/AutoResizeTextView;

    invoke-direct {v0, v4}, Lcom/waze/view/text/AutoResizeTextView;-><init>(Landroid/content/Context;)V

    .line 700
    .local v0, artv:Lcom/waze/view/text/AutoResizeTextView;
    invoke-virtual {v0, p1}, Lcom/waze/view/text/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 703
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/waze/reports/ReportMenu$ReportMenuOrganizer;->this$0:Lcom/waze/reports/ReportMenu;

    #getter for: Lcom/waze/reports/ReportMenu;->mDensity:F
    invoke-static {v6}, Lcom/waze/reports/ReportMenu;->access$0(Lcom/waze/reports/ReportMenu;)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v3, v9, v6, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 704
    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 706
    return-object v2

    .line 681
    .end local v0           #artv:Lcom/waze/view/text/AutoResizeTextView;
    .end local v1           #iv:Landroid/widget/ImageView;
    .end local v2           #layout:Landroid/widget/LinearLayout;
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #newContext:Landroid/view/ContextThemeWrapper;
    .end local v5           #padding:I
    :cond_0
    const v6, 0x7f06001a

    goto :goto_0
.end method
