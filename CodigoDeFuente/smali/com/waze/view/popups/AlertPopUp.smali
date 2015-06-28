.class public Lcom/waze/view/popups/AlertPopUp;
.super Lcom/waze/view/popups/PopUp;
.source "AlertPopUp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/view/popups/AlertPopUp$BitmapDownloaderTask;
    }
.end annotation


# instance fields
.field private mAlertData:Lcom/waze/rtalerts/RTAlertsAlertData;

.field private mContext:Landroid/content/Context;

.field private mDrawableImage:Landroid/graphics/drawable/Drawable;

.field private mIsShown:Z

.field private mLayoutManager:Lcom/waze/LayoutManager;

.field private mX:I

.field private mY:I

.field private sImageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V
    .locals 1
    .parameter "context"
    .parameter "layoutManager"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/waze/view/popups/PopUp;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/view/popups/AlertPopUp;->mContext:Landroid/content/Context;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/view/popups/AlertPopUp;->mIsShown:Z

    .line 74
    iput-object p1, p0, Lcom/waze/view/popups/AlertPopUp;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/waze/view/popups/AlertPopUp;->mLayoutManager:Lcom/waze/LayoutManager;

    .line 76
    invoke-direct {p0}, Lcom/waze/view/popups/AlertPopUp;->init()V

    .line 77
    return-void
.end method

