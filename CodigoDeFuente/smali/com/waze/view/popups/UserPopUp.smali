.class public Lcom/waze/view/popups/UserPopUp;
.super Landroid/widget/RelativeLayout;
.source "UserPopUp.java"


# static fields
.field private static bIsInitialized:Z

.field private static mContext:Landroid/app/Activity;

.field private static mData:Lcom/waze/user/UserData;

.field private static mInstance:Lcom/waze/view/popups/UserPopUp;

.field private static mIsShown:Z

.field private static mMapWrapper:Lcom/waze/MapViewWrapper;

.field private static mOffsetX:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 36
    sput-boolean v0, Lcom/waze/view/popups/UserPopUp;->mIsShown:Z

    .line 37
    sput-object v1, Lcom/waze/view/popups/UserPopUp;->mContext:Landroid/app/Activity;

    .line 40
    sput-boolean v0, Lcom/waze/view/popups/UserPopUp;->bIsInitialized:Z

    .line 41
    sput-object v1, Lcom/waze/view/popups/UserPopUp;->mMapWrapper:Lcom/waze/MapViewWrapper;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 59
    sput-object p1, Lcom/waze/view/popups/UserPopUp;->mContext:Landroid/app/Activity;

    .line 60
    invoke-direct {p0}, Lcom/waze/view/popups/UserPopUp;->init()V

    .line 61
    return-void
.end method

.method private ImageOperations(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "url"
    .parameter "saveFilename"

    .prologue
    const/4 v0, 0x0

    .line 184
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/waze/view/popups/UserPopUp;->fetch(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 185
    .local v2, is:Ljava/io/InputStream;
    const-string v3, "src"

    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 192
    .end local v2           #is:Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, e:Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 190
    .end local v1           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v1

    .line 191
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/waze/view/popups/UserPopUp;)V
    .locals 0
    .parameter

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/waze/view/popups/UserPopUp;->onPing()V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/view/popups/UserPopUp;)V
    .locals 0
    .parameter

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/waze/view/popups/UserPopUp;->onPrvPing()V

    return-void
.end method

.method private disablePingButton()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 139
    const v3, 0x7f0907bf

    invoke-virtual {p0, v3}, Lcom/waze/view/popups/UserPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 140
    .local v1, pingButton:Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 142
    const v3, 0x7f0907c1

    invoke-virtual {p0, v3}, Lcom/waze/view/popups/UserPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 143
    .local v2, pingButtonText:Landroid/widget/TextView;
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 145
    const v3, 0x7f0907c0

    invoke-virtual {p0, v3}, Lcom/waze/view/popups/UserPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 146
    .local v0, Pingicon:Landroid/widget/ImageView;
    const v3, 0x7f0200a6

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    return-void
.end method

.method private disablePrvPingButton()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 160
    const v3, 0x7f0907c2

    invoke-virtual {p0, v3}, Lcom/waze/view/popups/UserPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 161
    .local v1, pingButton:Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 163
    const v3, 0x7f0907c4

    invoke-virtual {p0, v3}, Lcom/waze/view/popups/UserPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 164
    .local v2, pingButtonText:Landroid/widget/TextView;
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 166
    const v3, 0x7f0907c3

    invoke-virtual {p0, v3}, Lcom/waze/view/popups/UserPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 167
    .local v0, Messageicon:Landroid/widget/ImageView;
    const v3, 0x7f02025c

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 168
    return-void
.end method

.method private enablePingButton()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 129
    const v3, 0x7f0907bf

    invoke-virtual {p0, v3}, Lcom/waze/view/popups/UserPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 130
    .local v1, pingButton:Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 131
    const v3, 0x7f0907c1

    invoke-virtual {p0, v3}, Lcom/waze/view/popups/UserPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 132
    .local v2, pingButtonText:Landroid/widget/TextView;
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 133
    const v3, 0x7f0907c0

    invoke-virtual {p0, v3}, Lcom/waze/view/popups/UserPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 134
    .local v0, Pingicon:Landroid/widget/ImageView;
    const v3, 0x7f0200a6

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    return-void
.end method

