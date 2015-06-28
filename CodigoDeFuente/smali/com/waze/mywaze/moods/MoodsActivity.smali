.class public Lcom/waze/mywaze/moods/MoodsActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "MoodsActivity.java"


# instance fields
.field private moodManager:Lcom/waze/MoodManager;

.field private nativeManager:Lcom/waze/NativeManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 23
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/mywaze/moods/MoodsActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 24
    invoke-static {}, Lcom/waze/MoodManager;->getInstance()Lcom/waze/MoodManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/mywaze/moods/MoodsActivity;->moodManager:Lcom/waze/MoodManager;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/waze/mywaze/moods/MoodsActivity;)Lcom/waze/MoodManager;
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/waze/mywaze/moods/MoodsActivity;->moodManager:Lcom/waze/MoodManager;

    return-object v0
.end method

.method private getItems()[Lcom/waze/mywaze/moods/MoodItem;
    .locals 12

    .prologue
    .line 58
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v11, moodList:Ljava/util/List;,"Ljava/util/List<Lcom/waze/mywaze/moods/MoodItem;>;"
    iget-object v0, p0, Lcom/waze/mywaze/moods/MoodsActivity;->moodManager:Lcom/waze/MoodManager;

    invoke-virtual {v0}, Lcom/waze/MoodManager;->isBaby()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Lcom/waze/mywaze/moods/MoodItem;

    const/4 v1, 0x0

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/waze/mywaze/moods/MoodsActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_WAZE_NEWBIE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 62
    iget-object v3, p0, Lcom/waze/mywaze/moods/MoodsActivity;->moodManager:Lcom/waze/MoodManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_OGOTTA_DRIVE_PDP_PS_TO_ACCESS_OTHER_MOODSU:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/MoodManager;->getNewbieMessage(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/waze/mywaze/moods/MoodItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZZZ)V

    .line 60
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v0, Lcom/waze/mywaze/moods/MoodItem;

    invoke-virtual {p0}, Lcom/waze/mywaze/moods/MoodsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-virtual {p0}, Lcom/waze/mywaze/moods/MoodsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/waze/mywaze/moods/MoodsActivity;->getLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {p0}, Lcom/waze/mywaze/moods/MoodsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701a6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/waze/MoodManager;->getMoodDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 67
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/waze/mywaze/moods/MoodItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZZZ)V

    .line 64
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_0
    new-instance v0, Lcom/waze/mywaze/moods/MoodItem;

    const/4 v1, 0x0

    .line 71
    iget-object v2, p0, Lcom/waze/mywaze/moods/MoodsActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_EXCLUSIVES_FOR_MAP_EDITORS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 72
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/waze/mywaze/moods/MoodItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZZZ)V

    .line 70
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual {p0}, Lcom/waze/mywaze/moods/MoodsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 75
    .local v9, exMoods:[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    array-length v0, v9

    if-lt v10, v0, :cond_1

    .line 85
    new-instance v0, Lcom/waze/mywaze/moods/MoodItem;

    const/4 v1, 0x0

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/waze/mywaze/moods/MoodsActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_EVERYDAY_MOODS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 87
    iget-object v3, p0, Lcom/waze/mywaze/moods/MoodsActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_OAVAILABLE_TO_ALLU:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/waze/mywaze/moods/MoodItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZZZ)V

    .line 85
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {p0}, Lcom/waze/mywaze/moods/MoodsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 91
    .local v8, allMoods:[Ljava/lang/String;
    const/4 v10, 0x0

    :goto_1
    array-length v0, v8

    if-lt v10, v0, :cond_4

    .line 100
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/waze/mywaze/moods/MoodItem;

    invoke-interface {v11, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/waze/mywaze/moods/MoodItem;

    return-object v0

    .line 76
    .end local v8           #allMoods:[Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/waze/mywaze/moods/MoodItem;

    aget-object v1, v9, v10

    .line 77
    aget-object v2, v9, v10

    invoke-direct {p0, v2}, Lcom/waze/mywaze/moods/MoodsActivity;->getLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    aget-object v3, v9, v10

    invoke-static {p0, v3}, Lcom/waze/MoodManager;->getMoodDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 79
    const/4 v4, 0x0

    .line 80
    iget-object v5, p0, Lcom/waze/mywaze/moods/MoodsActivity;->moodManager:Lcom/waze/MoodManager;

    aget-object v6, v9, v10

    invoke-virtual {v5, p0, v6}, Lcom/waze/MoodManager;->canSetMood(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 81
    if-nez v10, :cond_2

    const/4 v6, 0x1

    .line 82
    :goto_2
    array-length v7, v9

    add-int/lit8 v7, v7, -0x1

    if-ne v10, v7, :cond_3

    const/4 v7, 0x1

    :goto_3
    invoke-direct/range {v0 .. v7}, Lcom/waze/mywaze/moods/MoodItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZZZ)V

    .line 76
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 81
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 82
    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    .line 92
    .restart local v8       #allMoods:[Ljava/lang/String;
    :cond_4
    new-instance v0, Lcom/waze/mywaze/moods/MoodItem;

    aget-object v1, v8, v10

    .line 93
    aget-object v2, v8, v10

    invoke-direct {p0, v2}, Lcom/waze/mywaze/moods/MoodsActivity;->getLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    aget-object v3, v8, v10

    invoke-static {p0, v3}, Lcom/waze/MoodManager;->getMoodDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 95
    const/4 v4, 0x0

    .line 96
    iget-object v5, p0, Lcom/waze/mywaze/moods/MoodsActivity;->moodManager:Lcom/waze/MoodManager;

    aget-object v6, v8, v10

    invoke-virtual {v5, p0, v6}, Lcom/waze/MoodManager;->canSetMood(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 97
    if-nez v10, :cond_5

    const/4 v6, 0x1

    .line 98
    :goto_4
    array-length v7, v8

    add-int/lit8 v7, v7, -0x1

    if-ne v10, v7, :cond_6

    const/4 v7, 0x1

    :goto_5
    invoke-direct/range {v0 .. v7}, Lcom/waze/mywaze/moods/MoodItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZZZ)V

    .line 92
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 97
    :cond_5
    const/4 v6, 0x0

    goto :goto_4

    .line 98
    :cond_6
    const/4 v7, 0x0

    goto :goto_5
.end method

.method private getLocalizedName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "mood"

    .prologue
    .line 109
    iget-object v1, p0, Lcom/waze/mywaze/moods/MoodsActivity;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v1, p1}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, res:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 113
    :cond_0
    return-object v0
.end method

.method private showBabyMessage()V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/waze/mywaze/moods/MoodsActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_WANNA_PICK_A_NEW_MOODQ:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/waze/mywaze/moods/MoodsActivity;->moodManager:Lcom/waze/MoodManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_YOUSRE_A_BABY_WAZER_NOW_H_BUT_NOT_FOR_LONGE_DRIVE_PD_PS_TO_UNLOCK_MOODS___:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/MoodManager;->getNewbieMessage(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 104
    invoke-static {v0, v1, v2}, Lcom/waze/MsgBox;->openMessageBox(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 106
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v2, 0x7f030089

    invoke-virtual {p0, v2}, Lcom/waze/mywaze/moods/MoodsActivity;->setContentView(I)V

    .line 31
    const v2, 0x7f090406

    invoke-virtual {p0, v2}, Lcom/waze/mywaze/moods/MoodsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/title/TitleBar;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_MY_MOOD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, p0, v3}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 32
    new-instance v0, Lcom/waze/mywaze/moods/MoodArrayAdapter;

    invoke-virtual {p0}, Lcom/waze/mywaze/moods/MoodsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f030087

    invoke-direct {p0}, Lcom/waze/mywaze/moods/MoodsActivity;->getItems()[Lcom/waze/mywaze/moods/MoodItem;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/waze/mywaze/moods/MoodArrayAdapter;-><init>(Landroid/content/Context;I[Lcom/waze/mywaze/moods/MoodItem;)V

    .line 33
    .local v0, adapter:Lcom/waze/mywaze/moods/MoodArrayAdapter;
    const v2, 0x7f090407

    invoke-virtual {p0, v2}, Lcom/waze/mywaze/moods/MoodsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 34
    .local v1, list:Landroid/widget/ListView;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 37
    new-instance v2, Lcom/waze/mywaze/moods/MoodsActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/waze/mywaze/moods/MoodsActivity$1;-><init>(Lcom/waze/mywaze/moods/MoodsActivity;Lcom/waze/mywaze/moods/MoodArrayAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 52
    iget-object v2, p0, Lcom/waze/mywaze/moods/MoodsActivity;->moodManager:Lcom/waze/MoodManager;

    invoke-virtual {v2}, Lcom/waze/MoodManager;->isBaby()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/waze/mywaze/moods/MoodsActivity;->showBabyMessage()V

    .line 55
    :cond_0
    return-void
.end method
