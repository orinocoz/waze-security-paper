.class public Lcom/waze/rtalerts/RTAlertsCommentsAdapter;
.super Landroid/widget/BaseAdapter;
.source "RTAlertsCommentsAdapter.java"


# instance fields
.field private final mContext:Landroid/app/Activity;

.field private mItems:[Lcom/waze/rtalerts/RTAlertsCommentData;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/rtalerts/RTAlertsCommentsAdapter;->mItems:[Lcom/waze/rtalerts/RTAlertsCommentData;

    .line 23
    iput-object p1, p0, Lcom/waze/rtalerts/RTAlertsCommentsAdapter;->mContext:Landroid/app/Activity;

    .line 24
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/waze/rtalerts/RTAlertsCommentsAdapter;->mItems:[Lcom/waze/rtalerts/RTAlertsCommentData;

    if-nez v0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/waze/rtalerts/RTAlertsCommentsAdapter;->mItems:[Lcom/waze/rtalerts/RTAlertsCommentData;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/waze/rtalerts/RTAlertsCommentsAdapter;->mItems:[Lcom/waze/rtalerts/RTAlertsCommentData;

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/waze/rtalerts/RTAlertsCommentsAdapter;->mItems:[Lcom/waze/rtalerts/RTAlertsCommentData;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 63
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 14
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 79
    iget-object v10, p0, Lcom/waze/rtalerts/RTAlertsCommentsAdapter;->mItems:[Lcom/waze/rtalerts/RTAlertsCommentData;

    array-length v10, v10

    if-nez v10, :cond_0

    .line 121
    .end local p2
    :goto_0
    return-object p2

    .line 82
    .restart local p2
    :cond_0
    iget-object v10, p0, Lcom/waze/rtalerts/RTAlertsCommentsAdapter;->mItems:[Lcom/waze/rtalerts/RTAlertsCommentData;

    aget-object v5, v10, p1

    .line 84
    .local v5, itemData:Lcom/waze/rtalerts/RTAlertsCommentData;
    iget-object v10, p0, Lcom/waze/rtalerts/RTAlertsCommentsAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 85
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v10, 0x7f0300d8

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v4, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 89
    .local v9, view:Landroid/view/View;
    const v10, 0x7f0905c3

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 90
    .local v3, icon:Landroid/widget/ImageView;
    const v10, 0x7f0905c5

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 91
    .local v1, description:Landroid/widget/TextView;
    const v10, 0x7f0905c4

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 92
    .local v6, postedby:Landroid/widget/TextView;
    const v10, 0x7f0905c6

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 97
    .local v7, time:Landroid/widget/TextView;
    iget v10, v5, Lcom/waze/rtalerts/RTAlertsCommentData;->mCommentID:I

    invoke-virtual {v9, v10}, Landroid/view/View;->setId(I)V

    .line 102
    iget-object v10, v5, Lcom/waze/rtalerts/RTAlertsCommentData;->mFacebookImage:[B

    if-eqz v10, :cond_2

    .line 104
    iget-object v10, v5, Lcom/waze/rtalerts/RTAlertsCommentData;->mFacebookImage:[B

    iget v11, v5, Lcom/waze/rtalerts/RTAlertsCommentData;->mFacebookImageWidth:I

    iget v12, v5, Lcom/waze/rtalerts/RTAlertsCommentData;->mFacebookImageHeight:I

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/waze/rtalerts/RTAlertsCommentsAdapter;->updateFbImage(Landroid/view/View;[BII)V

    .line 111
    :cond_1
    :goto_1
    iget-object v10, v5, Lcom/waze/rtalerts/RTAlertsCommentData;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v10, v5, Lcom/waze/rtalerts/RTAlertsCommentData;->mPostedBy:Ljava/lang/String;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 116
    .local v0, calendar:Ljava/util/Calendar;
    iget-wide v10, v5, Lcom/waze/rtalerts/RTAlertsCommentData;->m64Time:J

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 117
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v10, "HH:mm"

    invoke-direct {v2, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 118
    .local v2, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 119
    .local v8, timeStr:Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 p2, v9

    .line 121
    goto :goto_0

    .line 106
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v2           #formatter:Ljava/text/SimpleDateFormat;
    .end local v8           #timeStr:Ljava/lang/String;
    :cond_2
    iget-object v10, v5, Lcom/waze/rtalerts/RTAlertsCommentData;->mIcon:Ljava/lang/String;

    if-eqz v10, :cond_1

    .line 108
    iget-object v10, v5, Lcom/waze/rtalerts/RTAlertsCommentData;->mIcon:Ljava/lang/String;

    invoke-static {v10}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public update([Lcom/waze/rtalerts/RTAlertsCommentData;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/waze/rtalerts/RTAlertsCommentsAdapter;->mItems:[Lcom/waze/rtalerts/RTAlertsCommentData;

    .line 39
    return-void
.end method

.method public updateFbImage(Landroid/view/View;[BII)V
    .locals 3
    .parameter "commentView"
    .parameter "image"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 44
    const v2, 0x7f0905c3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 45
    .local v1, icon:Landroid/widget/ImageView;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 46
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 47
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 49
    return-void
.end method
