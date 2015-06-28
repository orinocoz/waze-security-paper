.class public Lcom/waze/view/popups/AlertTicker;
.super Lcom/waze/view/popups/PopUp;
.source "AlertTicker.java"


# static fields
.field private static mInstance:Lcom/waze/view/popups/AlertTicker;

.field private static mLayoutManager:Lcom/waze/LayoutManager;

.field private static mThumbsUpData:Lcom/waze/rtalerts/RTAlertsThumbsUpData;


# instance fields
.field private bIsBeep:Z

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/user/AlertTickerData;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:I

.field private mIsShown:Z

.field private mMoodName:Ljava/lang/String;

.field private mRunnable:Ljava/lang/Runnable;

.field private mUserImageUrl:Ljava/lang/String;

.field private nCount:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V
    .locals 3
    .parameter "context"
    .parameter "layoutManager"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/waze/view/popups/PopUp;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V

    .line 26
    iput-object v2, p0, Lcom/waze/view/popups/AlertTicker;->mUserImageUrl:Ljava/lang/String;

    .line 27
    iput-object v2, p0, Lcom/waze/view/popups/AlertTicker;->mMoodName:Ljava/lang/String;

    .line 28
    iput v1, p0, Lcom/waze/view/popups/AlertTicker;->nCount:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/waze/view/popups/AlertTicker;->mData:Ljava/util/ArrayList;

    .line 30
    iput-object v2, p0, Lcom/waze/view/popups/AlertTicker;->mContext:Landroid/content/Context;

    .line 31
    iput-boolean v1, p0, Lcom/waze/view/popups/AlertTicker;->mIsShown:Z

    .line 32
    iput-boolean v1, p0, Lcom/waze/view/popups/AlertTicker;->bIsBeep:Z

    .line 90
    iput-object p1, p0, Lcom/waze/view/popups/AlertTicker;->mContext:Landroid/content/Context;

    .line 91
    sput-object p2, Lcom/waze/view/popups/AlertTicker;->mLayoutManager:Lcom/waze/LayoutManager;

    .line 92
    return-void
.end method

.method private SetImage()V
    .locals 6

    .prologue
    const v4, 0x7f090192

    const/4 v5, 0x0

    .line 98
    iget-object v3, p0, Lcom/waze/view/popups/AlertTicker;->mUserImageUrl:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 100
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/AlertTicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 101
    .local v0, UserSmallImg:Landroid/widget/ImageView;
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    sget-object v3, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    iget-object v4, p0, Lcom/waze/view/popups/AlertTicker;->mUserImageUrl:Ljava/lang/String;

    new-instance v5, Lcom/waze/view/popups/AlertTicker$1;

    invoke-direct {v5, p0, v0}, Lcom/waze/view/popups/AlertTicker$1;-><init>(Lcom/waze/view/popups/AlertTicker;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4, v5}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;Lcom/waze/utils/ImageRepository$ImageRepositoryListener;)V

    .line 126
    :goto_0
    return-void

    .line 117
    .end local v0           #UserSmallImg:Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {p0, v4}, Lcom/waze/view/popups/AlertTicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 118
    .restart local v0       #UserSmallImg:Landroid/widget/ImageView;
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    const v3, 0x7f090191

    invoke-virtual {p0, v3}, Lcom/waze/view/popups/AlertTicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 121
    .local v2, icon:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/waze/view/popups/AlertTicker;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/waze/view/popups/AlertTicker;->mMoodName:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/waze/view/popups/AlertTicker;->getResourceDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 122
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/waze/view/popups/AlertTicker;)I
    .locals 1
    .parameter

    .prologue
    .line 28
    iget v0, p0, Lcom/waze/view/popups/AlertTicker;->nCount:I

    return v0
.end method

.method static synthetic access$1(Lcom/waze/view/popups/AlertTicker;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/waze/view/popups/AlertTicker;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method private close()V
    .locals 0

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/waze/view/popups/AlertTicker;->dismiss()V

    .line 54
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/waze/LayoutManager;)Lcom/waze/view/popups/AlertTicker;
    .locals 1
    .parameter "context"
    .parameter "layoutManager"

    .prologue
    .line 75
    sget-object v0, Lcom/waze/view/popups/AlertTicker;->mInstance:Lcom/waze/view/popups/AlertTicker;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/waze/view/popups/AlertTicker;

    invoke-direct {v0, p0, p1}, Lcom/waze/view/popups/AlertTicker;-><init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V

    sput-object v0, Lcom/waze/view/popups/AlertTicker;->mInstance:Lcom/waze/view/popups/AlertTicker;

    .line 77
    sget-object v0, Lcom/waze/view/popups/AlertTicker;->mInstance:Lcom/waze/view/popups/AlertTicker;

    invoke-direct {v0}, Lcom/waze/view/popups/AlertTicker;->init()V

    .line 79
    :cond_0
    sget-object v0, Lcom/waze/view/popups/AlertTicker;->mInstance:Lcom/waze/view/popups/AlertTicker;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/waze/view/popups/AlertTicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 59
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03001a

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 71
    return-void
