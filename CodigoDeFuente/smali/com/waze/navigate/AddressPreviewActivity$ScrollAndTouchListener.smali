.class final Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;
.super Ljava/lang/Object;
.source "AddressPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/waze/ifs/ui/ObservableScrollView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/navigate/AddressPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScrollAndTouchListener"
.end annotation


# instance fields
.field private _isMapOpen:Z

.field private _isTouched:Z

.field private final density:F

.field private final frameHeight:I

.field private final lockHeight:I

.field private final osv:Lcom/waze/ifs/ui/ObservableScrollView;

.field final synthetic this$0:Lcom/waze/navigate/AddressPreviewActivity;


# direct methods
.method private constructor <init>(Lcom/waze/navigate/AddressPreviewActivity;IFILcom/waze/ifs/ui/ObservableScrollView;)V
    .locals 1
    .parameter
    .parameter "lockHeight"
    .parameter "density"
    .parameter "frameHeight"
    .parameter "osv"

    .prologue
    const/4 v0, 0x0

    .line 2032
    iput-object p1, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    .line 2031
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2028
    iput-boolean v0, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->_isMapOpen:Z

    .line 2029
    iput-boolean v0, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->_isTouched:Z

    .line 2033
    iput p2, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->lockHeight:I

    .line 2034
    iput p3, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->density:F

    .line 2035
    iput p4, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->frameHeight:I

    .line 2036
    iput-object p5, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->osv:Lcom/waze/ifs/ui/ObservableScrollView;

    .line 2037
    return-void
.end method

.method synthetic constructor <init>(Lcom/waze/navigate/AddressPreviewActivity;IFILcom/waze/ifs/ui/ObservableScrollView;Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2031
    invoke-direct/range {p0 .. p5}, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;-><init>(Lcom/waze/navigate/AddressPreviewActivity;IFILcom/waze/ifs/ui/ObservableScrollView;)V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;)Lcom/waze/ifs/ui/ObservableScrollView;
    .locals 1
    .parameter

    .prologue
    .line 2027
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->osv:Lcom/waze/ifs/ui/ObservableScrollView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2028
    iput-boolean p1, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->_isMapOpen:Z

    return-void
.end method

.method static synthetic access$3(Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;)Z
    .locals 1
    .parameter

    .prologue
    .line 2028
    iget-boolean v0, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->_isMapOpen:Z

    return v0
.end method

.method private lockScrollTo(I)V
    .locals 2
    .parameter "y"

    .prologue
    .line 2107
    iget-object v0, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->osv:Lcom/waze/ifs/ui/ObservableScrollView;

    new-instance v1, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener$1;

    invoke-direct {v1, p0, p1}, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener$1;-><init>(Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;I)V

    invoke-virtual {v0, v1}, Lcom/waze/ifs/ui/ObservableScrollView;->post(Ljava/lang/Runnable;)Z

    .line 2113
    return-void
.end method