.method private ImageOperations(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "url"
    .parameter "saveFilename"

    .prologue
    const/4 v0, 0x0

    .line 158
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/waze/view/popups/AlertPopUp;->fetch(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 159
    .local v2, is:Ljava/io/InputStream;
    const-string v3, "src"

    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 164
    .end local v2           #is:Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, e:Ljava/net/MalformedURLException;
    goto :goto_0

    .line 163
    .end local v1           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v1

    .line 164
    .local v1, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method static synthetic access$0(Lcom/waze/view/popups/AlertPopUp;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/waze/view/popups/AlertPopUp;->mDrawableImage:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$1(Lcom/waze/view/popups/AlertPopUp;)Lcom/waze/rtalerts/RTAlertsAlertData;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/waze/view/popups/AlertPopUp;->mAlertData:Lcom/waze/rtalerts/RTAlertsAlertData;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/view/popups/AlertPopUp;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 286
    invoke-direct {p0, p1, p2}, Lcom/waze/view/popups/AlertPopUp;->setThumbsUpButton(IZ)V

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/waze/view/popups/AlertPopUp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 94
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030019

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 95
    return-void
.end method

.method static onComment()V
    .locals 0

    .prologue
    .line 379
    return-void
.end method

.method static onThumbsUp()V
    .locals 0

    .prologue
    .line 375
    return-void
.end method

.method private setAlertInfoStr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "senderStr"
    .parameter "whenStr"

    .prologue
    .line 143
    const v2, 0x7f090186

    invoke-virtual {p0, v2}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 144
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    const v2, 0x7f090187

    invoke-virtual {p0, v2}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 146
    .local v1, textView2:Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    return-void
.end method

.method private setCommentsButton(IZ)V
    .locals 6
    .parameter "iNumComments"
    .parameter "enabled"

    .prologue
    const v3, 0x7f09018c

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 267
    const v2, 0x7f09018b

    invoke-virtual {p0, v2}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 268
    .local v0, commentsButton:Landroid/view/View;
    const v2, 0x7f09018d

    invoke-virtual {p0, v2}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 270
    .local v1, commentsButtonBg:Landroid/widget/TextView;
    if-nez p2, :cond_0

    .line 271
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 272
    invoke-virtual {p0, v3}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0200ef

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 273
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 282
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    return-void

    .line 276
    :cond_0
    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 277
    invoke-virtual {p0, v3}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0200ee

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 278
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setDescription(Ljava/lang/String;)V
    .locals 2
    .parameter "descriptionStr"

    .prologue
    .line 124
    const v1, 0x7f09017f

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 126
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 127
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    :goto_0
    return-void

    .line 130
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setGroup(Ljava/lang/String;)V
    .locals 4
    .parameter "groupIconStr"

    .prologue
    .line 250
    if-eqz p1, :cond_1

    .line 251
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

    .line 252
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 253
    const-string v2, "groups_default_icons.bin"

    invoke-static {v2}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 260
    :cond_0
    :goto_0
    const v2, 0x7f090185

    invoke-virtual {p0, v2}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 261
    .local v1, image:Landroid/widget/ImageView;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 262
    return-void

    .line 257
    .end local v0           #icon:Landroid/graphics/drawable/Drawable;
    .end local v1           #image:Landroid/widget/ImageView;
    :cond_1
    const-string v2, "groups_default_icons.bin"

    invoke-static {v2}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #icon:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private setIcon(Ljava/lang/String;)V
    .locals 3
    .parameter "icon"

    .prologue
    .line 110
    const v2, 0x7f090179

    invoke-virtual {p0, v2}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 111
    .local v0, image:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/waze/view/popups/AlertPopUp;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, p1}, Lcom/waze/view/popups/AlertPopUp;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 112
    .local v1, imageId:I
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    return-void
.end method

.method private setImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "sImageIdStr"
    .parameter "sVoiceIdStr"
    .parameter "imgaeUrl"
    .parameter "Icon"

    .prologue
    const v7, 0x7f09017a

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 201
    invoke-virtual {p0, v7}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 202
    .local v3, imageLayout:Landroid/view/View;
    if-nez p1, :cond_0

    .line 203
    const-string p1, ""

    .line 204
    :cond_0
    if-nez p2, :cond_1

    .line 205
    const-string p2, ""

    .line 207
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 208
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 244
    :goto_0
    return-void

    .line 212
    :cond_2
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 214
    invoke-virtual {p0, v7}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/waze/view/popups/AlertPopUp$3;

    invoke-direct {v7, p0}, Lcom/waze/view/popups/AlertPopUp$3;-><init>(Lcom/waze/view/popups/AlertPopUp;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    const v6, 0x7f09017d

    invoke-virtual {p0, v6}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 221
    .local v0, AlertImage:Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/waze/view/popups/AlertPopUp;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6, p4}, Lcom/waze/view/popups/AlertPopUp;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 222
    .local v2, imageId:I
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 224
    const v6, 0x7f09017c

    invoke-virtual {p0, v6}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 225
    .local v5, voiceInd:Landroid/widget/ImageView;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 226
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    :goto_1
    const v6, 0x7f09017b

    invoke-virtual {p0, v6}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 233
    .local v1, image:Landroid/widget/ImageView;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    .line 234
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 229
    .end local v1           #image:Landroid/widget/ImageView;
    :cond_3
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 237
    .restart local v1       #image:Landroid/widget/ImageView;
    :cond_4
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 238
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    new-instance v4, Lcom/waze/view/popups/AlertPopUp$BitmapDownloaderTask;

    invoke-direct {v4, p0, v1}, Lcom/waze/view/popups/AlertPopUp$BitmapDownloaderTask;-><init>(Lcom/waze/view/popups/AlertPopUp;Landroid/widget/ImageView;)V

    .line 240
    .local v4, task:Lcom/waze/view/popups/AlertPopUp$BitmapDownloaderTask;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object p3, v6, v8

    invoke-virtual {v4, v6}, Lcom/waze/view/popups/AlertPopUp$BitmapDownloaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private setLocation(Ljava/lang/String;)V
    .locals 2
    .parameter "locationStr"

    .prologue
    .line 117
    const v1, 0x7f090180

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 118
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    return-void
.end method

.method private setThumbsUpButton(IZ)V
    .locals 6
    .parameter "iNumThumbsUp"
    .parameter "enabled"

    .prologue
    const v3, 0x7f090189

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 288
    const v2, 0x7f090188

    invoke-virtual {p0, v2}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 289
    .local v0, thumbsUpButton:Landroid/view/View;
    const v2, 0x7f09018a

    invoke-virtual {p0, v2}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 291
    .local v1, thumbsUpButtonBg:Landroid/widget/TextView;
    if-nez p2, :cond_0

    .line 292
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 293
    invoke-virtual {p0, v3}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0203ee

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 294
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 303
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    return-void

    .line 297
    :cond_0
    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 298
    invoke-virtual {p0, v3}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0203ed

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 299
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 105
    const v1, 0x7f09017e

    invoke-virtual {p0, v1}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 106
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    return-void
.end method

.method private stopCloseTimer()V
    .locals 0

    .prologue
    .line 191
    return-void
.end method


# virtual methods
.method public InitView(Lcom/waze/rtalerts/RTAlertsAlertData;IILjava/lang/String;)V
    .locals 7
    .parameter "alertData"
    .parameter "x"
    .parameter "y"
    .parameter "sUserImageUrl"

    .prologue
    const/high16 v6, 0x4140

    const v4, 0x7f090173

    const/4 v5, 0x0

    .line 470
    iget v2, p1, Lcom/waze/rtalerts/RTAlertsAlertData;->mScreenX:I

    iput v2, p0, Lcom/waze/view/popups/AlertPopUp;->mX:I

    .line 471
    iget v2, p1, Lcom/waze/rtalerts/RTAlertsAlertData;->mScreenY:I

    iput v2, p0, Lcom/waze/view/popups/AlertPopUp;->mY:I

    .line 472
    iput-object p1, p0, Lcom/waze/view/popups/AlertPopUp;->mAlertData:Lcom/waze/rtalerts/RTAlertsAlertData;

    .line 473
    iput-object p4, p0, Lcom/waze/view/popups/AlertPopUp;->sImageUrl:Ljava/lang/String;

    .line 480
    const v2, 0x7f090188

    invoke-virtual {p0, v2}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/waze/view/popups/AlertPopUp$7;

    invoke-direct {v3, p0}, Lcom/waze/view/popups/AlertPopUp$7;-><init>(Lcom/waze/view/popups/AlertPopUp;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    const v2, 0x7f09018b

    invoke-virtual {p0, v2}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/waze/view/popups/AlertPopUp$8;

    invoke-direct {v3, p0}, Lcom/waze/view/popups/AlertPopUp$8;-><init>(Lcom/waze/view/popups/AlertPopUp;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 509
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/waze/view/popups/AlertPopUp;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 510
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 512
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v3, 0x2a8

    if-le v2, v3, :cond_0

    .line 514
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f020038

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 515
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v6

    float-to-int v3, v3

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 540
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/waze/view/popups/AlertPopUp;->mIsShown:Z

    .line 541
    invoke-virtual {p0, p1}, Lcom/waze/view/popups/AlertPopUp;->fillPopUpData(Lcom/waze/rtalerts/RTAlertsAlertData;)V

    .line 543
    return-void

    .line 519
    :cond_0
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f020035

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 520
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/view/popups/AlertPopUp;->mIsShown:Z

    .line 81
    iget-object v0, p0, Lcom/waze/view/popups/AlertPopUp;->mLayoutManager:Lcom/waze/LayoutManager;

    invoke-virtual {v0, p0}, Lcom/waze/LayoutManager;->dismiss(Lcom/waze/view/popups/PopUp;)V

    .line 83
    new-instance v0, Lcom/waze/view/popups/AlertPopUp$1;

    invoke-direct {v0, p0}, Lcom/waze/view/popups/AlertPopUp$1;-><init>(Lcom/waze/view/popups/AlertPopUp;)V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method

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
    .line 150
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 151
    .local v1, url:Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    .line 152
    .local v0, content:Ljava/lang/Object;
    return-object v0
.end method

.method public fillPopUpData(Lcom/waze/rtalerts/RTAlertsAlertData;)V
    .locals 11
    .parameter "alertData"

    .prologue
    const/16 v10, 0x8

    const/4 v5, 0x1

    const v8, 0x7f090184

    const v9, 0x7f090175

    const/4 v6, 0x0

    .line 309
    iget-boolean v7, p1, Lcom/waze/rtalerts/RTAlertsAlertData;->mIsAutoJam:Z

    if-eqz v7, :cond_0

    move v1, v6

    .line 310
    .local v1, commnetsEnabled:Z
    :goto_0
    iget-boolean v7, p1, Lcom/waze/rtalerts/RTAlertsAlertData;->mIsAlertByMe:Z

    if-nez v7, :cond_1

    iget-boolean v7, p1, Lcom/waze/rtalerts/RTAlertsAlertData;->mIsThumbsUpByMe:Z

    if-nez v7, :cond_1

    move v4, v5

    .line 313
    .local v4, thumbUpEnabled:Z
    :goto_1
    invoke-virtual {p0, v8}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 315
    iget-object v5, p0, Lcom/waze/view/popups/AlertPopUp;->sImageUrl:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 317
    invoke-virtual {p0, v8}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 319
    .local v0, Userimg:Landroid/widget/ImageView;
    sget-object v5, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    iget-object v7, p0, Lcom/waze/view/popups/AlertPopUp;->sImageUrl:Ljava/lang/String;

    new-instance v8, Lcom/waze/view/popups/AlertPopUp$4;

    invoke-direct {v8, p0, v0}, Lcom/waze/view/popups/AlertPopUp$4;-><init>(Lcom/waze/view/popups/AlertPopUp;Landroid/widget/ImageView;)V

    invoke-virtual {v5, v7, v8}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;Lcom/waze/utils/ImageRepository$ImageRepositoryListener;)V

    .line 343
    :goto_2
    iget-object v5, p1, Lcom/waze/rtalerts/RTAlertsAlertData;->mTimeOnRoute:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p1, Lcom/waze/rtalerts/RTAlertsAlertData;->mTimeOnRoute:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 344
    invoke-virtual {p0, v9}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 345
    invoke-virtual {p0, v9}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p1, Lcom/waze/rtalerts/RTAlertsAlertData;->mTimeOnRoute:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    :goto_3
    iget-object v5, p1, Lcom/waze/rtalerts/RTAlertsAlertData;->mTitle:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/waze/view/popups/AlertPopUp;->setTitle(Ljava/lang/String;)V

    .line 353
    iget-object v5, p1, Lcom/waze/rtalerts/RTAlertsAlertData;->mIcon:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/waze/view/popups/AlertPopUp;->setIcon(Ljava/lang/String;)V

    .line 354
    iget-object v5, p1, Lcom/waze/rtalerts/RTAlertsAlertData;->mLocationStr:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/waze/view/popups/AlertPopUp;->setLocation(Ljava/lang/String;)V

    .line 356
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v5

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_CLOSE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, v6}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    .line 359
    iget-object v5, p1, Lcom/waze/rtalerts/RTAlertsAlertData;->mImageId:Ljava/lang/String;

    iget-object v6, p1, Lcom/waze/rtalerts/RTAlertsAlertData;->mVoiceId:Ljava/lang/String;

    iget-object v7, p1, Lcom/waze/rtalerts/RTAlertsAlertData;->mImageURL:Ljava/lang/String;

    iget-object v8, p1, Lcom/waze/rtalerts/RTAlertsAlertData;->mIcon:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/waze/view/popups/AlertPopUp;->setImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v5, p1, Lcom/waze/rtalerts/RTAlertsAlertData;->mDescription:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/waze/view/popups/AlertPopUp;->setDescription(Ljava/lang/String;)V

    .line 362
    iget-object v5, p1, Lcom/waze/rtalerts/RTAlertsAlertData;->mReportedBy:Ljava/lang/String;

    iget-object v6, p1, Lcom/waze/rtalerts/RTAlertsAlertData;->mTimeRelative:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/waze/view/popups/AlertPopUp;->setAlertInfoStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v5, p1, Lcom/waze/rtalerts/RTAlertsAlertData;->mGroupIcon:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/waze/view/popups/AlertPopUp;->setGroup(Ljava/lang/String;)V

    .line 365
    iget v5, p1, Lcom/waze/rtalerts/RTAlertsAlertData;->mNumComments:I

    invoke-direct {p0, v5, v1}, Lcom/waze/view/popups/AlertPopUp;->setCommentsButton(IZ)V

    .line 366
    iget v5, p1, Lcom/waze/rtalerts/RTAlertsAlertData;->mNumThumbsUp:I

    invoke-direct {p0, v5, v4}, Lcom/waze/view/popups/AlertPopUp;->setThumbsUpButton(IZ)V

    .line 367
    return-void

    .end local v0           #Userimg:Landroid/widget/ImageView;
    .end local v1           #commnetsEnabled:Z
    .end local v4           #thumbUpEnabled:Z
    :cond_0
    move v1, v5

    .line 309
    goto/16 :goto_0

    .restart local v1       #commnetsEnabled:Z
    :cond_1
    move v4, v6

    .line 310
    goto/16 :goto_1

    .line 333
    .restart local v4       #thumbUpEnabled:Z
    :cond_2
    invoke-virtual {p0, v8}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 334
    .restart local v0       #Userimg:Landroid/widget/ImageView;
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 337
    const v5, 0x7f090183

    invoke-virtual {p0, v5}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 338
    .local v3, icon:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/waze/view/popups/AlertPopUp;->mContext:Landroid/content/Context;

    iget-object v7, p1, Lcom/waze/rtalerts/RTAlertsAlertData;->mMoodName:Ljava/lang/String;

    invoke-virtual {p0, v5, v7}, Lcom/waze/view/popups/AlertPopUp;->getResourceDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 339
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 340
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 349
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #icon:Landroid/widget/ImageView;
    :cond_3
    invoke-virtual {p0, v9}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public getResourceDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "context"
    .parameter "image"

    .prologue
    .line 370
    invoke-static {p1, p2}, Lcom/waze/MoodManager;->getMoodDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getResourceId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .parameter "context"
    .parameter "image"

    .prologue
    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "drawable/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    const-string v4, "_"

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 101
    .local v0, imageId:I
    return v0
.end method

.method public hide()V
    .locals 0

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/waze/view/popups/AlertPopUp;->dismiss()V

    .line 554
    return-void
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/waze/view/popups/AlertPopUp;->mIsShown:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/waze/view/popups/AlertPopUp;->mLayoutManager:Lcom/waze/LayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/LayoutManager;->callCloseAllPopups(I)V

    .line 384
    return-void
.end method

.method public onImagePresses()V
    .locals 4

    .prologue
    .line 170
    iget-object v2, p0, Lcom/waze/view/popups/AlertPopUp;->mAlertData:Lcom/waze/rtalerts/RTAlertsAlertData;

    iget-object v0, v2, Lcom/waze/rtalerts/RTAlertsAlertData;->mImageId:Ljava/lang/String;

    .line 171
    .local v0, sImageIdStr:Ljava/lang/String;
    iget-object v2, p0, Lcom/waze/view/popups/AlertPopUp;->mAlertData:Lcom/waze/rtalerts/RTAlertsAlertData;

    iget-object v1, v2, Lcom/waze/rtalerts/RTAlertsAlertData;->mVoiceId:Ljava/lang/String;

    .line 173
    .local v1, sVoiceIdStr:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/waze/view/popups/AlertPopUp;->mDrawableImage:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/waze/view/popups/AlertPopUp;->mLayoutManager:Lcom/waze/LayoutManager;

    iget-object v3, p0, Lcom/waze/view/popups/AlertPopUp;->mDrawableImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/waze/LayoutManager;->OpenImageView(Landroid/graphics/drawable/Drawable;)V

    .line 175
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    new-instance v2, Lcom/waze/view/popups/AlertPopUp$2;

    invoke-direct {v2, p0}, Lcom/waze/view/popups/AlertPopUp$2;-><init>(Lcom/waze/view/popups/AlertPopUp;)V

    invoke-static {v2}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 185
    :cond_1
    return-void
.end method

.method public setCloseTimer(I)V
    .locals 0
    .parameter "iTimeOut"

    .prologue
    .line 197
    return-void
.end method

.method public show(Lcom/waze/rtalerts/RTAlertsAlertData;IILjava/lang/String;)V
    .locals 11
    .parameter "alertData"
    .parameter "x"
    .parameter "y"
    .parameter "sUserImageUrl"

    .prologue
    .line 387
    iget-boolean v6, p0, Lcom/waze/view/popups/AlertPopUp;->mIsShown:Z

    if-eqz v6, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/waze/view/popups/AlertPopUp;->dismiss()V

    .line 392
    :cond_0
    iget v6, p1, Lcom/waze/rtalerts/RTAlertsAlertData;->mScreenX:I

    iput v6, p0, Lcom/waze/view/popups/AlertPopUp;->mX:I

    .line 393
    iget v6, p1, Lcom/waze/rtalerts/RTAlertsAlertData;->mScreenY:I

    iput v6, p0, Lcom/waze/view/popups/AlertPopUp;->mY:I

    .line 394
    iput-object p1, p0, Lcom/waze/view/popups/AlertPopUp;->mAlertData:Lcom/waze/rtalerts/RTAlertsAlertData;

    .line 395
    iput-object p4, p0, Lcom/waze/view/popups/AlertPopUp;->sImageUrl:Ljava/lang/String;

    .line 402
    const v6, 0x7f090188

    invoke-virtual {p0, v6}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/waze/view/popups/AlertPopUp$5;

    invoke-direct {v7, p0}, Lcom/waze/view/popups/AlertPopUp$5;-><init>(Lcom/waze/view/popups/AlertPopUp;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    const v6, 0x7f09018b

    invoke-virtual {p0, v6}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/waze/view/popups/AlertPopUp$6;

    invoke-direct {v7, p0}, Lcom/waze/view/popups/AlertPopUp$6;-><init>(Lcom/waze/view/popups/AlertPopUp;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 431
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget-object v6, p0, Lcom/waze/view/popups/AlertPopUp;->mContext:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 432
    .local v5, wm:Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 434
    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v7, 0x2a8

    if-le v6, v7, :cond_3

    .line 436
    const v6, 0x7f090173

    invoke-virtual {p0, v6}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f020038

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 437
    const v6, 0x7f090173

    invoke-virtual {p0, v6}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/high16 v7, 0x4140

    iget v8, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    const/4 v8, 0x0

    const/high16 v9, 0x4140

    iget v10, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 445
    :goto_0
    iget-object v6, p0, Lcom/waze/view/popups/AlertPopUp;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 447
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/waze/NativeManager;->isNavigatingNTV()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 449
    const v6, 0x7f090173

    invoke-virtual {p0, v6}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 450
    .local v1, layout:Landroid/widget/RelativeLayout;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 451
    .local v3, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/waze/NativeManager;->getNavBarManager()Lcom/waze/NavBarManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/waze/NavBarManager;->getNavBar()Lcom/waze/navbar/NavBar;

    move-result-object v2

    .line 452
    .local v2, navBar:Lcom/waze/navbar/NavBar;
    const/4 v4, 0x0

    .line 453
    .local v4, topMargin:I
    if-eqz v2, :cond_1

    .line 454
    invoke-virtual {v2}, Lcom/waze/navbar/NavBar;->getNavBarHeight()I

    move-result v4

    .line 456
    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v4, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 457
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    .end local v1           #layout:Landroid/widget/RelativeLayout;
    .end local v2           #navBar:Lcom/waze/navbar/NavBar;
    .end local v3           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4           #topMargin:I
    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/waze/view/popups/AlertPopUp;->mIsShown:Z

    .line 463
    invoke-virtual {p0, p1}, Lcom/waze/view/popups/AlertPopUp;->fillPopUpData(Lcom/waze/rtalerts/RTAlertsAlertData;)V

    .line 464
    iget-object v6, p0, Lcom/waze/view/popups/AlertPopUp;->mLayoutManager:Lcom/waze/LayoutManager;

    invoke-virtual {v6, p0}, Lcom/waze/LayoutManager;->addView(Lcom/waze/view/popups/PopUp;)V

    .line 465
    iget v6, p0, Lcom/waze/view/popups/AlertPopUp;->mX:I

    int-to-float v6, v6

    iget v7, p0, Lcom/waze/view/popups/AlertPopUp;->mY:I

    int-to-float v7, v7

    sget v8, Lcom/waze/view/popups/PopUp;->ANIMATION_DURATION:I

    invoke-static {p0, v6, v7, v8}, Lcom/waze/view/anim/AnimationUtils;->openAnimateFromPoint(Landroid/view/View;FFI)V

    .line 466
    return-void

    .line 441
    :cond_3
    const v6, 0x7f090173

    invoke-virtual {p0, v6}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f020035

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 442
    const v6, 0x7f090173

    invoke-virtual {p0, v6}, Lcom/waze/view/popups/AlertPopUp;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method
