.class Lcom/waze/reports/PlacePhotoGallery$2;
.super Lcom/waze/ifs/ui/WazePagerAdapter;
.source "PlacePhotoGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/PlacePhotoGallery;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILandroid/os/Bundle;Lcom/waze/ifs/ui/ActivityBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/PlacePhotoGallery;


# direct methods
.method constructor <init>(Lcom/waze/reports/PlacePhotoGallery;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/PlacePhotoGallery$2;->this$0:Lcom/waze/reports/PlacePhotoGallery;

    .line 114
    invoke-direct {p0}, Lcom/waze/ifs/ui/WazePagerAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/PlacePhotoGallery$2;)Lcom/waze/reports/PlacePhotoGallery;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/waze/reports/PlacePhotoGallery$2;->this$0:Lcom/waze/reports/PlacePhotoGallery;

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 272
    check-cast p3, Landroid/view/View;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 273
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/waze/reports/PlacePhotoGallery$2;->this$0:Lcom/waze/reports/PlacePhotoGallery;

    #getter for: Lcom/waze/reports/PlacePhotoGallery;->mImages:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/waze/reports/PlacePhotoGallery;->access$1(Lcom/waze/reports/PlacePhotoGallery;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getImagePosition(Lcom/waze/reports/PhotoPagerSection$VenueImage;)I
    .locals 1
    .parameter "vi"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/waze/reports/PlacePhotoGallery$2;->this$0:Lcom/waze/reports/PlacePhotoGallery;

    #getter for: Lcom/waze/reports/PlacePhotoGallery;->mImages:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/waze/reports/PlacePhotoGallery;->access$1(Lcom/waze/reports/PlacePhotoGallery;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/waze/reports/PlacePhotoGallery$2;->this$0:Lcom/waze/reports/PlacePhotoGallery;

    #getter for: Lcom/waze/reports/PlacePhotoGallery;->mImages:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/waze/reports/PlacePhotoGallery;->access$1(Lcom/waze/reports/PlacePhotoGallery;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 3
    .parameter "object"

    .prologue
    .line 128
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    .line 129
    .local v0, v:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/reports/PhotoPagerSection$VenueImage;

    .line 130
    .local v1, vi:Lcom/waze/reports/PhotoPagerSection$VenueImage;
    invoke-virtual {p0, v1}, Lcom/waze/reports/PlacePhotoGallery$2;->getImagePosition(Lcom/waze/reports/PhotoPagerSection$VenueImage;)I

    move-result v2

    return v2
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 21
    .parameter "container"
    .parameter "position"

    .prologue
    .line 144
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 145
    const v3, 0x7f0300b1

    const/4 v4, 0x0

    .line 144
    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    .line 147
    .local v13, layout:Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/PlacePhotoGallery$2;->this$0:Lcom/waze/reports/PlacePhotoGallery;

    #getter for: Lcom/waze/reports/PlacePhotoGallery;->mImages:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/waze/reports/PlacePhotoGallery;->access$1(Lcom/waze/reports/PlacePhotoGallery;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/waze/reports/PhotoPagerSection$VenueImage;

    .line 149
    .local v20, vi:Lcom/waze/reports/PhotoPagerSection$VenueImage;
    const v2, 0x7f090529

    invoke-virtual {v13, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/waze/view/map/ProgressAnimation;

    .line 150
    .local v6, pa:Lcom/waze/view/map/ProgressAnimation;
    sget-object v2, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->imageUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/waze/utils/ImageRepository;->isCached(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 151
    const/16 v2, 0x8

    invoke-virtual {v6, v2}, Lcom/waze/view/map/ProgressAnimation;->setVisibility(I)V

    .line 156
    :goto_0
    const v2, 0x7f09052a

    invoke-virtual {v13, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 157
    .local v5, image:Landroid/widget/ImageView;
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->imageUri:Ljava/lang/String;

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    .line 158
    .local v12, isFile:Z
    sget-object v2, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->imageUri:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/waze/reports/PlacePhotoGallery$2;->this$0:Lcom/waze/reports/PlacePhotoGallery;

    #getter for: Lcom/waze/reports/PlacePhotoGallery;->mActivity:Lcom/waze/ifs/ui/ActivityBase;
    invoke-static {v7}, Lcom/waze/reports/PlacePhotoGallery;->access$2(Lcom/waze/reports/PlacePhotoGallery;)Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;ZLandroid/widget/ImageView;Landroid/view/View;Lcom/waze/ifs/ui/ActivityBase;)V

    .line 160
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 161
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/PlacePhotoGallery$2;->this$0:Lcom/waze/reports/PlacePhotoGallery;

    #getter for: Lcom/waze/reports/PlacePhotoGallery;->mItemMargin:I
    invoke-static {v2}, Lcom/waze/reports/PlacePhotoGallery;->access$3(Lcom/waze/reports/PlacePhotoGallery;)I

    move-result v2

    if-lez v2, :cond_0

    .line 164
    const v2, 0x7f09010b

    invoke-virtual {v13, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 165
    .local v11, frame:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/RelativeLayout$LayoutParams;

    .line 166
    .local v18, p:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/PlacePhotoGallery$2;->this$0:Lcom/waze/reports/PlacePhotoGallery;

    #getter for: Lcom/waze/reports/PlacePhotoGallery;->mItemMargin:I
    invoke-static {v2}, Lcom/waze/reports/PlacePhotoGallery;->access$3(Lcom/waze/reports/PlacePhotoGallery;)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/waze/reports/PlacePhotoGallery$2;->this$0:Lcom/waze/reports/PlacePhotoGallery;

    #getter for: Lcom/waze/reports/PlacePhotoGallery;->mItemMargin:I
    invoke-static {v4}, Lcom/waze/reports/PlacePhotoGallery;->access$3(Lcom/waze/reports/PlacePhotoGallery;)I

    move-result v4

    const/4 v7, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 167
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    new-instance v2, Lcom/waze/reports/PlacePhotoGallery$2$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/waze/reports/PlacePhotoGallery$2$1;-><init>(Lcom/waze/reports/PlacePhotoGallery$2;)V

    invoke-virtual {v11, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    const v2, 0x7f090528

    invoke-virtual {v13, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/waze/reports/PlacePhotoGallery$2$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/waze/reports/PlacePhotoGallery$2$2;-><init>(Lcom/waze/reports/PlacePhotoGallery$2;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    .end local v11           #frame:Landroid/view/View;
    .end local v18           #p:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    const v2, 0x7f09052c

    invoke-virtual {v13, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/waze/view/text/WazeTextView;

    .line 184
    .local v8, byView:Lcom/waze/view/text/WazeTextView;
    const v2, 0x7f09052b

    invoke-virtual {v13, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 185
    .local v16, moodView:Landroid/widget/ImageView;
    const v2, 0x7f09052e

    invoke-virtual {v13, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 186
    .local v19, sepView:Landroid/view/View;
    const v2, 0x7f09052f

    invoke-virtual {v13, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    .line 187
    .local v14, likeView:Landroid/widget/ImageButton;
    const v2, 0x7f09052d

    invoke-virtual {v13, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    .line 189
    .local v10, flagView:Landroid/widget/ImageButton;
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->didLike:Z

    if-eqz v2, :cond_4

    .line 190
    const v2, 0x7f0202aa

    invoke-virtual {v14, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 195
    :goto_1
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->submitter:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 196
    .local v17, nick:Ljava/lang/String;
    move-object/from16 v0, v20

    iget-object v15, v0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->mood:Ljava/lang/String;

    .line 198
    .local v15, mood:Ljava/lang/String;
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->isUploading:Z

    if-eqz v2, :cond_5

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/PlacePhotoGallery$2;->this$0:Lcom/waze/reports/PlacePhotoGallery;

    #getter for: Lcom/waze/reports/PlacePhotoGallery;->mNm:Lcom/waze/NativeManager;
    invoke-static {v2}, Lcom/waze/reports/PlacePhotoGallery;->access$4(Lcom/waze/reports/PlacePhotoGallery;)Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_UPLOADING_DATA___:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v17

    .line 204
    :cond_1
    :goto_2
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/waze/reports/PhotoPagerSection$VenueImage;->canDelete:Z

    if-nez v2, :cond_2

    if-eqz v12, :cond_8

    .line 205
    :cond_2
    if-eqz v12, :cond_6

    .end local v17           #nick:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    const/16 v2, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 208
    const/16 v2, 0x8

    invoke-virtual {v14, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 210
    if-eqz v12, :cond_7

    .line 211
    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 267
    :goto_4
    return-object v13

    .line 153
    .end local v5           #image:Landroid/widget/ImageView;
    .end local v8           #byView:Lcom/waze/view/text/WazeTextView;
    .end local v10           #flagView:Landroid/widget/ImageButton;
    .end local v12           #isFile:Z
    .end local v14           #likeView:Landroid/widget/ImageButton;
    .end local v15           #mood:Ljava/lang/String;
    .end local v16           #moodView:Landroid/widget/ImageView;
    .end local v19           #sepView:Landroid/view/View;
    :cond_3
    invoke-virtual {v6}, Lcom/waze/view/map/ProgressAnimation;->start()V

    goto/16 :goto_0

    .line 192
    .restart local v5       #image:Landroid/widget/ImageView;
    .restart local v8       #byView:Lcom/waze/view/text/WazeTextView;
    .restart local v10       #flagView:Landroid/widget/ImageButton;
    .restart local v12       #isFile:Z
    .restart local v14       #likeView:Landroid/widget/ImageButton;
    .restart local v16       #moodView:Landroid/widget/ImageView;
    .restart local v19       #sepView:Landroid/view/View;
    :cond_4
    const v2, 0x7f0202a9

    invoke-virtual {v14, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 200
    .restart local v15       #mood:Ljava/lang/String;
    .restart local v17       #nick:Ljava/lang/String;
    :cond_5
    if-eqz v17, :cond_1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/PlacePhotoGallery$2;->this$0:Lcom/waze/reports/PlacePhotoGallery;

    #getter for: Lcom/waze/reports/PlacePhotoGallery;->mNm:Lcom/waze/NativeManager;
    invoke-static {v2}, Lcom/waze/reports/PlacePhotoGallery;->access$4(Lcom/waze/reports/PlacePhotoGallery;)Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_PHOTO_BY_PS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v17, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto :goto_2

    .line 205
    :cond_6
    const-string v17, ""

    goto :goto_3

    .line 214
    .end local v17           #nick:Ljava/lang/String;
    :cond_7
    const v2, 0x7f0202a5

    invoke-virtual {v10, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 216
    new-instance v2, Lcom/waze/reports/PlacePhotoGallery$2$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v2, v0, v1}, Lcom/waze/reports/PlacePhotoGallery$2$3;-><init>(Lcom/waze/reports/PlacePhotoGallery$2;Lcom/waze/reports/PhotoPagerSection$VenueImage;)V

    invoke-virtual {v10, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 227
    .restart local v17       #nick:Ljava/lang/String;
    :cond_8
    new-instance v2, Lcom/waze/reports/PlacePhotoGallery$2$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v2, v0, v1, v14}, Lcom/waze/reports/PlacePhotoGallery$2$4;-><init>(Lcom/waze/reports/PlacePhotoGallery$2;Lcom/waze/reports/PhotoPagerSection$VenueImage;Landroid/widget/ImageButton;)V

    invoke-virtual {v14, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    new-instance v2, Lcom/waze/reports/PlacePhotoGallery$2$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v2, v0, v1}, Lcom/waze/reports/PlacePhotoGallery$2$5;-><init>(Lcom/waze/reports/PlacePhotoGallery$2;Lcom/waze/reports/PhotoPagerSection$VenueImage;)V

    invoke-virtual {v10, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    if-eqz v17, :cond_9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 255
    :cond_9
    const-string v2, ""

    invoke-virtual {v8, v2}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    :goto_5
    if-eqz v15, :cond_a

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 261
    :cond_a
    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 257
    :cond_b
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 263
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/reports/PlacePhotoGallery$2;->this$0:Lcom/waze/reports/PlacePhotoGallery;

    #getter for: Lcom/waze/reports/PlacePhotoGallery;->mActivity:Lcom/waze/ifs/ui/ActivityBase;
    invoke-static {v2}, Lcom/waze/reports/PlacePhotoGallery;->access$2(Lcom/waze/reports/PlacePhotoGallery;)Lcom/waze/ifs/ui/ActivityBase;

    move-result-object v2

    invoke-static {v2, v15}, Lcom/waze/MoodManager;->getMoodDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 264
    .local v9, drawable:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 118
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
