.class public final Lcom/waze/navigate/AddFavoriteActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "AddFavoriteActivity.java"


# static fields
.field protected static final HINT_SIZE:F = 14.0f

.field protected static final TEXT_SIZE:F = 16.0f


# instance fields
.field private managerX:Lcom/waze/animation/easing/AnimationEasingManager;

.field private managerY:Lcom/waze/animation/easing/AnimationEasingManager;

.field private nativeManager:Lcom/waze/NativeManager;

.field searchBox:Landroid/widget/EditText;

.field type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/AddFavoriteActivity;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/waze/navigate/AddFavoriteActivity;->nativeManager:Lcom/waze/NativeManager;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 259
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AddFavorite onActRes requestCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 260
    const-string v3, " Intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/16 v1, 0x4d2

    if-ne p1, v1, :cond_1

    .line 262
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 263
    const-string v1, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 264
    .local v0, matches:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 265
    iget-object v2, p0, Lcom/waze/navigate/AddFavoriteActivity;->searchBox:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 272
    .end local v0           #matches:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    if-eqz p2, :cond_0

    .line 269
    invoke-virtual {p0, p2}, Lcom/waze/navigate/AddFavoriteActivity;->setResult(I)V

    .line 270
    invoke-virtual {p0}, Lcom/waze/navigate/AddFavoriteActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super/range {p0 .. p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/waze/navigate/AddFavoriteActivity;->requestWindowFeature(I)Z

    .line 62
    const v11, 0x7f030004

    invoke-virtual {p0, v11}, Lcom/waze/navigate/AddFavoriteActivity;->setContentView(I)V

    .line 63
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v11

    iput-object v11, p0, Lcom/waze/navigate/AddFavoriteActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 64
    const v11, 0x7f090058

    invoke-virtual {p0, v11}, Lcom/waze/navigate/AddFavoriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/waze/view/title/TitleBar;

    .line 65
    iget-object v12, p0, Lcom/waze/navigate/AddFavoriteActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v13, Lcom/waze/strings/DisplayStrings;->DS_ADD_FAVORITE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v12, v13}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v12

    .line 64
    invoke-virtual {v11, p0, v12}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 66
    const v11, 0x7f090061

    invoke-virtual {p0, v11}, Lcom/waze/navigate/AddFavoriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    iput-object v11, p0, Lcom/waze/navigate/AddFavoriteActivity;->searchBox:Landroid/widget/EditText;

    .line 67
    iget-object v11, p0, Lcom/waze/navigate/AddFavoriteActivity;->searchBox:Landroid/widget/EditText;

    .line 68
    iget-object v12, p0, Lcom/waze/navigate/AddFavoriteActivity;->searchBox:Landroid/widget/EditText;

    const/4 v13, 0x0

    invoke-static {p0, v12, v13}, Lcom/waze/utils/EditTextUtils;->getKeyboardLockOnTouchListener(Landroid/content/Context;Landroid/widget/EditText;Lcom/waze/utils/EditTextUtils$OnTouchListenerDoneListener;)Landroid/view/View$OnTouchListener;

    move-result-object v12

    .line 67
    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 69
    iget-object v11, p0, Lcom/waze/navigate/AddFavoriteActivity;->searchBox:Landroid/widget/EditText;

    iget-object v12, p0, Lcom/waze/navigate/AddFavoriteActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 70
    sget-object v13, Lcom/waze/strings/DisplayStrings;->DS_SEARCH_ADDRESS__PLACE_OR_CONTACT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v12, v13}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v12

    .line 69
    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 71
    const v11, 0x7f090063

    invoke-virtual {p0, v11}, Lcom/waze/navigate/AddFavoriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 72
    new-instance v12, Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/waze/navigate/AddFavoriteActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 73
    sget-object v14, Lcom/waze/strings/DisplayStrings;->DS_WAZE_IS_BEST_USED_FOR_COMMUTING_:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v13, v14}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    const-string v13, "\n\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 75
    iget-object v13, p0, Lcom/waze/navigate/AddFavoriteActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 76
    sget-object v14, Lcom/waze/strings/DisplayStrings;->DS_ONCE_YOU_ADD_SHOMES_AND_SWORKS_TO_YOUR_FAVORITES_WAZESLL_LEARN_YOUR_PREFERRED_ROUTES_AND_DEPARTURE_TIMES_TO_THESE_DESTINATIONS_:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v13, v14}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v13

    .line 75
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 77
    const-string v13, "\n\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 78
    iget-object v13, p0, Lcom/waze/navigate/AddFavoriteActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 79
    sget-object v14, Lcom/waze/strings/DisplayStrings;->DS_ENTER_THE_ADDRESS_AND_SELECT_THE_CORRECT_RESULT_:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v13, v14}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v13

    .line 78
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 80
    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 72
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const v11, 0x7f09005b

    invoke-virtual {p0, v11}, Lcom/waze/navigate/AddFavoriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iget-object v12, p0, Lcom/waze/navigate/AddFavoriteActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 83
    sget-object v13, Lcom/waze/strings/DisplayStrings;->DS_LOCATION_NOT_YET_VERIFIED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v12, v13}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v12

    .line 82
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const v11, 0x7f09005a

    invoke-virtual {p0, v11}, Lcom/waze/navigate/AddFavoriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 86
    .local v2, grid:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 87
    .local v4, p:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/waze/navigate/AddFavoriteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit16 v11, v11, 0x190

    iput v11, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 88
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    new-instance v7, Lcom/waze/navigate/AddFavoriteActivity$1;

    invoke-direct {v7, p0, v2}, Lcom/waze/navigate/AddFavoriteActivity$1;-><init>(Lcom/waze/navigate/AddFavoriteActivity;Landroid/view/View;)V

    .line 98
    .local v7, search:Landroid/view/animation/Animation;
    const-wide/32 v11, 0x186a0

    invoke-virtual {v7, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 99
    new-instance v11, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v11}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v11}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 100
    const/4 v11, -0x1

    invoke-virtual {v7, v11}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 101
    const/4 v11, 0x2

    invoke-virtual {v7, v11}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 102
    invoke-virtual {v2, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 104
    invoke-virtual {p0}, Lcom/waze/navigate/AddFavoriteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "AddressType"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, p0, Lcom/waze/navigate/AddFavoriteActivity;->type:Ljava/lang/Integer;

    .line 105
    const v11, 0x7f090065

    invoke-virtual {p0, v11}, Lcom/waze/navigate/AddFavoriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 106
    const v11, 0x7f090064

    invoke-virtual {p0, v11}, Lcom/waze/navigate/AddFavoriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 109
    const v11, 0x7f09005d

    invoke-virtual {p0, v11}, Lcom/waze/navigate/AddFavoriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 111
    .local v3, logoImg:Landroid/widget/ImageView;
    iget-object v11, p0, Lcom/waze/navigate/AddFavoriteActivity;->type:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    .line 184
    :goto_0
    iget-object v11, p0, Lcom/waze/navigate/AddFavoriteActivity;->searchBox:Landroid/widget/EditText;

    new-instance v12, Lcom/waze/navigate/AddFavoriteActivity$3;

    invoke-direct {v12, p0}, Lcom/waze/navigate/AddFavoriteActivity$3;-><init>(Lcom/waze/navigate/AddFavoriteActivity;)V

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 197
    iget-object v11, p0, Lcom/waze/navigate/AddFavoriteActivity;->searchBox:Landroid/widget/EditText;

    new-instance v12, Lcom/waze/navigate/AddFavoriteActivity$4;

    invoke-direct {v12, p0}, Lcom/waze/navigate/AddFavoriteActivity$4;-><init>(Lcom/waze/navigate/AddFavoriteActivity;)V

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 214
    const v11, 0x7f090062

    invoke-virtual {p0, v11}, Lcom/waze/navigate/AddFavoriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    .line 216
    .local v9, speakButton:Landroid/widget/ImageButton;
    invoke-virtual {p0}, Lcom/waze/navigate/AddFavoriteActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 217
    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x0

    .line 216
    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 218
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_0

    .line 219
    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 221
    :cond_0
    return-void

    .line 113
    .end local v0           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9           #speakButton:Landroid/widget/ImageButton;
    :sswitch_0
    const v11, 0x7f020194

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    const v11, 0x7f09005e

    invoke-virtual {p0, v11}, Lcom/waze/navigate/AddFavoriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/waze/view/text/WazeTextView;

    iget-object v12, p0, Lcom/waze/navigate/AddFavoriteActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 115
    sget-object v13, Lcom/waze/strings/DisplayStrings;->DS_MY_HOME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v12, v13}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v12

    .line 114
    invoke-virtual {v11, v12}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 118
    :sswitch_1
    const v11, 0x7f02046a

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    const v11, 0x7f09005e

    invoke-virtual {p0, v11}, Lcom/waze/navigate/AddFavoriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/waze/view/text/WazeTextView;

    iget-object v12, p0, Lcom/waze/navigate/AddFavoriteActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 120
    sget-object v13, Lcom/waze/strings/DisplayStrings;->DS_MY_WORK:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v12, v13}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v12

    .line 119
    invoke-virtual {v11, v12}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 123
    :sswitch_2
    const v11, 0x7f0203cd

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    const v11, 0x7f090063

    invoke-virtual {p0, v11}, Lcom/waze/navigate/AddFavoriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 125
    const v11, 0x7f09005e

    invoke-virtual {p0, v11}, Lcom/waze/navigate/AddFavoriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/waze/view/text/WazeTextView;

    iget-object v12, p0, Lcom/waze/navigate/AddFavoriteActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 126
    sget-object v13, Lcom/waze/strings/DisplayStrings;->DS_ADD_FAVORITE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v12, v13}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v12

    .line 125
    invoke-virtual {v11, v12}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 129
    :sswitch_3
    const v11, 0x7f02009f

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    invoke-virtual {p0}, Lcom/waze/navigate/AddFavoriteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "SearchStr"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 132
    .local v8, searchTxt:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/waze/navigate/AddFavoriteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "AddressItem"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/waze/navigate/AddressItem;

    .line 134
    .local v1, addessItem:Lcom/waze/navigate/AddressItem;
    if-eqz v8, :cond_1

    .line 135
    iget-object v11, p0, Lcom/waze/navigate/AddFavoriteActivity;->searchBox:Landroid/widget/EditText;

    invoke-virtual {v11, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v11, p0, Lcom/waze/navigate/AddFavoriteActivity;->searchBox:Landroid/widget/EditText;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setSelection(I)V

    .line 139
    :cond_1
    const v11, 0x7f090058

    invoke-virtual {p0, v11}, Lcom/waze/navigate/AddFavoriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/waze/view/title/TitleBar;

    .line 140
    iget-object v12, p0, Lcom/waze/navigate/AddFavoriteActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v13, Lcom/waze/strings/DisplayStrings;->DS_VERIFY_ADDRESS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v12, v13}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v12

    .line 139
    invoke-virtual {v11, p0, v12}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 141
    const v11, 0x7f090063

    invoke-virtual {p0, v11}, Lcom/waze/navigate/AddFavoriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 142
    const v11, 0x7f09005e

    invoke-virtual {p0, v11}, Lcom/waze/navigate/AddFavoriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    const v11, 0x7f09005f

    invoke-virtual {p0, v11}, Lcom/waze/navigate/AddFavoriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 145
    .local v5, pleaseVerify:Landroid/widget/TextView;
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget-object v11, p0, Lcom/waze/navigate/AddFavoriteActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 147
    sget-object v12, Lcom/waze/strings/DisplayStrings;->DS_TO_CONFIRM_OR_UPDATE_EVENT_LOCATION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v11, v12}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v11

    .line 146
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    const v11, 0x7f090064

    invoke-virtual {p0, v11}, Lcom/waze/navigate/AddFavoriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 151
    .local v10, textOr:Landroid/widget/TextView;
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v11, p0, Lcom/waze/navigate/AddFavoriteActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v12, Lcom/waze/strings/DisplayStrings;->DS_OR:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v11, v12}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    const v11, 0x7f090065

    invoke-virtual {p0, v11}, Lcom/waze/navigate/AddFavoriteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 155
    .local v6, removeCal:Landroid/widget/TextView;
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    invoke-virtual {v6}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v11

    or-int/lit8 v11, v11, 0x8

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 157
    const/high16 v11, -0x1

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    iget-object v11, p0, Lcom/waze/navigate/AddFavoriteActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v12, Lcom/waze/strings/DisplayStrings;->DS_REMOVE_THIS_EVENT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v11, v12}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    new-instance v11, Lcom/waze/navigate/AddFavoriteActivity$2;

    invoke-direct {v11, p0, v1}, Lcom/waze/navigate/AddFavoriteActivity$2;-><init>(Lcom/waze/navigate/AddFavoriteActivity;Lcom/waze/navigate/AddressItem;)V

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 111
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x6 -> :sswitch_2
        0xb -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 241
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/waze/navigate/AddFavoriteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 242
    .local v0, mgr:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/waze/navigate/AddFavoriteActivity;->searchBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 243
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onPause()V

    .line 245
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 225
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onResume()V

    .line 226
    iget-object v0, p0, Lcom/waze/navigate/AddFavoriteActivity;->type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 227
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/waze/navigate/AddFavoriteActivity$5;

    invoke-direct {v1, p0}, Lcom/waze/navigate/AddFavoriteActivity$5;-><init>(Lcom/waze/navigate/AddFavoriteActivity;)V

    .line 235
    const-wide/16 v2, 0x64

    .line 227
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 237
    :cond_0
    return-void