.method private enablePrvPingButton()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 150
    const v3, 0x7f0907c2

    invoke-virtual {p0, v3}, Lcom/waze/view/popups/UserPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 151
    .local v1, pingButton:Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 152
    const v3, 0x7f0907c4

    invoke-virtual {p0, v3}, Lcom/waze/view/popups/UserPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 153
    .local v2, pingButtonText:Landroid/widget/TextView;
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 154
    const v3, 0x7f0907c3

    invoke-virtual {p0, v3}, Lcom/waze/view/popups/UserPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 155
    .local v0, Messageicon:Landroid/widget/ImageView;
    const v3, 0x7f02025c

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    return-void
.end method

.method public static getInstance(Landroid/app/Activity;)Lcom/waze/view/popups/UserPopUp;
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    sget-object v0, Lcom/waze/view/popups/UserPopUp;->mInstance:Lcom/waze/view/popups/UserPopUp;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/waze/view/popups/UserPopUp;

    invoke-direct {v0, p0}, Lcom/waze/view/popups/UserPopUp;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/waze/view/popups/UserPopUp;->mInstance:Lcom/waze/view/popups/UserPopUp;

    .line 53
    :cond_0
    sget-object v0, Lcom/waze/view/popups/UserPopUp;->mInstance:Lcom/waze/view/popups/UserPopUp;

    return-object v0
.end method

.method public static hasInstance()Z
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/waze/view/popups/UserPopUp;->mInstance:Lcom/waze/view/popups/UserPopUp;

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 46
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/waze/view/popups/UserPopUp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 75
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/NativeManager;->getLanguageRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const v1, 0x7f030131

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 79
    :goto_0
    invoke-virtual {p0}, Lcom/waze/view/popups/UserPopUp;->setUpButtonsTxt()V

    .line 80
    return-void

    .line 78
    :cond_0
    const v1, 0x7f030130

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0
.end method

.method private onPing()V
    .locals 2

    .prologue
    .line 349
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    sget-object v1, Lcom/waze/view/popups/UserPopUp;->mData:Lcom/waze/user/UserData;

    invoke-static {v0, v1}, Lcom/waze/messages/UserMessage;->startPublic(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/user/UserData;)V

    .line 350
    return-void
.end method

.method private onPrvPing()V
    .locals 3

    .prologue
    .line 354
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/waze/view/popups/UserPopUp;->mContext:Landroid/app/Activity;

    const-class v2, Lcom/waze/share/UserOptionsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 355
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "UserData"

    sget-object v2, Lcom/waze/view/popups/UserPopUp;->mData:Lcom/waze/user/UserData;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 356
    sget-object v1, Lcom/waze/view/popups/UserPopUp;->mContext:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 357
    return-void
.end method

.method private setBgImage(I)V
    .locals 5
    .parameter "x"

    .prologue
    const/high16 v4, 0x42f0

    .line 89
    invoke-static {}, Lcom/waze/AppService;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 90
    .local v0, display:Landroid/view/Display;
    invoke-virtual {p0}, Lcom/waze/view/popups/UserPopUp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 92
    .local v1, scale:F
    int-to-float v2, p1

    mul-float v3, v4, v1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 93
    const v2, 0x7f0202e9

    invoke-direct {p0, v2}, Lcom/waze/view/popups/UserPopUp;->updateBgImage(I)V

    .line 94
    const/high16 v2, 0x42ae

    mul-float/2addr v2, v1

    float-to-int v2, v2

    sput v2, Lcom/waze/view/popups/UserPopUp;->mOffsetX:I

    .line 105
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    mul-float v3, v4, v1

    float-to-int v3, v3

    sub-int/2addr v2, v3

    if-le p1, v2, :cond_1

    .line 98
    const v2, 0x7f0202eb

    invoke-direct {p0, v2}, Lcom/waze/view/popups/UserPopUp;->updateBgImage(I)V

    .line 99
    const/high16 v2, -0x3d56

    mul-float/2addr v2, v1

    float-to-int v2, v2

    sput v2, Lcom/waze/view/popups/UserPopUp;->mOffsetX:I

    goto :goto_0

    .line 102
    :cond_1
    const v2, 0x7f0202e2

    invoke-direct {p0, v2}, Lcom/waze/view/popups/UserPopUp;->updateBgImage(I)V

    .line 103
    const/high16 v2, 0x4000

    mul-float/2addr v2, v1

    float-to-int v2, v2

    sput v2, Lcom/waze/view/popups/UserPopUp;->mOffsetX:I

    goto :goto_0
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 171
    const v1, 0x7f0901bc

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/UserPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 172
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    return-void
.end method

