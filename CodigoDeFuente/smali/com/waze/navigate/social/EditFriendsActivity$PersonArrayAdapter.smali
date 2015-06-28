.class Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "EditFriendsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/navigate/social/EditFriendsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/waze/user/PersonBase;",
        ">;"
    }
.end annotation


# instance fields
.field private _activity:Lcom/waze/ifs/ui/ActivityBase;

.field private _inflater:Landroid/view/LayoutInflater;

.field private _numToAddBack:I

.field private _numToRemove:I

.field final synthetic this$0:Lcom/waze/navigate/social/EditFriendsActivity;


# direct methods
.method public constructor <init>(Lcom/waze/navigate/social/EditFriendsActivity;Lcom/waze/ifs/ui/ActivityBase;Ljava/util/List;II)V
    .locals 1
    .parameter
    .parameter "a"
    .parameter
    .parameter "numToRemove"
    .parameter "numToAddBack"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/waze/ifs/ui/ActivityBase;",
            "Ljava/util/List",
            "<",
            "Lcom/waze/user/PersonBase;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Lcom/waze/user/PersonBase;>;"
    iput-object p1, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;->this$0:Lcom/waze/navigate/social/EditFriendsActivity;

    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 247
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Lcom/waze/ifs/ui/ActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;->_inflater:Landroid/view/LayoutInflater;

    .line 248
    iput-object p2, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;->_activity:Lcom/waze/ifs/ui/ActivityBase;

    .line 249
    iput p4, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;->_numToRemove:I

    .line 250
    iput p5, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;->_numToAddBack:I

    .line 251
    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;)Lcom/waze/navigate/social/EditFriendsActivity;
    .locals 1
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;->this$0:Lcom/waze/navigate/social/EditFriendsActivity;

    return-object v0
.end method

.method private makeFooter(Ljava/lang/String;)Landroid/view/View;
    .locals 6
    .parameter "text"

    .prologue
    .line 340
    new-instance v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;->_activity:Lcom/waze/ifs/ui/ActivityBase;

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 341
    .local v1, footer:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;->_activity:Lcom/waze/ifs/ui/ActivityBase;

    const v5, 0x7f060049

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 342
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v4, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;->_activity:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v4}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080043

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 344
    const/4 v4, 0x2

    const/high16 v5, 0x4160

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 345
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 346
    iget-object v4, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;->_activity:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v4}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    .line 347
    .local v0, density:F
    const/high16 v4, 0x4170

    mul-float/2addr v4, v0

    float-to-int v2, v4

    .line 348
    .local v2, hPad:I
    const/high16 v4, 0x40a0

    mul-float/2addr v4, v0

    float-to-int v3, v4

    .line 349
    .local v3, vPad:I
    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 350
    return-object v1
.end method

.method private makeHeader(Ljava/lang/String;)Landroid/view/View;
    .locals 6
    .parameter "text"

    .prologue
    const/4 v5, 0x0

    .line 330
    new-instance v1, Lcom/waze/settings/SettingsTitleText;

    iget-object v3, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;->_activity:Lcom/waze/ifs/ui/ActivityBase;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/waze/settings/SettingsTitleText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 331
    .local v1, header:Lcom/waze/settings/SettingsTitleText;
    invoke-virtual {v1, p1}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 332
    iget-object v3, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;->_activity:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v3}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080043

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/waze/settings/SettingsTitleText;->setBackgroundColor(I)V

    .line 333
    iget-object v3, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;->_activity:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v3}, Lcom/waze/ifs/ui/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    .line 334
    .local v0, density:F
    const/high16 v3, 0x40a0

    mul-float/2addr v3, v0

    float-to-int v2, v3

    .line 335
    .local v2, vPad:I
    invoke-virtual {v1, v5, v2, v5, v2}, Lcom/waze/settings/SettingsTitleText;->setPadding(IIII)V

    .line 336
    return-object v1
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 255
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    .line 256
    .local v0, count:I
    iget v1, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;->_numToAddBack:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v0, 0x3

    .line 257
    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    const v7, 0x7f09008a

    const v6, 0x7f090089

    .line 262
    const/4 v0, 0x0

    .line 263
    .local v0, bAddBackList:Z
    if-nez p1, :cond_0

    .line 264
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    .line 265
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_FRIENDS_SEE_EACH_OTHER:Lcom/waze/strings/DisplayStrings;

    .line 264
    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;->makeFooter(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 326
    :goto_0
    return-object v1

    .line 267
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 268
    iget v3, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;->_numToAddBack:I

    if-lez v3, :cond_3

    .line 270
    iget v3, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;->_numToRemove:I

    if-ne p1, v3, :cond_1

    iget v3, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;->_numToAddBack:I

    if-lez v3, :cond_1

    .line 271
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    .line 272
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_REMOVED_FRIENDS:Lcom/waze/strings/DisplayStrings;

    .line 271
    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;->makeHeader(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 274
    :cond_1
    iget v3, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;->_numToRemove:I

    if-le p1, v3, :cond_2

    .line 275
    const/4 v0, 0x1

    .line 276
    add-int/lit8 p1, p1, -0x1

    .line 278
    :cond_2
    iget v3, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;->_numToRemove:I

    iget v4, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;->_numToAddBack:I

    add-int/2addr v3, v4

    if-ne p1, v3, :cond_3

    .line 279
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    .line 280
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_ADD_BACK_FRIENDS:Lcom/waze/strings/DisplayStrings;

    .line 279
    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;->makeFooter(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 284
    :cond_3
    invoke-virtual {p0, p1}, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/waze/user/PersonBase;

    .line 288
    .local v2, p:Lcom/waze/user/PersonBase;
    if-eqz p2, :cond_4

    invoke-virtual {p0, p2}, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;->isHeader(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 289
    :cond_4
    iget-object v3, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;->_inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030008

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 294
    .local v1, friendLayout:Landroid/view/View;
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 297
    iget-object v3, p0, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;->_activity:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v2}, Lcom/waze/user/PersonBase;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/waze/user/PersonBase;->getImage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v1, v4, v5}, Lcom/waze/navigate/social/AddFriendsUtils;->setNameAndImage(Lcom/waze/ifs/ui/ActivityBase;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    if-eqz v0, :cond_6

    .line 301
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 302
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 303
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 304
    new-instance v4, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter$1;

    invoke-direct {v4, p0, v2}, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter$1;-><init>(Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;Lcom/waze/user/PersonBase;)V

    .line 303
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    :goto_2
    const v3, 0x7f09007f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 291
    .end local v1           #friendLayout:Landroid/view/View;
    :cond_5
    move-object v1, p2

    .restart local v1       #friendLayout:Landroid/view/View;
    goto :goto_1

    .line 312
    :cond_6
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 313
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 314
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 315
    new-instance v4, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter$2;

    invoke-direct {v4, p0, v2}, Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter$2;-><init>(Lcom/waze/navigate/social/EditFriendsActivity$PersonArrayAdapter;Lcom/waze/user/PersonBase;)V

    .line 314
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method isHeader(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 354
    instance-of v0, p1, Landroid/widget/TextView;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/waze/settings/SettingsTitleText;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