.end method

.method public searchClicked(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 275
    const-string v3, "WAZE"

    const-string v4, "Search pressed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/waze/navigate/SearchActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 277
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "SearchStr"

    iget-object v4, p0, Lcom/waze/navigate/AddFavoriteActivity;->searchBox:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const/4 v2, 0x0

    .line 279
    .local v2, t:I
    iget-object v3, p0, Lcom/waze/navigate/AddFavoriteActivity;->type:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 299
    :goto_0
    const-string v3, "SearchMode"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 300
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/waze/navigate/AddFavoriteActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 301
    return-void

    .line 281
    :sswitch_0
    const/4 v2, 0x3

    .line 282
    goto :goto_0

    .line 284
    :sswitch_1
    const/4 v2, 0x4

    .line 285
    goto :goto_0

    .line 287
    :sswitch_2
    const/4 v2, 0x1

    .line 288
    goto :goto_0

    .line 291
    :sswitch_3
    invoke-virtual {p0}, Lcom/waze/navigate/AddFavoriteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "AddressItem"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/waze/navigate/AddressItem;

    .line 292
    .local v0, addessItem:Lcom/waze/navigate/AddressItem;
    const-string v3, "CALENDAR_EVENT_SEARCH"

    const-string v4, "ID|VALUE"

    .line 293
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->getMeetingId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/waze/navigate/AddFavoriteActivity;->searchBox:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 292
    invoke-static {v3, v4, v5}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const/16 v2, 0x9

    .line 295
    const-string v3, "AddressItem"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 279
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x6 -> :sswitch_2
        0xb -> :sswitch_3
    .end sparse-switch
.end method

.method public speechRecognitionClicked(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 250
    const-string v1, "WAZE"

    const-string v2, "SR pressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    .line 253
    const-string v2, "free_form"

    .line 252
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const/16 v1, 0x4d2

    invoke-virtual {p0, v0, v1}, Lcom/waze/navigate/AddFavoriteActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 255
    return-void
.end method
