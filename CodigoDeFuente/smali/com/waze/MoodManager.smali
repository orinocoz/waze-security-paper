.class public Lcom/waze/MoodManager;
.super Ljava/lang/Object;
.source "MoodManager.java"


# static fields
.field private static instance:Lcom/waze/MoodManager;


# instance fields
.field private addon:Ljava/lang/Integer;

.field private baby:Ljava/lang/Boolean;

.field private exclusiveMoodLevel:I

.field private nativeManager:Lcom/waze/NativeManager;

.field private newbieMilage:I

.field private newbieMilageUnit:Ljava/lang/String;

.field private wazerMood:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    const/4 v0, -0x1

    iput v0, p0, Lcom/waze/MoodManager;->exclusiveMoodLevel:I

    .line 216
    const/4 v0, 0x0

    iput v0, p0, Lcom/waze/MoodManager;->newbieMilage:I

    .line 217
    const-string v0, ""

    iput-object v0, p0, Lcom/waze/MoodManager;->newbieMilageUnit:Ljava/lang/String;

    .line 195
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/MoodManager;->nativeManager:Lcom/waze/NativeManager;

    .line 196
    invoke-direct {p0}, Lcom/waze/MoodManager;->InitMoodManagerNTV()V

    .line 197
    return-void
.end method

.method private native InitMoodManagerNTV()V
.end method

