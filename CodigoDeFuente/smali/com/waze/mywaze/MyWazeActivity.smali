.class public Lcom/waze/mywaze/MyWazeActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "MyWazeActivity.java"

# interfaces
.implements Lcom/waze/mywaze/MyWazeNativeManager$ISetUserUpdateResult;


# instance fields
.field private invisiblity:Lcom/waze/settings/SettingsSwitchView;

.field private mHandler:Landroid/os/Handler;

.field private mImageUrl:Ljava/lang/String;

.field private nativeManager:Lcom/waze/NativeManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 317
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/waze/mywaze/MyWazeActivity;->mHandler:Landroid/os/Handler;

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/mywaze/MyWazeActivity;->mImageUrl:Ljava/lang/String;

    .line 31
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/mywaze/MyWazeActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/waze/mywaze/MyWazeActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lcom/waze/mywaze/MyWazeActivity;->onOptionInvisible(Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/mywaze/MyWazeActivity;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 315
    iget-object v0, p0, Lcom/waze/mywaze/MyWazeActivity;->nativeManager:Lcom/waze/NativeManager;

    return-object v0
.end method

.method private onOptionInvisible(Z)V
    .locals 6
    .parameter "on"

    .prologue
    const v5, 0x7f090340

    const v4, 0x7f090338

    const/16 v3, 0x8

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 270
    if-eqz p1, :cond_2

    .line 271
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/waze/mywaze/MyWazeNativeManager;->setInvisible(Z)V

    .line 272
    invoke-virtual {p0, v5}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 273
    invoke-virtual {p0, v4}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 274
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/waze/LayoutManager;->setMenuButtonType(II)V

    .line 288
    :cond_0
    :goto_0
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/LayoutManager;->getMainMenu()Lcom/waze/menus/MainMenu;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 289
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/LayoutManager;->getMainMenu()Lcom/waze/menus/MainMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/menus/MainMenu;->refresh()V

    .line 291
    :cond_1
    return-void

    .line 279
    :cond_2
    invoke-virtual {p0, v5}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 280
    invoke-virtual {p0, v4}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 281
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/waze/mywaze/MyWazeNativeManager;->setInvisible(Z)V

    .line 282
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/MainActivity;->getLayoutMgr()Lcom/waze/LayoutManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/waze/LayoutManager;->setMenuButtonType(II)V

    goto :goto_0
.end method

.method private updateImage()V
    .locals 3

    .prologue
    .line 261
    const v1, 0x7f090343

    invoke-virtual {p0, v1}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 262
    .local v0, picture:Landroid/widget/ImageView;
    const v1, 0x7f0203a3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 264
    iget-object v1, p0, Lcom/waze/mywaze/MyWazeActivity;->mImageUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/waze/mywaze/MyWazeActivity;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 265
    sget-object v1, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    iget-object v2, p0, Lcom/waze/mywaze/MyWazeActivity;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p0}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/waze/ifs/ui/ActivityBase;)V

    .line 267
    :cond_0
    return-void
.end method