.method private updateBgImage(I)V
    .locals 3
    .parameter "imageId"

    .prologue
    const/4 v2, 0x0

    .line 83
    const v1, 0x7f090341

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/UserPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 85
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 86
    return-void
.end method

.method private updatePosition(II)V
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    .line 401
    const v6, 0x7f0907b4

    invoke-virtual {p0, v6}, Lcom/waze/view/popups/UserPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 402
    .local v0, layout:Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 403
    .local v3, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/waze/AppService;->getDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v5

    .line 404
    .local v5, width:I
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    .line 405
    .local v2, layoutWidth:I
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    .line 406
    .local v1, layoutHeight:I
    invoke-virtual {p0}, Lcom/waze/view/popups/UserPopUp;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v4, v6, Landroid/util/DisplayMetrics;->density:F

    .line 408
    .local v4, scale:F
    const/high16 v6, 0x437a

    mul-float/2addr v6, v4

    float-to-int v2, v6

    .line 409
    const/high16 v6, 0x433e

    mul-float/2addr v6, v4

    float-to-int v1, v6

    .line 411
    div-int/lit8 v6, v2, 0x2

    sub-int v6, v5, v6

    if-ge p1, v6, :cond_0

    .line 412
    div-int/lit8 v6, v2, 0x2

    sub-int v6, p1, v6

    sget v7, Lcom/waze/view/popups/UserPopUp;->mOffsetX:I

    add-int/2addr v6, v7

    sub-int v7, p2, v1

    const/4 v8, 0x0

    neg-int v9, v1

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 417
    :goto_0
    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 418
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 419
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    invoke-direct {p0, p1}, Lcom/waze/view/popups/UserPopUp;->setBgImage(I)V

    .line 421
    return-void

    .line 415
    :cond_0
    div-int/lit8 v6, v2, 0x2

    sub-int v6, p1, v6

    sget v7, Lcom/waze/view/popups/UserPopUp;->mOffsetX:I

    add-int/2addr v6, v7

    sub-int v7, p2, v1

    div-int/lit8 v8, v2, 0x2

    add-int/2addr v8, v5

    sget v9, Lcom/waze/view/popups/UserPopUp;->mOffsetX:I

    sub-int/2addr v8, v9

    neg-int v9, v1

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public fetch(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 177
    .local v1, url:Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    .line 178
    .local v0, content:Ljava/lang/Object;
    return-object v0
.end method

.method public fillPopUpData()V
    .locals 18

    .prologue
    .line 200
    sget-object v15, Lcom/waze/view/popups/UserPopUp;->mData:Lcom/waze/user/UserData;

    iget-object v15, v15, Lcom/waze/user/UserData;->mNickName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/waze/view/popups/UserPopUp;->setTitle(Ljava/lang/String;)V

    .line 205
    const v15, 0x7f0907b6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/waze/view/popups/UserPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 206
    .local v10, icon:Landroid/widget/ImageView;
    sget-object v15, Lcom/waze/view/popups/UserPopUp;->mContext:Landroid/app/Activity;

    sget-object v16, Lcom/waze/view/popups/UserPopUp;->mData:Lcom/waze/user/UserData;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/waze/user/UserData;->mMood:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/waze/view/popups/UserPopUp;->getResourceDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 207
    .local v9, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    const v15, 0x7f0907b7

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/waze/view/popups/UserPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 212
    .local v7, addon:Landroid/widget/ImageView;
    sget-object v15, Lcom/waze/view/popups/UserPopUp;->mData:Lcom/waze/user/UserData;

    iget-object v15, v15, Lcom/waze/user/UserData;->mAddonName:Ljava/lang/String;

    if-eqz v15, :cond_2

    sget-object v15, Lcom/waze/view/popups/UserPopUp;->mData:Lcom/waze/user/UserData;

    iget-object v15, v15, Lcom/waze/user/UserData;->mAddonName:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_2

    .line 213
    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    new-instance v15, Ljava/lang/StringBuilder;

    sget-object v16, Lcom/waze/view/popups/UserPopUp;->mData:Lcom/waze/user/UserData;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/waze/user/UserData;->mAddonName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, ".bin"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 215
    .local v8, addonIcon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    .end local v8           #addonIcon:Landroid/graphics/drawable/Drawable;
    :goto_0
    sget-object v15, Lcom/waze/view/popups/UserPopUp;->mData:Lcom/waze/user/UserData;

    iget-object v15, v15, Lcom/waze/user/UserData;->mFaceBookNickName:Ljava/lang/String;

    if-eqz v15, :cond_0

    sget-object v15, Lcom/waze/view/popups/UserPopUp;->mData:Lcom/waze/user/UserData;

    iget-boolean v15, v15, Lcom/waze/user/UserData;->mShowFacebookPictureOnMap:Z

    if-nez v15, :cond_3

    .line 223
    :cond_0
    const v15, 0x7f090345

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/waze/view/popups/UserPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 225
    .local v14, textView:Landroid/widget/TextView;
    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    :goto_1
    sget-object v15, Lcom/waze/view/popups/UserPopUp;->mData:Lcom/waze/user/UserData;

    iget-object v15, v15, Lcom/waze/user/UserData;->mFriend1Url:Ljava/lang/String;

    if-nez v15, :cond_4

    .line 237
    const v15, 0x7f0907ba

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/waze/view/popups/UserPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 238
    .local v2, Friend1picture:Landroid/widget/ImageView;
    const/16 v15, 0x8

    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    :goto_2
    sget-object v15, Lcom/waze/view/popups/UserPopUp;->mData:Lcom/waze/user/UserData;

    iget-object v15, v15, Lcom/waze/user/UserData;->mFriend2Url:Ljava/lang/String;

    if-nez v15, :cond_5

    .line 260
    const v15, 0x7f0907bb

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/waze/view/popups/UserPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 261
    .local v3, Friend2picture:Landroid/widget/ImageView;
    const/16 v15, 0x8

    invoke-virtual {v3, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 284
    :goto_3
    const v15, 0x7f090343

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/waze/view/popups/UserPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 285
    .local v11, picture:Landroid/widget/ImageView;
    const v15, 0x7f0907b8

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/waze/view/popups/UserPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 287
    .local v12, pictureframe:Landroid/widget/ImageView;
    sget-object v15, Lcom/waze/view/popups/UserPopUp;->mData:Lcom/waze/user/UserData;

    iget-boolean v15, v15, Lcom/waze/user/UserData;->mShowFacebookPicture:Z

    if-eqz v15, :cond_6

    .line 289
    const/16 v15, 0x8

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 290
    const/16 v15, 0x8

    invoke-virtual {v10, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 292
    const v15, 0x7f02011b

    invoke-virtual {v11, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 293
    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 294
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    sget-object v15, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    sget-object v16, Lcom/waze/view/popups/UserPopUp;->mData:Lcom/waze/user/UserData;

    invoke-virtual/range {v16 .. v16}, Lcom/waze/user/UserData;->getImage()Ljava/lang/String;

    move-result-object v16

    .line 297
    new-instance v17, Lcom/waze/view/popups/UserPopUp$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/waze/view/popups/UserPopUp$4;-><init>(Lcom/waze/view/popups/UserPopUp;Landroid/widget/ImageView;)V

    .line 296
    invoke-virtual/range {v15 .. v17}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;Lcom/waze/utils/ImageRepository$ImageRepositoryListener;)V

    .line 314
    :goto_4
    const v15, 0x7f0907bc

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/waze/view/popups/UserPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 316
    .local v5, PtsLabel:Landroid/widget/TextView;
    sget-object v15, Lcom/waze/view/popups/UserPopUp;->mData:Lcom/waze/user/UserData;

    iget-object v13, v15, Lcom/waze/user/UserData;->mPtsStr:Ljava/lang/String;

    .line 318
    .local v13, sData:Ljava/lang/String;
    sget-object v15, Lcom/waze/view/popups/UserPopUp;->mData:Lcom/waze/user/UserData;

    iget v15, v15, Lcom/waze/user/UserData;->mRank:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    sget-object v15, Lcom/waze/view/popups/UserPopUp;->mData:Lcom/waze/user/UserData;

    iget-object v15, v15, Lcom/waze/user/UserData;->mPtsStr:Ljava/lang/String;

    if-nez v15, :cond_7

    .line 320
    :cond_1
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v15

    sget-object v16, Lcom/waze/strings/DisplayStrings;->DS_RANK_AND_POINTS_NA:Lcom/waze/strings/DisplayStrings;

    invoke-virtual/range {v15 .. v16}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v13

    .line 327
    :goto_5
    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    const v15, 0x7f090042

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/waze/view/popups/UserPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 330
    .local v4, JoinedLabel:Landroid/widget/TextView;
    sget-object v15, Lcom/waze/view/popups/UserPopUp;->mData:Lcom/waze/user/UserData;

    iget-object v15, v15, Lcom/waze/user/UserData;->mJoinedStr:Ljava/lang/String;

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    const v15, 0x7f0907bd

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/waze/view/popups/UserPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 333
    .local v6, SpeedLabel:Landroid/widget/TextView;
    sget-object v15, Lcom/waze/view/popups/UserPopUp;->mData:Lcom/waze/user/UserData;

    iget-object v15, v15, Lcom/waze/user/UserData;->mSpeedStr:Ljava/lang/String;

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    sget-object v15, Lcom/waze/view/popups/UserPopUp;->mData:Lcom/waze/user/UserData;

    iget-boolean v15, v15, Lcom/waze/user/UserData;->mAllowPing:Z

    if-eqz v15, :cond_8

    .line 337
    invoke-direct/range {p0 .. p0}, Lcom/waze/view/popups/UserPopUp;->enablePingButton()V

    .line 338
    invoke-direct/range {p0 .. p0}, Lcom/waze/view/popups/UserPopUp;->enablePrvPingButton()V

    .line 345
    :goto_6
    return-void

    .line 218
    .end local v2           #Friend1picture:Landroid/widget/ImageView;
    .end local v3           #Friend2picture:Landroid/widget/ImageView;
    .end local v4           #JoinedLabel:Landroid/widget/TextView;
    .end local v5           #PtsLabel:Landroid/widget/TextView;
    .end local v6           #SpeedLabel:Landroid/widget/TextView;
    .end local v11           #picture:Landroid/widget/ImageView;
    .end local v12           #pictureframe:Landroid/widget/ImageView;
    .end local v13           #sData:Ljava/lang/String;
    .end local v14           #textView:Landroid/widget/TextView;
    :cond_2
    const/16 v15, 0x8

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 229
    :cond_3
    const v15, 0x7f090345

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/waze/view/popups/UserPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 231
    .restart local v14       #textView:Landroid/widget/TextView;
    sget-object v15, Lcom/waze/view/popups/UserPopUp;->mData:Lcom/waze/user/UserData;

    iget-object v15, v15, Lcom/waze/user/UserData;->mFaceBookNickName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 242
    :cond_4
    const v15, 0x7f0907ba

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/waze/view/popups/UserPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 244
    .restart local v2       #Friend1picture:Landroid/widget/ImageView;
    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    sget-object v15, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    sget-object v16, Lcom/waze/view/popups/UserPopUp;->mData:Lcom/waze/user/UserData;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/waze/user/UserData;->mFriend1Url:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v17, Lcom/waze/view/popups/UserPopUp$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Lcom/waze/view/popups/UserPopUp$2;-><init>(Lcom/waze/view/popups/UserPopUp;Landroid/widget/ImageView;)V

    invoke-virtual/range {v15 .. v17}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;Lcom/waze/utils/ImageRepository$ImageRepositoryListener;)V

    goto/16 :goto_2

    .line 265
    :cond_5
    const v15, 0x7f0907bb

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/waze/view/popups/UserPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 267
    .restart local v3       #Friend2picture:Landroid/widget/ImageView;
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 269
    sget-object v15, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    sget-object v16, Lcom/waze/view/popups/UserPopUp;->mData:Lcom/waze/user/UserData;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/waze/user/UserData;->mFriend2Url:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v17, Lcom/waze/view/popups/UserPopUp$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/waze/view/popups/UserPopUp$3;-><init>(Lcom/waze/view/popups/UserPopUp;Landroid/widget/ImageView;)V

    invoke-virtual/range {v15 .. v17}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;Lcom/waze/utils/ImageRepository$ImageRepositoryListener;)V

    goto/16 :goto_3

    .line 310
    .restart local v11       #picture:Landroid/widget/ImageView;
    .restart local v12       #pictureframe:Landroid/widget/ImageView;
    :cond_6
    const/16 v15, 0x8

    invoke-virtual {v11, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 311
    const/16 v15, 0x8

    invoke-virtual {v12, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 324
    .restart local v5       #PtsLabel:Landroid/widget/TextView;
    .restart local v13       #sData:Ljava/lang/String;
    :cond_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/waze/view/popups/UserPopUp;->mData:Lcom/waze/user/UserData;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/waze/user/UserData;->mRankStr:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 342
    .restart local v4       #JoinedLabel:Landroid/widget/TextView;
    .restart local v6       #SpeedLabel:Landroid/widget/TextView;
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/waze/view/popups/UserPopUp;->disablePingButton()V

    .line 343
    invoke-direct/range {p0 .. p0}, Lcom/waze/view/popups/UserPopUp;->disablePrvPingButton()V

    goto/16 :goto_6
.end method

.method public getResourceDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "context"
    .parameter "image"

    .prologue
    .line 108
    invoke-static {p1, p2}, Lcom/waze/MoodManager;->getMoodDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 112
    sget-boolean v0, Lcom/waze/view/popups/UserPopUp;->mIsShown:Z

    if-nez v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    sput-boolean v1, Lcom/waze/view/popups/UserPopUp;->mIsShown:Z

    .line 116
    sget-object v0, Lcom/waze/view/popups/UserPopUp;->mMapWrapper:Lcom/waze/MapViewWrapper;

    if-eqz v0, :cond_0

    .line 117
    sput-boolean v1, Lcom/waze/view/popups/UserPopUp;->bIsInitialized:Z

    .line 118
    sget-object v0, Lcom/waze/view/popups/UserPopUp;->mMapWrapper:Lcom/waze/MapViewWrapper;

    invoke-virtual {v0, p0}, Lcom/waze/MapViewWrapper;->removeView(Landroid/view/View;)V

    .line 119
    new-instance v0, Lcom/waze/view/popups/UserPopUp$1;

    invoke-direct {v0, p0}, Lcom/waze/view/popups/UserPopUp$1;-><init>(Lcom/waze/view/popups/UserPopUp;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setUpButtonsTxt()V
    .locals 4

    .prologue
    .line 64
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_MESSAGE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, MessageButtonTxt:Ljava/lang/String;
    const v2, 0x7f0907c4

    invoke-virtual {p0, v2}, Lcom/waze/view/popups/UserPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_PING:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, pingButtonTxt:Ljava/lang/String;
    const v2, 0x7f0907c1

    invoke-virtual {p0, v2}, Lcom/waze/view/popups/UserPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method

.method public show(Lcom/waze/user/UserData;II)V
    .locals 4
    .parameter "data"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 360
    sget-boolean v0, Lcom/waze/view/popups/UserPopUp;->mIsShown:Z

    if-eqz v0, :cond_0

    .line 362
    sget-object v0, Lcom/waze/view/popups/UserPopUp;->mInstance:Lcom/waze/view/popups/UserPopUp;

    invoke-virtual {v0}, Lcom/waze/view/popups/UserPopUp;->hide()V

    .line 365
    :cond_0
    sput-object p1, Lcom/waze/view/popups/UserPopUp;->mData:Lcom/waze/user/UserData;

    .line 366
    const/4 v0, 0x0

    sput v0, Lcom/waze/view/popups/UserPopUp;->mOffsetX:I

    .line 367
    invoke-virtual {p0}, Lcom/waze/view/popups/UserPopUp;->fillPopUpData()V

    .line 369
    invoke-direct {p0, p2}, Lcom/waze/view/popups/UserPopUp;->setBgImage(I)V

    .line 370
    invoke-static {}, Lcom/waze/AppService;->getActiveMapViewWrapper()Lcom/waze/MapViewWrapper;

    move-result-object v0

    sput-object v0, Lcom/waze/view/popups/UserPopUp;->mMapWrapper:Lcom/waze/MapViewWrapper;

    .line 371
    sget-object v0, Lcom/waze/view/popups/UserPopUp;->mMapWrapper:Lcom/waze/MapViewWrapper;

    if-eqz v0, :cond_2

    .line 372
    sget-boolean v0, Lcom/waze/view/popups/UserPopUp;->bIsInitialized:Z

    if-eqz v0, :cond_1

    .line 374
    sget-object v0, Lcom/waze/view/popups/UserPopUp;->mMapWrapper:Lcom/waze/MapViewWrapper;

    invoke-virtual {v0, p0}, Lcom/waze/MapViewWrapper;->removeView(Landroid/view/View;)V

    .line 376
    :cond_1
    sget-object v0, Lcom/waze/view/popups/UserPopUp;->mMapWrapper:Lcom/waze/MapViewWrapper;

    invoke-virtual {v0, p0}, Lcom/waze/MapViewWrapper;->addView(Landroid/view/View;)V

    .line 377
    invoke-direct {p0, p2, p3}, Lcom/waze/view/popups/UserPopUp;->updatePosition(II)V

    .line 382
    :cond_2
    const v0, 0x7f0907bf

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/UserPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/view/popups/UserPopUp$5;

    invoke-direct {v1, p0}, Lcom/waze/view/popups/UserPopUp$5;-><init>(Lcom/waze/view/popups/UserPopUp;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    const v0, 0x7f0907c2

    invoke-virtual {p0, v0}, Lcom/waze/view/popups/UserPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/view/popups/UserPopUp$6;

    invoke-direct {v1, p0}, Lcom/waze/view/popups/UserPopUp$6;-><init>(Lcom/waze/view/popups/UserPopUp;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    sget-object v0, Lcom/waze/view/popups/UserPopUp;->mInstance:Lcom/waze/view/popups/UserPopUp;

    int-to-float v1, p2

    int-to-float v2, p3

    const/16 v3, 0x64

    invoke-static {v0, v1, v2, v3}, Lcom/waze/view/anim/AnimationUtils;->openAnimateFromPoint(Landroid/view/View;FFI)V

    .line 395
    const/4 v0, 0x1

    sput-boolean v0, Lcom/waze/view/popups/UserPopUp;->mIsShown:Z

    .line 397
    return-void
.end method

.method public update(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 424
    sget-boolean v0, Lcom/waze/view/popups/UserPopUp;->mIsShown:Z

    if-eqz v0, :cond_0

    .line 425
    invoke-direct {p0, p1, p2}, Lcom/waze/view/popups/UserPopUp;->updatePosition(II)V

    .line 430
    :cond_0
    return-void
.end method
