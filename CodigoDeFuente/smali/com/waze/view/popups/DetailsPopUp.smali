.class public Lcom/waze/view/popups/DetailsPopUp;
.super Landroid/widget/RelativeLayout;
.source "DetailsPopUp.java"


# static fields
.field private static mInstance:Lcom/waze/view/popups/DetailsPopUp;

.field private static mIsShown:Z

.field private static mOffsetX:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/waze/view/popups/DetailsPopUp;->mIsShown:Z

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/view/popups/DetailsPopUp;->mInstance:Lcom/waze/view/popups/DetailsPopUp;

    .line 25
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Lcom/waze/view/popups/DetailsPopUp;->init()V

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/waze/view/popups/DetailsPopUp;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/waze/view/popups/DetailsPopUp;->onMoreAction()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/waze/view/popups/DetailsPopUp;
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    sget-object v0, Lcom/waze/view/popups/DetailsPopUp;->mInstance:Lcom/waze/view/popups/DetailsPopUp;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/waze/view/popups/DetailsPopUp;

    invoke-direct {v0, p0}, Lcom/waze/view/popups/DetailsPopUp;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/waze/view/popups/DetailsPopUp;->mInstance:Lcom/waze/view/popups/DetailsPopUp;

    .line 48
    :cond_0
    sget-object v0, Lcom/waze/view/popups/DetailsPopUp;->mInstance:Lcom/waze/view/popups/DetailsPopUp;

    return-object v0
.end method

.method public static hasInstance()Z
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/waze/view/popups/DetailsPopUp;->mInstance:Lcom/waze/view/popups/DetailsPopUp;

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 41
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/waze/view/popups/DetailsPopUp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 84
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030044

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 86
    const v1, 0x7f09023c

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/DetailsPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 87
    new-instance v2, Lcom/waze/view/popups/DetailsPopUp$3;

    invoke-direct {v2, p0}, Lcom/waze/view/popups/DetailsPopUp$3;-><init>(Lcom/waze/view/popups/DetailsPopUp;)V

    .line 86
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void
.end method

