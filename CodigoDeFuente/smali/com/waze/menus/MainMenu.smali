.class public Lcom/waze/menus/MainMenu;
.super Landroid/app/Dialog;
.source "MainMenu.java"


# instance fields
.field private alertsManager:Lcom/waze/rtalerts/RTAlertsNativeManager;

.field private animationListener:Landroid/view/animation/Animation$AnimationListener;

.field private disableAnimation:Z

.field private isNavigating:Z

.field public volatile isVisible:Z

.field private layoutManager:Lcom/waze/LayoutManager;

.field private mDisplayOptions:[Ljava/lang/String;

.field private final mInboxDataListener:Lcom/waze/inbox/InboxNativeManager$InboxDataListener;

.field private mOrientation:I

.field private mainLayout:Landroid/view/View;

.field private menuButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private menuMood:Landroid/widget/ImageView;

.field private menuMuteImage:Landroid/widget/ImageButton;

.field private moodManager:Lcom/waze/MoodManager;

.field private nativeManager:Lcom/waze/NativeManager;

.field protected shouldDisplayTip:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/waze/LayoutManager;)V
    .locals 5
    .parameter "context"
    .parameter "layoutManager"

    .prologue
    const/4 v2, 0x0

    .line 135
    const v1, 0x7f06000f

    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 51
    iput-boolean v2, p0, Lcom/waze/menus/MainMenu;->isVisible:Z

    .line 58
    iput-boolean v2, p0, Lcom/waze/menus/MainMenu;->disableAnimation:Z

    .line 63
    iput-boolean v2, p0, Lcom/waze/menus/MainMenu;->shouldDisplayTip:Z

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waze/menus/MainMenu;->menuButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 66
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/waze/menus/MainMenu;->mDisplayOptions:[Ljava/lang/String;

    .line 68
    const/4 v1, 0x1

    iput v1, p0, Lcom/waze/menus/MainMenu;->mOrientation:I

    .line 487
    new-instance v1, Lcom/waze/menus/MainMenu$1;

    invoke-direct {v1, p0}, Lcom/waze/menus/MainMenu$1;-><init>(Lcom/waze/menus/MainMenu;)V

    iput-object v1, p0, Lcom/waze/menus/MainMenu;->mInboxDataListener:Lcom/waze/inbox/InboxNativeManager$InboxDataListener;

    .line 136
    iput-object p2, p0, Lcom/waze/menus/MainMenu;->layoutManager:Lcom/waze/LayoutManager;

    .line 137
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/menus/MainMenu;->nativeManager:Lcom/waze/NativeManager;

    .line 138
    invoke-static {}, Lcom/waze/MoodManager;->getInstance()Lcom/waze/MoodManager;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/menus/MainMenu;->moodManager:Lcom/waze/MoodManager;

    .line 139
    invoke-static {}, Lcom/waze/rtalerts/RTAlertsNativeManager;->getInstance()Lcom/waze/rtalerts/RTAlertsNativeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/menus/MainMenu;->alertsManager:Lcom/waze/rtalerts/RTAlertsNativeManager;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v0, configItems:Ljava/util/List;,"Ljava/util/List<Lcom/waze/ConfigItem;>;"
    new-instance v1, Lcom/waze/ConfigItem;

    const-string v2, "Tip"

    const-string v3, "Second page shown"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/waze/ConfigItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-static {}, Lcom/waze/ConfigManager;->getInstance()Lcom/waze/ConfigManager;

    move-result-object v1

    new-instance v2, Lcom/waze/menus/MainMenu$4;

    invoke-direct {v2, p0}, Lcom/waze/menus/MainMenu$4;-><init>(Lcom/waze/menus/MainMenu;)V

    .line 150
    const-string v3, ""

    .line 142
    invoke-virtual {v1, v2, v0, v3}, Lcom/waze/ConfigManager;->getConfig(Lcom/waze/ConfigManager$IConfigUpdater;Ljava/util/List;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0}, Lcom/waze/menus/MainMenu;->initLayout()V

    .line 153
    return-void
.end method

.method static synthetic access$0(Lcom/waze/menus/MainMenu;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 522
    invoke-direct {p0, p1}, Lcom/waze/menus/MainMenu;->setInboxBadge(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/menus/MainMenu;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/waze/menus/MainMenu;->mDisplayOptions:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/menus/MainMenu;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/waze/menus/MainMenu;->nativeManager:Lcom/waze/NativeManager;

    return-object v0
.end method

.method static synthetic access$3(Lcom/waze/menus/MainMenu;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 383
    invoke-direct {p0, p1, p2}, Lcom/waze/menus/MainMenu;->updateMuteImage(ZI)V

    return-void
.end method

.method static synthetic access$4(Lcom/waze/menus/MainMenu;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/waze/menus/MainMenu;->mainLayout:Landroid/view/View;

    return-object v0
.end method

.method private initDynamic()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 371
    invoke-direct {p0}, Lcom/waze/menus/MainMenu;->updateMood()V

    .line 372
    invoke-direct {p0, v2}, Lcom/waze/menus/MainMenu;->setInboxButtonDynamic(Z)V

    .line 373
    const v1, 0x7f0903c7

    invoke-virtual {p0, v1}, Lcom/waze/menus/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 375
    .local v0, mainStopFollowButton:Landroid/view/View;
    iget-object v1, p0, Lcom/waze/menus/MainMenu;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v1}, Lcom/waze/NativeManager;->isFollowActiveNTV()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 377
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private initLayout()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 73
    iget-object v0, p0, Lcom/waze/menus/MainMenu;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v0}, Lcom/waze/NativeManager;->isNavigatingNTV()Z

    move-result v0

    iput-boolean v0, p0, Lcom/waze/menus/MainMenu;->isNavigating:Z

    .line 74
    iget-boolean v0, p0, Lcom/waze/menus/MainMenu;->isNavigating:Z

    if-eqz v0, :cond_2

    .line 75
    const v0, 0x7f03007e

    invoke-virtual {p0, v0}, Lcom/waze/menus/MainMenu;->setContentView(I)V

    .line 80
    :goto_0
    invoke-static {}, Lcom/waze/MapView;->gpuSupported()I

    move-result v0

    sget v1, Lcom/waze/MapView;->GPU_NOT_SUPPORTED:I

    if-ne v0, v1, :cond_0

    .line 82
    iput-boolean v3, p0, Lcom/waze/menus/MainMenu;->disableAnimation:Z

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/waze/menus/MainMenu;->menuButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/waze/menus/MainMenu;->menuButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/waze/menus/MainMenu;->setMenuButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    :cond_1
    const v0, 0x7f0903c2

    invoke-virtual {p0, v0}, Lcom/waze/menus/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/menus/MainMenu$2;

    invoke-direct {v1, p0}, Lcom/waze/menus/MainMenu$2;-><init>(Lcom/waze/menus/MainMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/waze/menus/MainMenu;->mDisplayOptions:[Ljava/lang/String;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SOUNDS_ON:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 98
    iget-object v0, p0, Lcom/waze/menus/MainMenu;->mDisplayOptions:[Ljava/lang/String;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ALERTS_ONLY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 99
    iget-object v0, p0, Lcom/waze/menus/MainMenu;->mDisplayOptions:[Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_SOUNDS_OFF:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 101
    const v0, 0x7f0903c4

    invoke-virtual {p0, v0}, Lcom/waze/menus/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/menus/MainMenu;->mainLayout:Landroid/view/View;

    .line 102
    invoke-virtual {p0}, Lcom/waze/menus/MainMenu;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setLayout(II)V

    .line 103
    invoke-direct {p0}, Lcom/waze/menus/MainMenu;->initStaticFull()V

    .line 104
    const v0, 0x7f0903dd

    invoke-virtual {p0, v0}, Lcom/waze/menus/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/menus/MainMenu$3;

    invoke-direct {v1, p0}, Lcom/waze/menus/MainMenu$3;-><init>(Lcom/waze/menus/MainMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/waze/menus/MainMenu;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v0}, Lcom/waze/NativeManager;->isNavigatingVoiceNTV()I

    move-result v0

    invoke-direct {p0, v5, v0}, Lcom/waze/menus/MainMenu;->updateMuteImage(ZI)V

    .line 132
    return-void

    .line 77
    :cond_2
    const v0, 0x7f03007c

    invoke-virtual {p0, v0}, Lcom/waze/menus/MainMenu;->setContentView(I)V

    goto :goto_0
.end method

.method private initStaticAll()V
    .locals 4

    .prologue
    .line 162
    iget-object v2, p0, Lcom/waze/menus/MainMenu;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v2}, Lcom/waze/NativeManager;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    const v2, 0x7f0903c6

    invoke-virtual {p0, v2}, Lcom/waze/menus/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 164
    .local v0, debugTitle:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 165
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 168
    :cond_0
    new-instance v2, Lcom/waze/menus/MainMenu$5;

    invoke-direct {v2, p0}, Lcom/waze/menus/MainMenu$5;-><init>(Lcom/waze/menus/MainMenu;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    .end local v0           #debugTitle:Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/waze/menus/MainMenu;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_MENU:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, menuTitle:Ljava/lang/String;
    const v2, 0x7f0903c9

    invoke-virtual {p0, v2}, Lcom/waze/menus/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    new-instance v2, Lcom/waze/menus/MainMenu$6;

    invoke-direct {v2, p0}, Lcom/waze/menus/MainMenu$6;-><init>(Lcom/waze/menus/MainMenu;)V

    iput-object v2, p0, Lcom/waze/menus/MainMenu;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 189
    const v2, 0x7f0903c5

    invoke-virtual {p0, v2}, Lcom/waze/menus/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/waze/menus/MainMenu$7;

    invoke-direct {v3, p0}, Lcom/waze/menus/MainMenu$7;-><init>(Lcom/waze/menus/MainMenu;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    return-void
.end method

.method private initStaticFull()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    .line 199
    invoke-direct {p0}, Lcom/waze/menus/MainMenu;->initStaticAll()V

    .line 200
    const v8, 0x7f0903c3

    invoke-virtual {p0, v8}, Lcom/waze/menus/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 201
    .local v0, mainMenuButton:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 203
    new-instance v8, Lcom/waze/menus/MainMenu$8;

    invoke-direct {v8, p0}, Lcom/waze/menus/MainMenu$8;-><init>(Lcom/waze/menus/MainMenu;)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    :cond_0
    iget-object v8, p0, Lcom/waze/menus/MainMenu;->nativeManager:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_NAVIGATE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, navigateTitle:Ljava/lang/String;
    const v8, 0x7f0903cd

    invoke-virtual {p0, v8}, Lcom/waze/menus/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v8, p0, Lcom/waze/menus/MainMenu;->nativeManager:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_MY_WAZE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, myWazeTitle:Ljava/lang/String;
    const v8, 0x7f0903da

    invoke-virtual {p0, v8}, Lcom/waze/menus/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v8, p0, Lcom/waze/menus/MainMenu;->nativeManager:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_MAIN_MENU_SEND:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v5

    .line 214
    .local v5, shareTitle:Ljava/lang/String;
    const v8, 0x7f0903d0

    invoke-virtual {p0, v8}, Lcom/waze/menus/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    const v8, 0x7f0903d1

    invoke-virtual {p0, v8}, Lcom/waze/menus/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 218
    const v8, 0x7f0903d9

    invoke-virtual {p0, v8}, Lcom/waze/menus/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/waze/menus/MainMenu;->menuMood:Landroid/widget/ImageView;

    .line 220
    iget-boolean v8, p0, Lcom/waze/menus/MainMenu;->isNavigating:Z

    if-eqz v8, :cond_2

    .line 221
    iget-object v8, p0, Lcom/waze/menus/MainMenu;->nativeManager:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_STOP_NAV:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    .line 222
    .local v6, stopNavTitle:Ljava/lang/String;
    iget v8, p0, Lcom/waze/menus/MainMenu;->mOrientation:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 223
    iget-object v8, p0, Lcom/waze/menus/MainMenu;->nativeManager:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_STOP_NAVIGATION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    .line 225
    :cond_1
    const v8, 0x7f0903e3

    invoke-virtual {p0, v8}, Lcom/waze/menus/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v8, p0, Lcom/waze/menus/MainMenu;->nativeManager:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_ROUTES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, routesTitle:Ljava/lang/String;
    const v8, 0x7f0903e7

    invoke-virtual {p0, v8}, Lcom/waze/menus/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v8, p0, Lcom/waze/menus/MainMenu;->nativeManager:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_MAIN_MENU_SEND_ETA:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    .line 229
    .local v4, shareDriveTitle:Ljava/lang/String;
    const v8, 0x7f0903e5

    invoke-virtual {p0, v8}, Lcom/waze/menus/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    const v8, 0x7f0903e2

    invoke-virtual {p0, v8}, Lcom/waze/menus/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/waze/menus/MainMenu$9;

    invoke-direct {v9, p0}, Lcom/waze/menus/MainMenu$9;-><init>(Lcom/waze/menus/MainMenu;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    const v8, 0x7f0903e6

    invoke-virtual {p0, v8}, Lcom/waze/menus/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/waze/menus/MainMenu$10;

    invoke-direct {v9, p0}, Lcom/waze/menus/MainMenu$10;-><init>(Lcom/waze/menus/MainMenu;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    const v8, 0x7f0903e4

    invoke-virtual {p0, v8}, Lcom/waze/menus/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/waze/menus/MainMenu$11;

    invoke-direct {v9, p0}, Lcom/waze/menus/MainMenu$11;-><init>(Lcom/waze/menus/MainMenu;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    .end local v3           #routesTitle:Ljava/lang/String;
    .end local v4           #shareDriveTitle:Ljava/lang/String;
    .end local v6           #stopNavTitle:Ljava/lang/String;
    :cond_2
    const v8, 0x7f0903c8

    invoke-virtual {p0, v8}, Lcom/waze/menus/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 278
    .local v7, v:Landroid/view/View;
    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 280
    if-eqz v7, :cond_3

    .line 282
    new-instance v8, Lcom/waze/menus/MainMenu$12;

    invoke-direct {v8, p0}, Lcom/waze/menus/MainMenu$12;-><init>(Lcom/waze/menus/MainMenu;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    :cond_3
    const v8, 0x7f0903d8

    invoke-virtual {p0, v8}, Lcom/waze/menus/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/waze/menus/MainMenu$13;

    invoke-direct {v9, p0}, Lcom/waze/menus/MainMenu$13;-><init>(Lcom/waze/menus/MainMenu;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    const v8, 0x7f0903ce

    invoke-virtual {p0, v8}, Lcom/waze/menus/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/waze/menus/MainMenu$14;

    invoke-direct {v9, p0}, Lcom/waze/menus/MainMenu$14;-><init>(Lcom/waze/menus/MainMenu;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    const v8, 0x7f0903db

    invoke-virtual {p0, v8}, Lcom/waze/menus/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/waze/menus/MainMenu$15;

    invoke-direct {v9, p0}, Lcom/waze/menus/MainMenu$15;-><init>(Lcom/waze/menus/MainMenu;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    invoke-direct {p0}, Lcom/waze/menus/MainMenu;->setInboxButtonStatic()V

    .line 346
    const v8, 0x7f0903cc

    invoke-virtual {p0, v8}, Lcom/waze/menus/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/waze/menus/MainMenu$16;

    invoke-direct {v9, p0}, Lcom/waze/menus/MainMenu$16;-><init>(Lcom/waze/menus/MainMenu;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    const v8, 0x7f0903df

    invoke-virtual {p0, v8}, Lcom/waze/menus/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/waze/menus/MainMenu$17;

    invoke-direct {v9, p0}, Lcom/waze/menus/MainMenu$17;-><init>(Lcom/waze/menus/MainMenu;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    return-void
.end method

.method private setInboxBadge(I)V
    .locals 3
    .parameter "badge"

    .prologue
    .line 524
    const v2, 0x7f0903d5

    invoke-virtual {p0, v2}, Lcom/waze/menus/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 525
    .local v0, badgeContainer:Landroid/widget/RelativeLayout;
    const v2, 0x7f0903d7

    invoke-virtual {p0, v2}, Lcom/waze/menus/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 526
    .local v1, badgeText:Landroid/widget/TextView;
    if-lez p1, :cond_0

    .line 528
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 529
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    :goto_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 536
    return-void

    .line 533
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setInboxButtonDynamic(Z)V
    .locals 2
    .parameter "refresh"

    .prologue
    .line 503
    invoke-static {}, Lcom/waze/inbox/InboxNativeManager;->getInstance()Lcom/waze/inbox/InboxNativeManager;

    move-result-object v0

    .line 505
    .local v0, nm:Lcom/waze/inbox/InboxNativeManager;
    iget-object v1, p0, Lcom/waze/menus/MainMenu;->mInboxDataListener:Lcom/waze/inbox/InboxNativeManager$InboxDataListener;

    invoke-virtual {v0, v1}, Lcom/waze/inbox/InboxNativeManager;->addDataListener(Lcom/waze/inbox/InboxNativeManager$InboxDataListener;)V

    .line 508
    new-instance v1, Lcom/waze/menus/MainMenu$20;

    invoke-direct {v1, p0}, Lcom/waze/menus/MainMenu$20;-><init>(Lcom/waze/menus/MainMenu;)V

    invoke-virtual {v0, v1}, Lcom/waze/inbox/InboxNativeManager;->getInboxCounters(Lcom/waze/inbox/InboxNativeManager$InboxCountersHandler;)V

    .line 515
    if-eqz p1, :cond_0

    .line 518
    invoke-virtual {v0}, Lcom/waze/inbox/InboxNativeManager;->requestRefresh()V

    .line 520
    :cond_0
    return-void
.end method

.method private setInboxButtonStatic()V
    .locals 3

    .prologue
    .line 540
    const v1, 0x7f0903d4

    invoke-virtual {p0, v1}, Lcom/waze/menus/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 541
    .local v0, tv:Landroid/widget/TextView;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_INBOX:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    const v1, 0x7f0903d2

    invoke-virtual {p0, v1}, Lcom/waze/menus/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/waze/menus/MainMenu$21;

    invoke-direct {v2, p0}, Lcom/waze/menus/MainMenu$21;-><init>(Lcom/waze/menus/MainMenu;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 552
    return-void
.end method

.method private unsetInboxButtonDynamic()V
    .locals 2

    .prologue
    .line 497
    invoke-static {}, Lcom/waze/inbox/InboxNativeManager;->getInstance()Lcom/waze/inbox/InboxNativeManager;

    move-result-object v0

    .line 498
    .local v0, nm:Lcom/waze/inbox/InboxNativeManager;
    iget-object v1, p0, Lcom/waze/menus/MainMenu;->mInboxDataListener:Lcom/waze/inbox/InboxNativeManager$InboxDataListener;

    invoke-virtual {v0, v1}, Lcom/waze/inbox/InboxNativeManager;->removeDataListener(Lcom/waze/inbox/InboxNativeManager$InboxDataListener;)V

    .line 499
    return-void
.end method

.method private updateMood()V
    .locals 3

    .prologue
    .line 406
    iget-object v1, p0, Lcom/waze/menus/MainMenu;->menuMood:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 407
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->GetInvisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 409
    iget-object v1, p0, Lcom/waze/menus/MainMenu;->menuMood:Landroid/widget/ImageView;

    const v2, 0x7f020182

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    iget-object v1, p0, Lcom/waze/menus/MainMenu;->moodManager:Lcom/waze/MoodManager;

    invoke-virtual {v1}, Lcom/waze/MoodManager;->getWazerMood()Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, sMood:Ljava/lang/String;
    const-string v1, "-"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 415
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 416
    iget-object v1, p0, Lcom/waze/menus/MainMenu;->menuMood:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/waze/ResManager;->GetDrawableId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateMuteImage(ZI)V
    .locals 3
    .parameter "bShowMuteDialog"
    .parameter "nPosition"

    .prologue
    const v1, 0x7f0903de

    .line 386
    const v0, 0x7f0903dd

    invoke-virtual {p0, v0}, Lcom/waze/menus/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/waze/menus/MainMenu;->menuMuteImage:Landroid/widget/ImageButton;

    .line 387
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 388
    invoke-virtual {p0, v1}, Lcom/waze/menus/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/menus/MainMenu;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ALERTS_ONLY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v0, p0, Lcom/waze/menus/MainMenu;->menuMuteImage:Landroid/widget/ImageButton;

    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 399
    :goto_0
    if-eqz p1, :cond_0

    .line 401
    invoke-static {p2}, Lcom/waze/MsgBox;->OpenMutePopup(I)V

    .line 403
    :cond_0
    return-void

    .line 390
    :cond_1
    if-nez p2, :cond_2

    .line 391
    invoke-virtual {p0, v1}, Lcom/waze/menus/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/menus/MainMenu;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SOUNDS_ON:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v0, p0, Lcom/waze/menus/MainMenu;->menuMuteImage:Landroid/widget/ImageButton;

    const v1, 0x7f0203c2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 396
    :cond_2
    invoke-virtual {p0, v1}, Lcom/waze/menus/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/menus/MainMenu;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SOUNDS_OFF:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v0, p0, Lcom/waze/menus/MainMenu;->menuMuteImage:Landroid/widget/ImageButton;

    const v1, 0x7f0203c1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/waze/menus/MainMenu;->dismiss()V

    .line 158
    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    .line 159
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 443
    invoke-direct {p0}, Lcom/waze/menus/MainMenu;->unsetInboxButtonDynamic()V

    .line 444
    iget-boolean v0, p0, Lcom/waze/menus/MainMenu;->disableAnimation:Z

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {p0}, Lcom/waze/menus/MainMenu;->dismiss()V

    .line 449
    :goto_0
    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/waze/menus/MainMenu;->mainLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/waze/menus/MainMenu;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-static {v0, v1}, Lcom/waze/view/anim/AnimationUtils;->closeAnimateMenu(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/menus/MainMenu;->isVisible:Z

    .line 427
    iget-object v0, p0, Lcom/waze/menus/MainMenu;->layoutManager:Lcom/waze/LayoutManager;

    invoke-virtual {v0}, Lcom/waze/LayoutManager;->onMainMenuClosed()V

    .line 428
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 429
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/waze/menus/MainMenu;->close()V

    .line 423
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "aMenu"

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/waze/menus/MainMenu;->close()V

    .line 439
    const/4 v0, 0x0

    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 431
    iput p1, p0, Lcom/waze/menus/MainMenu;->mOrientation:I

    .line 432
    invoke-direct {p0}, Lcom/waze/menus/MainMenu;->initLayout()V

    .line 433
    invoke-direct {p0}, Lcom/waze/menus/MainMenu;->initDynamic()V

    .line 434
    return-void
.end method

.method public open()V
    .locals 2

    .prologue
    .line 451
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/menus/MainMenu;->isVisible:Z

    .line 452
    const-string v0, "MAIN_MENU_BUTTON"

    invoke-static {v0}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 454
    invoke-direct {p0}, Lcom/waze/menus/MainMenu;->initLayout()V

    .line 455
    invoke-direct {p0}, Lcom/waze/menus/MainMenu;->initDynamic()V

    .line 456
    iget-boolean v0, p0, Lcom/waze/menus/MainMenu;->disableAnimation:Z

    if-nez v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/waze/menus/MainMenu;->mainLayout:Landroid/view/View;

    new-instance v1, Lcom/waze/menus/MainMenu$18;

    invoke-direct {v1, p0}, Lcom/waze/menus/MainMenu$18;-><init>(Lcom/waze/menus/MainMenu;)V

    invoke-static {v0, v1}, Lcom/waze/view/anim/AnimationUtils;->openAnimateMenu(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    .line 479
    :goto_0
    iget-object v0, p0, Lcom/waze/menus/MainMenu;->layoutManager:Lcom/waze/LayoutManager;

    invoke-virtual {v0}, Lcom/waze/LayoutManager;->SetMenuMainButton()V

    .line 480
    invoke-virtual {p0}, Lcom/waze/menus/MainMenu;->show()V

    .line 481
    return-void

    .line 470
    :cond_0
    new-instance v0, Lcom/waze/menus/MainMenu$19;

    invoke-direct {v0, p0}, Lcom/waze/menus/MainMenu$19;-><init>(Lcom/waze/menus/MainMenu;)V

    invoke-virtual {p0, v0}, Lcom/waze/menus/MainMenu;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    goto :goto_0
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/waze/menus/MainMenu;->updateMood()V

    .line 485
    return-void
.end method

.method public setMenuButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "drawable"

    .prologue
    .line 556
    const v1, 0x7f0903c3

    invoke-virtual {p0, v1}, Lcom/waze/menus/MainMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 558
    .local v0, button:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 559
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 561
    :cond_0
    return-void
.end method