.end method


# virtual methods
.method public ChangeImage(Z)V
    .locals 4
    .parameter "bIsFew"

    .prologue
    const v3, 0x7f09018f

    const/4 v2, 0x0

    .line 134
    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p0, v3}, Lcom/waze/view/popups/AlertTicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0203ae

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 137
    invoke-virtual {p0, v3}, Lcom/waze/view/popups/AlertTicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 144
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-virtual {p0, v3}, Lcom/waze/view/popups/AlertTicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0203af

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 142
    invoke-virtual {p0, v3}, Lcom/waze/view/popups/AlertTicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method public IsShown()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/waze/view/popups/AlertTicker;->mIsShown:Z

    return v0
.end method

.method public Refresh()V
    .locals 8

    .prologue
    const v7, 0x7f0200ae

    const/4 v6, 0x1

    const v3, 0x7f090193

    const v5, 0x7f09018f

    const/4 v4, 0x0

    .line 157
    iget v2, p0, Lcom/waze/view/popups/AlertTicker;->nCount:I

    if-lez v2, :cond_5

    .line 159
    iget-object v2, p0, Lcom/waze/view/popups/AlertTicker;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/user/AlertTickerData;

    .line 160
    .local v0, alertData:Lcom/waze/user/AlertTickerData;
    iget-object v2, v0, Lcom/waze/user/AlertTickerData;->mImage:Ljava/lang/String;

    iput-object v2, p0, Lcom/waze/view/popups/AlertTicker;->mUserImageUrl:Ljava/lang/String;

    .line 161
    iget-object v2, v0, Lcom/waze/user/AlertTickerData;->mMood:Ljava/lang/String;

    iput-object v2, p0, Lcom/waze/view/popups/AlertTicker;->mMoodName:Ljava/lang/String;

    .line 162
    iget v1, v0, Lcom/waze/user/AlertTickerData;->mType:I

    .line 163
    .local v1, nType:I
    if-nez v1, :cond_1

    .line 165
    iput-boolean v6, p0, Lcom/waze/view/popups/AlertTicker;->bIsBeep:Z

    .line 166
    invoke-virtual {p0, v3}, Lcom/waze/view/popups/AlertTicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0200ab

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    :cond_0
    :goto_0
    iget v2, p0, Lcom/waze/view/popups/AlertTicker;->nCount:I

    if-ne v2, v6, :cond_4

    .line 186
    invoke-virtual {p0, v5}, Lcom/waze/view/popups/AlertTicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0203af

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 187
    invoke-virtual {p0, v5}, Lcom/waze/view/popups/AlertTicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 195
    :goto_1
    invoke-direct {p0}, Lcom/waze/view/popups/AlertTicker;->SetImage()V

    .line 201
    .end local v0           #alertData:Lcom/waze/user/AlertTickerData;
    .end local v1           #nType:I
    :goto_2
    return-void

    .line 168
    .restart local v0       #alertData:Lcom/waze/user/AlertTickerData;
    .restart local v1       #nType:I
    :cond_1
    if-ne v1, v6, :cond_2

    .line 170
    iput-boolean v4, p0, Lcom/waze/view/popups/AlertTicker;->bIsBeep:Z

    .line 171
    invoke-virtual {p0, v3}, Lcom/waze/view/popups/AlertTicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0200ac

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 173
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 175
    iput-boolean v4, p0, Lcom/waze/view/popups/AlertTicker;->bIsBeep:Z

    .line 176
    invoke-virtual {p0, v3}, Lcom/waze/view/popups/AlertTicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 178
    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 180
    iput-boolean v4, p0, Lcom/waze/view/popups/AlertTicker;->bIsBeep:Z

    .line 181
    invoke-virtual {p0, v3}, Lcom/waze/view/popups/AlertTicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 191
    :cond_4
    invoke-virtual {p0, v5}, Lcom/waze/view/popups/AlertTicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0203ae

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 192
    invoke-virtual {p0, v5}, Lcom/waze/view/popups/AlertTicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 199
    .end local v0           #alertData:Lcom/waze/user/AlertTickerData;
    .end local v1           #nType:I
    :cond_5
    invoke-virtual {p0}, Lcom/waze/view/popups/AlertTicker;->dismiss()V

    goto :goto_2
.end method