.method private onMoreAction()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/waze/view/popups/DetailsPopUp$2;

    invoke-direct {v0, p0}, Lcom/waze/view/popups/DetailsPopUp$2;-><init>(Lcom/waze/view/popups/DetailsPopUp;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 77
    invoke-virtual {p0}, Lcom/waze/view/popups/DetailsPopUp;->hide()V

    .line 78
    return-void
.end method

.method private setBgImage(I)V
    .locals 4
    .parameter "x"

    .prologue
    .line 104
    invoke-static {}, Lcom/waze/AppService;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 105
    .local v0, display:Landroid/view/Display;
    invoke-virtual {p0}, Lcom/waze/view/popups/DetailsPopUp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 107
    .local v1, scale:F
    int-to-float v2, p1

    const/high16 v3, 0x42c8

    mul-float/2addr v3, v1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 108
    const v2, 0x7f020120

    invoke-direct {p0, v2}, Lcom/waze/view/popups/DetailsPopUp;->updateBgImage(I)V

    .line 109
    const/high16 v2, 0x428e

    mul-float/2addr v2, v1

    float-to-int v2, v2

    sput v2, Lcom/waze/view/popups/DetailsPopUp;->mOffsetX:I

    .line 120
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    const/high16 v3, 0x42aa

    mul-float/2addr v3, v1

    float-to-int v3, v3

    sub-int/2addr v2, v3

    if-le p1, v2, :cond_1

    .line 113
    const v2, 0x7f020122

    invoke-direct {p0, v2}, Lcom/waze/view/popups/DetailsPopUp;->updateBgImage(I)V

    .line 114
    const/high16 v2, -0x3d7c

    mul-float/2addr v2, v1

    float-to-int v2, v2

    sput v2, Lcom/waze/view/popups/DetailsPopUp;->mOffsetX:I

    goto :goto_0

    .line 117
    :cond_1
    const v2, 0x7f020121

    invoke-direct {p0, v2}, Lcom/waze/view/popups/DetailsPopUp;->updateBgImage(I)V

    .line 118
    const/4 v2, 0x0

    sput v2, Lcom/waze/view/popups/DetailsPopUp;->mOffsetX:I

    goto :goto_0
.end method

.method private setIcon(Ljava/lang/String;)V
    .locals 4
    .parameter "iconName"

    .prologue
    .line 137
    const v2, 0x7f090239

    invoke-virtual {p0, v2}, Lcom/waze/view/popups/DetailsPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 138
    .local v1, image:Landroid/widget/ImageView;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 140
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    :goto_0
    return-void

    .line 144
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 147
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setMoreActionIcon(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 154
    const v1, 0x7f09023c

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/DetailsPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 156
    .local v0, moreActionIcon:Landroid/view/View;
    if-eqz p1, :cond_0

    .line 157
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setMsgText(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 132
    const v1, 0x7f09023b

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/DetailsPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 133
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    return-void
.end method

.method private setSpecialText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 127
    const v1, 0x7f09023e

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/DetailsPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 128
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    return-void
.end method

.method private setTitleText(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 123
    const v1, 0x7f0901bc

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/DetailsPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 124
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method

.method private updateBgImage(I)V
    .locals 3
    .parameter "imageId"

    .prologue
    const/4 v2, 0x0

    .line 98
    const v1, 0x7f090238

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/DetailsPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 100
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 101
    return-void
.end method

.method private updatePosition(II)V
    .locals 11
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v10, 0x0

    .line 169
    const v6, 0x7f090237

    invoke-virtual {p0, v6}, Lcom/waze/view/popups/DetailsPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 170
    .local v0, layout:Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 171
    .local v3, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/waze/AppService;->getDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v5

    .line 172
    .local v5, width:I
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    .line 173
    .local v2, layoutWidth:I
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    .line 174
    .local v1, layoutHeight:I
    invoke-virtual {p0}, Lcom/waze/view/popups/DetailsPopUp;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v4, v6, Landroid/util/DisplayMetrics;->density:F

    .line 177
    .local v4, scale:F
    if-nez v2, :cond_0

    .line 178
    const/high16 v6, 0x4350

    mul-float/2addr v6, v4

    float-to-int v2, v6

    .line 179
    :cond_0
    if-nez v1, :cond_1

    .line 180
    const/high16 v6, 0x42a0

    mul-float/2addr v6, v4

    float-to-int v1, v6

    .line 182
    :cond_1
    div-int/lit8 v6, v2, 0x2

    sub-int v6, v5, v6

    if-ge p1, v6, :cond_2

    .line 183
    div-int/lit8 v6, v2, 0x2

    sub-int v6, p1, v6

    sget v7, Lcom/waze/view/popups/DetailsPopUp;->mOffsetX:I

    add-int/2addr v6, v7

    sub-int v7, p2, v1

    invoke-virtual {v3, v6, v7, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 188
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    invoke-direct {p0, p1}, Lcom/waze/view/popups/DetailsPopUp;->setBgImage(I)V

    .line 190
    return-void

    .line 186
    :cond_2
    div-int/lit8 v6, v2, 0x2

    sub-int v6, p1, v6

    sget v7, Lcom/waze/view/popups/DetailsPopUp;->mOffsetX:I

    add-int/2addr v6, v7

    sub-int v7, p2, v1

    div-int/lit8 v8, v2, 0x2

    sub-int v8, v5, v8

    sget v9, Lcom/waze/view/popups/DetailsPopUp;->mOffsetX:I

    sub-int/2addr v8, v9

    invoke-virtual {v3, v6, v7, v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public closeNow()V
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/waze/view/popups/DetailsPopUp;->mInstance:Lcom/waze/view/popups/DetailsPopUp;

    invoke-virtual {v0}, Lcom/waze/view/popups/DetailsPopUp;->hide()V

    .line 166
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 53
    sget-boolean v1, Lcom/waze/view/popups/DetailsPopUp;->mIsShown:Z

    if-nez v1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/waze/view/popups/DetailsPopUp;->mIsShown:Z

    .line 57
    invoke-static {}, Lcom/waze/AppService;->getActiveMapViewWrapper()Lcom/waze/MapViewWrapper;

    move-result-object v0

    .line 58
    .local v0, activeMapViewWrapper:Lcom/waze/MapViewWrapper;
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0, p0}, Lcom/waze/MapViewWrapper;->removeView(Landroid/view/View;)V

    .line 60
    new-instance v1, Lcom/waze/view/popups/DetailsPopUp$1;

    invoke-direct {v1, p0}, Lcom/waze/view/popups/DetailsPopUp$1;-><init>(Lcom/waze/view/popups/DetailsPopUp;)V

    invoke-static {v1}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/waze/view/popups/DetailsPopUp;->mIsShown:Z

    return v0
.end method

.method public show(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "title"
    .parameter "msg"
    .parameter "iconName"
    .parameter "moreActionEnabled"
    .parameter "special"

    .prologue
    const v2, 0x7f09023d

    const/4 v3, 0x0

    .line 201
    sget-boolean v1, Lcom/waze/view/popups/DetailsPopUp;->mIsShown:Z

    if-eqz v1, :cond_0

    .line 202
    sget-object v1, Lcom/waze/view/popups/DetailsPopUp;->mInstance:Lcom/waze/view/popups/DetailsPopUp;

    invoke-virtual {v1}, Lcom/waze/view/popups/DetailsPopUp;->hide()V

    .line 205
    :cond_0
    if-eqz p7, :cond_2

    .line 206
    invoke-virtual {p0, v2}, Lcom/waze/view/popups/DetailsPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 207
    invoke-direct {p0, p7}, Lcom/waze/view/popups/DetailsPopUp;->setSpecialText(Ljava/lang/String;)V

    .line 211
    :goto_0
    invoke-direct {p0, p3}, Lcom/waze/view/popups/DetailsPopUp;->setTitleText(Ljava/lang/String;)V

    .line 212
    invoke-direct {p0, p4}, Lcom/waze/view/popups/DetailsPopUp;->setMsgText(Ljava/lang/String;)V

    .line 213
    invoke-direct {p0, p5}, Lcom/waze/view/popups/DetailsPopUp;->setIcon(Ljava/lang/String;)V

    .line 214
    invoke-direct {p0, p6}, Lcom/waze/view/popups/DetailsPopUp;->setMoreActionIcon(Z)V

    .line 215
    const/4 v1, 0x1

    sput-boolean v1, Lcom/waze/view/popups/DetailsPopUp;->mIsShown:Z

    .line 216
    sput v3, Lcom/waze/view/popups/DetailsPopUp;->mOffsetX:I

    .line 218
    invoke-direct {p0, p1}, Lcom/waze/view/popups/DetailsPopUp;->setBgImage(I)V

    .line 219
    invoke-static {}, Lcom/waze/AppService;->getActiveMapViewWrapper()Lcom/waze/MapViewWrapper;

    move-result-object v0

    .line 220
    .local v0, activeMapViewWrapper:Lcom/waze/MapViewWrapper;
    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {v0, p0}, Lcom/waze/MapViewWrapper;->addView(Landroid/view/View;)V

    .line 222
    invoke-direct {p0, p1, p2}, Lcom/waze/view/popups/DetailsPopUp;->updatePosition(II)V

    .line 226
    :cond_1
    return-void

    .line 209
    .end local v0           #activeMapViewWrapper:Lcom/waze/MapViewWrapper;
    :cond_2
    invoke-virtual {p0, v2}, Lcom/waze/view/popups/DetailsPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public update(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 193
    sget-boolean v0, Lcom/waze/view/popups/DetailsPopUp;->mIsShown:Z

    if-eqz v0, :cond_0

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/waze/view/popups/DetailsPopUp;->updatePosition(II)V

    .line 198
    :cond_0
    return-void
.end method