# virtual methods
.method public SetMoodInView()V
    .locals 4

    .prologue
    const v3, 0x7f09043c

    .line 304
    const v1, 0x7f090347

    invoke-virtual {p0, v1}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {}, Lcom/waze/MoodManager;->getInstance()Lcom/waze/MoodManager;

    move-result-object v2

    .line 305
    invoke-virtual {v2}, Lcom/waze/MoodManager;->getBigMoodDrawble()I

    move-result v2

    .line 304
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 307
    invoke-static {}, Lcom/waze/MoodManager;->getInstance()Lcom/waze/MoodManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/waze/MoodManager;->getBigAddonDrawble(Landroid/content/Context;)I

    move-result v0

    .line 308
    .local v0, addOnId:I
    if-nez v0, :cond_0

    .line 309
    invoke-virtual {p0, v3}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 313
    :goto_0
    return-void

    .line 311
    :cond_0
    invoke-virtual {p0, v3}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public SetMyWazeData(Lcom/waze/mywaze/MyWazeData;)V
    .locals 4
    .parameter "data"

    .prologue
    const/16 v3, 0x8

    const v2, 0x7f090345

    .line 229
    const v0, 0x7f0901bc

    invoke-virtual {p0, v0}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/waze/mywaze/MyWazeData;->mUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    const v0, 0x7f090042

    invoke-virtual {p0, v0}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/waze/mywaze/MyWazeData;->mJoinedStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-boolean v0, p1, Lcom/waze/mywaze/MyWazeData;->mFaceBookLoggedIn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/waze/mywaze/MyWazeData;->mContactsLoggedIn:Z

    if-eqz v0, :cond_2

    .line 235
    :cond_0
    iget-boolean v0, p1, Lcom/waze/mywaze/MyWazeData;->mFaceBookLoggedIn:Z

    if-eqz v0, :cond_1

    .line 237
    invoke-virtual {p0, v2}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/waze/mywaze/MyWazeData;->mFaceBookNickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    :goto_0
    iget-object v0, p1, Lcom/waze/mywaze/MyWazeData;->mImageUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/waze/mywaze/MyWazeActivity;->mImageUrl:Ljava/lang/String;

    .line 245
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeActivity;->updateImage()V

    .line 258
    :goto_1
    return-void

    .line 241
    :cond_1
    invoke-virtual {p0, v2}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 249
    :cond_2
    const v0, 0x7f090343

    invoke-virtual {p0, v0}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 250
    const v1, 0x7f0203a3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 252
    invoke-virtual {p0, v2}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public SetUserUpdateResult(Z)V
    .locals 1
    .parameter "bIsSuccess"

    .prologue
    .line 325
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getMyWazeData(Lcom/waze/ifs/ui/ActivityBase;)V

    .line 326
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    .line 210
    if-ne p2, v0, :cond_0

    .line 212
    invoke-virtual {p0, v0}, Lcom/waze/mywaze/MyWazeActivity;->setResult(I)V

    .line 213
    invoke-virtual {p0}, Lcom/waze/mywaze/MyWazeActivity;->finish()V

    .line 224
    :goto_0
    return-void

    .line 215
    :cond_0
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 217
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getMyWazeData(Lcom/waze/ifs/ui/ActivityBase;)V

    .line 218
    invoke-virtual {p0}, Lcom/waze/mywaze/MyWazeActivity;->SetMoodInView()V

    goto :goto_0

    .line 222
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const v3, 0x7f090340

    const v2, 0x7f090338

    const v6, 0x7f090448

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 36
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v1, 0x7f03008f

    invoke-virtual {p0, v1}, Lcom/waze/mywaze/MyWazeActivity;->setContentView(I)V

    .line 39
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/waze/mywaze/MyWazeNativeManager;->getMyWazeData(Lcom/waze/ifs/ui/ActivityBase;)V

    .line 41
    invoke-virtual {p0}, Lcom/waze/mywaze/MyWazeActivity;->SetMoodInView()V

    .line 43
    const v1, 0x7f09043d

    invoke-virtual {p0, v1}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/settings/SettingsSwitchView;

    iput-object v1, p0, Lcom/waze/mywaze/MyWazeActivity;->invisiblity:Lcom/waze/settings/SettingsSwitchView;

    .line 47
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->GetInvisible()Z

    move-result v0

    .line 48
    .local v0, on:Z
    iget-object v1, p0, Lcom/waze/mywaze/MyWazeActivity;->invisiblity:Lcom/waze/settings/SettingsSwitchView;

    invoke-virtual {v1, v0}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    .line 50
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0, v3}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 52
    invoke-virtual {p0, v2}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 74
    :goto_0
    iget-object v1, p0, Lcom/waze/mywaze/MyWazeActivity;->invisiblity:Lcom/waze/settings/SettingsSwitchView;

    iget-object v2, p0, Lcom/waze/mywaze/MyWazeActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_BECOME_INVISIBLE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/settings/SettingsSwitchView;->setText(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/waze/mywaze/MyWazeActivity;->invisiblity:Lcom/waze/settings/SettingsSwitchView;

    new-instance v2, Lcom/waze/mywaze/MyWazeActivity$2;

    invoke-direct {v2, p0}, Lcom/waze/mywaze/MyWazeActivity$2;-><init>(Lcom/waze/mywaze/MyWazeActivity;)V

    invoke-virtual {v1, v2}, Lcom/waze/settings/SettingsSwitchView;->setOnChecked(Lcom/waze/settings/SwitchCheckedCallback;)V

    .line 85
    const v1, 0x7f09033a

    invoke-virtual {p0, v1}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/waze/mywaze/MyWazeActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_INVISIBLE_FOR_THE_RIDE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const v1, 0x7f09033b

    invoke-virtual {p0, v1}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/waze/mywaze/MyWazeActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_YOU_ARE_SHOWN_AS_OFFLINE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    const v1, 0x7f09044c

    invoke-virtual {p0, v1}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/waze/mywaze/MyWazeActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_GO_TO_SETTINGS_EXPLANATION_TXT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const v1, 0x7f090447

    invoke-virtual {p0, v1}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/waze/mywaze/MyWazeActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_WAZE_GROUPS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const v1, 0x7f090337

    invoke-virtual {p0, v1}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/title/TitleBar;

    iget-object v2, p0, Lcom/waze/mywaze/MyWazeActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_MY_WAZE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 94
    const v1, 0x7f090443

    invoke-virtual {p0, v1}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/waze/mywaze/MyWazeActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_MY_MOOD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const v1, 0x7f090447

    invoke-virtual {p0, v1}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/waze/mywaze/MyWazeActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_WAZE_GROUPS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    const v1, 0x7f090445

    invoke-virtual {p0, v1}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/waze/mywaze/MyWazeActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_MY_SCOREBOARD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const v1, 0x7f090449

    invoke-virtual {p0, v1}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/waze/mywaze/MyWazeActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_MY_FRIENDS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const v1, 0x7f09044b

    invoke-virtual {p0, v1}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/waze/mywaze/MyWazeActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_VIEW_SETTINGS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    const v1, 0x7f090442

    invoke-virtual {p0, v1}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/waze/mywaze/MyWazeActivity$3;

    invoke-direct {v2, p0}, Lcom/waze/mywaze/MyWazeActivity$3;-><init>(Lcom/waze/mywaze/MyWazeActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->GroupsEnabledNTV()Z

    move-result v1

    if-nez v1, :cond_1

    .line 110
    const v1, 0x7f090446

    invoke-virtual {p0, v1}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :goto_1
    const v1, 0x7f090444

    invoke-virtual {p0, v1}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/waze/mywaze/MyWazeActivity$5;

    invoke-direct {v2, p0}, Lcom/waze/mywaze/MyWazeActivity$5;-><init>(Lcom/waze/mywaze/MyWazeActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->FacebookEnabledNTV()Z

    move-result v1

    if-nez v1, :cond_2

    .line 146
    invoke-virtual {p0, v6}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 159
    :goto_2
    const v1, 0x7f09044a

    invoke-virtual {p0, v1}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/waze/mywaze/MyWazeActivity$7;

    invoke-direct {v2, p0}, Lcom/waze/mywaze/MyWazeActivity$7;-><init>(Lcom/waze/mywaze/MyWazeActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    return-void

    .line 54
    :cond_0
    invoke-virtual {p0, v3}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 55
    invoke-virtual {p0, v2}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 56
    const v1, 0x7f090341

    invoke-virtual {p0, v1}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/waze/mywaze/MyWazeActivity$1;

    invoke-direct {v2, p0}, Lcom/waze/mywaze/MyWazeActivity$1;-><init>(Lcom/waze/mywaze/MyWazeActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 113
    :cond_1
    const v1, 0x7f090446

    invoke-virtual {p0, v1}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/waze/mywaze/MyWazeActivity$4;

    invoke-direct {v2, p0}, Lcom/waze/mywaze/MyWazeActivity$4;-><init>(Lcom/waze/mywaze/MyWazeActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 149
    :cond_2
    invoke-virtual {p0, v6}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 150
    invoke-virtual {p0, v6}, Lcom/waze/mywaze/MyWazeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/waze/mywaze/MyWazeActivity$6;

    invoke-direct {v2, p0}, Lcom/waze/mywaze/MyWazeActivity$6;-><init>(Lcom/waze/mywaze/MyWazeActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 205
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onDestroy()V

    .line 206
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 296
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onResume()V

    .line 297
    invoke-direct {p0}, Lcom/waze/mywaze/MyWazeActivity;->updateImage()V

    .line 298
    return-void
.end method