.method public RemoveAlertTicker(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 148
    iget v0, p0, Lcom/waze/view/popups/AlertTicker;->nCount:I

    if-ge p1, v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/waze/view/popups/AlertTicker;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 151
    iget v0, p0, Lcom/waze/view/popups/AlertTicker;->nCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/waze/view/popups/AlertTicker;->nCount:I

    .line 153
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    iput-boolean v1, p0, Lcom/waze/view/popups/AlertTicker;->mIsShown:Z

    .line 42
    sget-object v0, Lcom/waze/view/popups/AlertTicker;->mLayoutManager:Lcom/waze/LayoutManager;

    invoke-virtual {v0, p0}, Lcom/waze/LayoutManager;->dismiss(Lcom/waze/view/popups/PopUp;)V

    .line 43
    iget-object v0, p0, Lcom/waze/view/popups/AlertTicker;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 44
    iput v1, p0, Lcom/waze/view/popups/AlertTicker;->nCount:I

    .line 46
    iget-boolean v0, p0, Lcom/waze/view/popups/AlertTicker;->bIsBeep:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    iget v1, p0, Lcom/waze/view/popups/AlertTicker;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->BeepClosed(I)V

    .line 50
    :cond_0
    return-void
.end method

.method public getResourceDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "context"
    .parameter "image"

    .prologue
    .line 129
    invoke-static {p1, p2}, Lcom/waze/MoodManager;->getMoodDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/waze/view/popups/AlertTicker;->mIsShown:Z

    if-eqz v0, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/waze/view/popups/AlertTicker;->close()V

    .line 298
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/waze/view/popups/AlertTicker;->close()V

    .line 38
    return-void
.end method

.method public show(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "nType"
    .parameter "UserImageUrl"
    .parameter "mMood"
    .parameter "Index"

    .prologue
    const v6, 0x7f0200ae

    const v5, 0x7f09018f

    const/4 v4, 0x1

    const v2, 0x7f090193

    const/4 v3, 0x0

    .line 204
    iget v1, p0, Lcom/waze/view/popups/AlertTicker;->nCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/waze/view/popups/AlertTicker;->nCount:I

    .line 205
    new-instance v0, Lcom/waze/user/AlertTickerData;

    invoke-direct {v0}, Lcom/waze/user/AlertTickerData;-><init>()V

    .line 206
    .local v0, AlertTicker:Lcom/waze/user/AlertTickerData;
    iput p1, v0, Lcom/waze/user/AlertTickerData;->mType:I

    .line 207
    iput-object p2, v0, Lcom/waze/user/AlertTickerData;->mImage:Ljava/lang/String;

    .line 208
    iput-object p3, v0, Lcom/waze/user/AlertTickerData;->mMood:Ljava/lang/String;

    .line 209
    iput p4, v0, Lcom/waze/user/AlertTickerData;->mIndex:I

    .line 210
    iget-object v1, p0, Lcom/waze/view/popups/AlertTicker;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    iget-boolean v1, p0, Lcom/waze/view/popups/AlertTicker;->mIsShown:Z

    if-eqz v1, :cond_0

    .line 293
    :goto_0
    return-void

    .line 215
    :cond_0
    iput-boolean v4, p0, Lcom/waze/view/popups/AlertTicker;->mIsShown:Z

    .line 216
    iput-object p2, p0, Lcom/waze/view/popups/AlertTicker;->mUserImageUrl:Ljava/lang/String;

    .line 217
    iput-object p3, p0, Lcom/waze/view/popups/AlertTicker;->mMoodName:Ljava/lang/String;

    .line 218
    iput p4, p0, Lcom/waze/view/popups/AlertTicker;->mIndex:I

    .line 232
    if-nez p1, :cond_2

    .line 234
    iput-boolean v4, p0, Lcom/waze/view/popups/AlertTicker;->bIsBeep:Z

    .line 235
    invoke-virtual {p0, v2}, Lcom/waze/view/popups/AlertTicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0200ab

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 253
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/waze/view/popups/AlertTicker;->SetImage()V

    .line 255
    invoke-virtual {p0, v5}, Lcom/waze/view/popups/AlertTicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0203af

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 256
    invoke-virtual {p0, v5}, Lcom/waze/view/popups/AlertTicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 258
    invoke-virtual {p0, v5}, Lcom/waze/view/popups/AlertTicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/waze/view/popups/AlertTicker$2;

    invoke-direct {v2, p0}, Lcom/waze/view/popups/AlertTicker$2;-><init>(Lcom/waze/view/popups/AlertTicker;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    sget-object v1, Lcom/waze/view/popups/AlertTicker;->mLayoutManager:Lcom/waze/LayoutManager;

    invoke-virtual {v1, p0}, Lcom/waze/LayoutManager;->addView(Lcom/waze/view/popups/PopUp;)V

    goto :goto_0

    .line 237
    :cond_2
    if-ne p1, v4, :cond_3

    .line 239
    iput-boolean v3, p0, Lcom/waze/view/popups/AlertTicker;->bIsBeep:Z

    .line 240
    invoke-virtual {p0, v2}, Lcom/waze/view/popups/AlertTicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0200ac

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 242
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 244
    iput-boolean v3, p0, Lcom/waze/view/popups/AlertTicker;->bIsBeep:Z

    .line 245
    invoke-virtual {p0, v2}, Lcom/waze/view/popups/AlertTicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 247
    :cond_4
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 249
    iput-boolean v3, p0, Lcom/waze/view/popups/AlertTicker;->bIsBeep:Z

    .line 250
    invoke-virtual {p0, v2}, Lcom/waze/view/popups/AlertTicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