.method static synthetic access$0(Lcom/waze/MoodManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/waze/MoodManager;->wazerMood:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/waze/MoodManager;Ljava/lang/Boolean;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/waze/MoodManager;->baby:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$2(Lcom/waze/MoodManager;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/waze/MoodManager;->addon:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$3(Lcom/waze/MoodManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 212
    iput p1, p0, Lcom/waze/MoodManager;->exclusiveMoodLevel:I

    return-void
.end method

.method static synthetic access$4(Lcom/waze/MoodManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 216
    iput p1, p0, Lcom/waze/MoodManager;->newbieMilage:I

    return-void
.end method

.method static synthetic access$5(Lcom/waze/MoodManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/waze/MoodManager;->newbieMilageUnit:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/waze/MoodManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/waze/MoodManager;->setMoodNTV(Ljava/lang/String;)V

    return-void
.end method

.method private native getExclusiveMoodLevelNTV()I
.end method

.method public static getInstance()Lcom/waze/MoodManager;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/waze/MoodManager;->instance:Lcom/waze/MoodManager;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/waze/MoodManager;

    invoke-direct {v0}, Lcom/waze/MoodManager;-><init>()V

    sput-object v0, Lcom/waze/MoodManager;->instance:Lcom/waze/MoodManager;

    .line 16
    :cond_0
    sget-object v0, Lcom/waze/MoodManager;->instance:Lcom/waze/MoodManager;

    return-object v0
.end method

.method private native getMoodAddonNTV()I
.end method

.method public static getMoodDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "context"
    .parameter "mood"

    .prologue
    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moods/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".bin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 127
    .local v0, res:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".bin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 130
    :cond_0
    return-object v0
.end method

.method private native getMoodNTV()Ljava/lang/String;
.end method

.method private native getNewbieMilageNTV()I
.end method

.method private native getNewbieMilageUnitNTV()Ljava/lang/String;
.end method

.method private native isBabyNTV()Z
.end method

.method private native setMoodNTV(Ljava/lang/String;)V
.end method

.method private toAndroidNaming(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "sMood"

    .prologue
    .line 166
    const-string v0, "-"

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 167
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 168
    return-object p1
.end method


# virtual methods
.method public canSetMood(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "mood"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 67
    invoke-virtual {p0}, Lcom/waze/MoodManager;->isBaby()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 70
    :cond_1
    iget v2, p0, Lcom/waze/MoodManager;->exclusiveMoodLevel:I

    if-gez v2, :cond_2

    .line 71
    const-string v2, "Check exclusive mode before initializing"

    invoke-static {v2}, Lcom/waze/Logger;->w(Ljava/lang/String;)V

    .line 72
    iput v1, p0, Lcom/waze/MoodManager;->exclusiveMoodLevel:I

    .line 74
    :cond_2
    const-string v2, "wazer_dino"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 75
    iget v2, p0, Lcom/waze/MoodManager;->exclusiveMoodLevel:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 76
    :cond_3
    const-string v2, "wazer_8bit"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 77
    iget v2, p0, Lcom/waze/MoodManager;->exclusiveMoodLevel:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 78
    :cond_4
    const-string v2, "wazer_robot"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    iget v2, p0, Lcom/waze/MoodManager;->exclusiveMoodLevel:I

    if-ge v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getBigAddonDrawble(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 141
    const/4 v1, 0x0

    .line 142
    .local v1, ans:I
    iget-object v2, p0, Lcom/waze/MoodManager;->addon:Ljava/lang/Integer;

    if-nez v2, :cond_0

    .line 144
    const-string v2, "Get addon before initializing"

    invoke-static {v2}, Lcom/waze/Logger;->w(Ljava/lang/String;)V

    .line 145
    const/4 v2, 0x0

    .line 162
    :goto_0
    return v2

    .line 149
    :cond_0
    iget-object v2, p0, Lcom/waze/MoodManager;->addon:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 151
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/waze/MoodManager;->addon:Ljava/lang/Integer;

    .line 155
    :cond_1
    iget-object v2, p0, Lcom/waze/MoodManager;->addon:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    .line 156
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/waze/MoodManager;->addon:Ljava/lang/Integer;

    .line 158
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, addons:[Ljava/lang/String;
    iget-object v2, p0, Lcom/waze/MoodManager;->addon:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_3

    iget-object v2, p0, Lcom/waze/MoodManager;->addon:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 160
    iget-object v2, p0, Lcom/waze/MoodManager;->addon:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v2, v0, v2

    invoke-static {v2}, Lcom/waze/ResManager;->GetDrawableId(Ljava/lang/String;)I

    move-result v1

    :cond_3
    move v2, v1

    .line 162
    goto :goto_0
.end method

.method public getBigMoodDrawble()I
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/waze/MoodManager;->getWazerMood()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, sMood:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/waze/MoodManager;->toAndroidNaming(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {v0}, Lcom/waze/ResManager;->GetDrawableId(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getMenuMoodDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "context"

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/waze/MoodManager;->getWazerMood()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, mood:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/waze/MoodManager;->getMoodDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 176
    .local v1, res:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 177
    const-string v2, "happy"

    invoke-static {p1, v2}, Lcom/waze/MoodManager;->getMoodDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 179
    :cond_0
    return-object v1
.end method

.method public getMenuMoodDrawableByName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .parameter "context"
    .parameter "MoodName"

    .prologue
    .line 184
    if-eqz p2, :cond_0

    .line 186
    invoke-direct {p0, p2}, Lcom/waze/MoodManager;->toAndroidNaming(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 187
    invoke-static {p2}, Lcom/waze/ResManager;->GetDrawableId(Ljava/lang/String;)I

    move-result v0

    .line 190
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020189

    goto :goto_0
.end method

.method public getMoodDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "context"

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/waze/MoodManager;->getWazerMood()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, mood:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/waze/MoodManager;->getMoodDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 119
    .local v1, res:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 120
    const-string v2, "happy"

    invoke-static {p1, v2}, Lcom/waze/MoodManager;->getMoodDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 122
    :cond_0
    return-object v1
.end method

.method public getNewbieMessage(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;
    .locals 5
    .parameter "format"

    .prologue
    .line 94
    iget-object v2, p0, Lcom/waze/MoodManager;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v2, p1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, localFormat:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/waze/MoodManager;->newbieMilage:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/waze/MoodManager;->newbieMilageUnit:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, result:Ljava/lang/String;
    return-object v1
.end method

.method public getWazerMood()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/waze/MoodManager;->wazerMood:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 22
    const-string v0, "Get wazer mood before initializing"

    invoke-static {v0}, Lcom/waze/Logger;->w(Ljava/lang/String;)V

    .line 23
    const-string v0, "wazer_baby"

    iput-object v0, p0, Lcom/waze/MoodManager;->wazerMood:Ljava/lang/String;

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/waze/MoodManager;->wazerMood:Ljava/lang/String;

    return-object v0
.end method

.method public isBaby()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/waze/MoodManager;->baby:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 87
    const-string v0, "Get baby mode before initializing"

    invoke-static {v0}, Lcom/waze/Logger;->w(Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/MoodManager;->baby:Ljava/lang/Boolean;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/waze/MoodManager;->baby:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public refreshMood()V
    .locals 8

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/waze/MoodManager;->getMoodNTV()Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, mood:Ljava/lang/String;
    invoke-direct {p0}, Lcom/waze/MoodManager;->isBabyNTV()Z

    move-result v3

    .line 31
    .local v3, baby:Z
    invoke-direct {p0}, Lcom/waze/MoodManager;->getMoodAddonNTV()I

    move-result v4

    .line 32
    .local v4, addon:I
    invoke-direct {p0}, Lcom/waze/MoodManager;->getExclusiveMoodLevelNTV()I

    move-result v5

    .line 33
    .local v5, exclusive:I
    invoke-direct {p0}, Lcom/waze/MoodManager;->getNewbieMilageNTV()I

    move-result v6

    .line 34
    .local v6, milage:I
    invoke-direct {p0}, Lcom/waze/MoodManager;->getNewbieMilageUnitNTV()Ljava/lang/String;

    move-result-object v7

    .line 35
    .local v7, unit:Ljava/lang/String;
    new-instance v0, Lcom/waze/MoodManager$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/waze/MoodManager$1;-><init>(Lcom/waze/MoodManager;Ljava/lang/String;ZIIILjava/lang/String;)V

    invoke-static {v0}, Lcom/waze/AppService;->Post(Ljava/lang/Runnable;)V

    .line 53
    return-void
.end method

.method public setWazerMood(Ljava/lang/String;)V
    .locals 2
    .parameter "mood"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/waze/MoodManager;->wazerMood:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iput-object p1, p0, Lcom/waze/MoodManager;->wazerMood:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/waze/MoodManager;->nativeManager:Lcom/waze/NativeManager;

    new-instance v1, Lcom/waze/MoodManager$2;

    invoke-direct {v1, p0, p1}, Lcom/waze/MoodManager$2;-><init>(Lcom/waze/MoodManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->PostRunnable(Ljava/lang/Runnable;)V

    .line 64
    :cond_0
    return-void
.end method