# virtual methods
.method public onScrollChanged(Lcom/waze/ifs/ui/ObservableScrollView;IIII)V
    .locals 7
    .parameter "scrollView"
    .parameter "x"
    .parameter "y"
    .parameter "oldx"
    .parameter "oldy"

    .prologue
    const/4 v6, 0x0

    .line 2041
    iget-boolean v2, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->_isTouched:Z

    if-nez v2, :cond_1

    .line 2043
    iget v2, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->lockHeight:I

    if-ge p3, v2, :cond_0

    iget v2, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->lockHeight:I

    if-lt p5, v2, :cond_0

    .line 2045
    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->osv:Lcom/waze/ifs/ui/ObservableScrollView;

    iget v3, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->lockHeight:I

    invoke-virtual {v2, v6, v3}, Lcom/waze/ifs/ui/ObservableScrollView;->scrollTo(II)V

    .line 2074
    :goto_0
    return-void

    .line 2047
    :cond_0
    iget v2, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->lockHeight:I

    if-le p3, v2, :cond_1

    iget v2, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->lockHeight:I

    if-gt p5, v2, :cond_1

    .line 2049
    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->osv:Lcom/waze/ifs/ui/ObservableScrollView;

    iget v3, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->lockHeight:I

    invoke-virtual {v2, v6, v3}, Lcom/waze/ifs/ui/ObservableScrollView;->scrollTo(II)V

    goto :goto_0

    .line 2053
    :cond_1
    iget v2, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->lockHeight:I

    if-ge p3, v2, :cond_2

    .line 2055
    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->LS_Y_FACTOR:F
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity;->access$7(Lcom/waze/navigate/AddressPreviewActivity;)F

    move-result v2

    neg-float v2, v2

    int-to-float v3, p3

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 2056
    .local v0, shift:I
    mul-int/lit16 v2, p3, 0x3e8

    iget v3, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->lockHeight:I

    div-int/2addr v2, v3

    add-int/lit16 v1, v2, 0x3e8

    .line 2058
    .local v1, zoom:I
    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity;->access$10(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v3}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/navigate/AddressItem;->getLocationX()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v4}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/waze/navigate/AddressItem;->getLocationY()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v3, v4, v1}, Lcom/waze/navigate/DriveToNativeManager;->zoomOnMap(III)V

    .line 2059
    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mPlaceImagesFrame:Landroid/view/View;
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity;->access$11(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->lockHeight:I

    sub-int/2addr v3, p3

    iget-object v4, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mPlaceImagesFrame:Landroid/view/View;
    invoke-static {v4}, Lcom/waze/navigate/AddressPreviewActivity;->access$11(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    .line 2060
    iget v4, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->lockHeight:I

    div-int/2addr v3, v4

    int-to-float v3, v3

    .line 2059
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 2061
    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mMapMask:Landroid/view/View;
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity;->access$12(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/view/View;

    move-result-object v2

    invoke-static {v6, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 2062
    .end local v0           #shift:I
    .end local v1           #zoom:I
    :cond_2
    iget v2, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->frameHeight:I

    if-ge p3, v2, :cond_3

    .line 2064
    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mMapMask:Landroid/view/View;
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity;->access$12(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->lockHeight:I

    sub-int v3, p3, v3

    mul-int/lit16 v3, v3, 0xff

    iget v4, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->frameHeight:I

    iget v5, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->lockHeight:I

    sub-int/2addr v4, v5

    div-int/2addr v3, v4

    invoke-static {v3, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2066
    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity;->access$10(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/waze/navigate/DriveToNativeManager;->setScreenFreeze(Z)V

    .line 2067
    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mPlaceImagesFrame:Landroid/view/View;
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity;->access$11(Lcom/waze/navigate/AddressPreviewActivity;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 2069
    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity;->access$10(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v2

    iget-object v3, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v3}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/navigate/AddressItem;->getLocationX()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v4}, Lcom/waze/navigate/AddressPreviewActivity;->access$6(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/waze/navigate/AddressItem;->getLocationY()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2070
    iget-object v5, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->LS_Y_FACTOR:F
    invoke-static {v5}, Lcom/waze/navigate/AddressPreviewActivity;->access$7(Lcom/waze/navigate/AddressPreviewActivity;)F

    move-result v5

    iget v6, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->lockHeight:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    const/16 v5, 0x7d0

    .line 2069
    invoke-virtual {v2, v3, v4, v5}, Lcom/waze/navigate/DriveToNativeManager;->zoomOnMap(III)V

    goto/16 :goto_0

    .line 2072
    :cond_3
    iget-object v2, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->this$0:Lcom/waze/navigate/AddressPreviewActivity;

    #getter for: Lcom/waze/navigate/AddressPreviewActivity;->mDtnMgr:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v2}, Lcom/waze/navigate/AddressPreviewActivity;->access$10(Lcom/waze/navigate/AddressPreviewActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/waze/navigate/DriveToNativeManager;->setScreenFreeze(Z)V

    goto/16 :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x4080

    const/4 v4, 0x0

    const/high16 v3, 0x42f0

    .line 2078
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v6, :cond_0

    .line 2079
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 2080
    :cond_0
    iput-boolean v4, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->_isTouched:Z

    .line 2081
    iget-object v1, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->osv:Lcom/waze/ifs/ui/ObservableScrollView;

    invoke-virtual {v1}, Lcom/waze/ifs/ui/ObservableScrollView;->getScrollY()I

    move-result v1

    int-to-float v0, v1

    .line 2082
    .local v0, curY:F
    iget-boolean v1, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->_isMapOpen:Z

    if-eqz v1, :cond_3

    .line 2083
    iget v1, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->frameHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->density:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 2084
    iget v1, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->frameHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->density:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 2085
    iget v1, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->lockHeight:I

    invoke-direct {p0, v1}, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->lockScrollTo(I)V

    .line 2103
    .end local v0           #curY:F
    :cond_1
    :goto_0
    return v4

    .line 2087
    .restart local v0       #curY:F
    :cond_2
    invoke-direct {p0, v4}, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->lockScrollTo(I)V

    goto :goto_0

    .line 2091
    :cond_3
    iget v1, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->frameHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->density:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 2092
    iget v1, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->frameHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->density:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    const/high16 v2, 0x4040

    mul-float/2addr v1, v2

    div-float/2addr v1, v5

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4

    .line 2093
    iget v1, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->lockHeight:I

    invoke-direct {p0, v1}, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->lockScrollTo(I)V

    goto :goto_0

    .line 2095
    :cond_4
    invoke-direct {p0, v4}, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->lockScrollTo(I)V

    goto :goto_0

    .line 2099
    .end local v0           #curY:F
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_6

    .line 2100
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2101
    :cond_6
    iput-boolean v6, p0, Lcom/waze/navigate/AddressPreviewActivity$ScrollAndTouchListener;->_isTouched:Z

    goto :goto_0
.end method
