.class public Lcom/waze/reports/EditPlaceCategoriesHolder;
.super Ljava/lang/Object;
.source "EditPlaceCategoriesHolder.java"


# static fields
.field private static mAllCategories:[Lcom/waze/NativeManager$VenueCategory;

.field private static mCategoryIconById:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mCategoryIdForParent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mCategoryNameById:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mCategoryParentIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSettingValues:[Lcom/waze/settings/SettingsValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    sput-object v0, Lcom/waze/reports/EditPlaceCategoriesHolder;->mAllCategories:[Lcom/waze/NativeManager$VenueCategory;

    .line 15
    sput-object v0, Lcom/waze/reports/EditPlaceCategoriesHolder;->mCategoryNameById:Ljava/util/HashMap;

    .line 16
    sput-object v0, Lcom/waze/reports/EditPlaceCategoriesHolder;->mCategoryIconById:Ljava/util/HashMap;

    .line 17
    sput-object v0, Lcom/waze/reports/EditPlaceCategoriesHolder;->mCategoryIdForParent:Ljava/util/HashMap;

    .line 18
    sput-object v0, Lcom/waze/reports/EditPlaceCategoriesHolder;->mCategoryParentIds:Ljava/util/ArrayList;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0([Lcom/waze/NativeManager$VenueCategory;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    sput-object p0, Lcom/waze/reports/EditPlaceCategoriesHolder;->mAllCategories:[Lcom/waze/NativeManager$VenueCategory;

    return-void
.end method

.method public static getCategories()[Lcom/waze/NativeManager$VenueCategory;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/waze/reports/EditPlaceCategoriesHolder;->mAllCategories:[Lcom/waze/NativeManager$VenueCategory;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/waze/reports/EditPlaceCategoriesHolder$1;

    invoke-direct {v0}, Lcom/waze/reports/EditPlaceCategoriesHolder$1;-><init>()V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 32
    :cond_0
    sget-object v0, Lcom/waze/reports/EditPlaceCategoriesHolder;->mAllCategories:[Lcom/waze/NativeManager$VenueCategory;

    return-object v0
.end method

.method public static getCategoryById(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    .line 36
    sget-object v1, Lcom/waze/reports/EditPlaceCategoriesHolder;->mCategoryNameById:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 37
    sget-object v1, Lcom/waze/reports/EditPlaceCategoriesHolder;->mAllCategories:[Lcom/waze/NativeManager$VenueCategory;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 44
    :goto_0
    return-object v1

    .line 39
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/waze/reports/EditPlaceCategoriesHolder;->mCategoryNameById:Ljava/util/HashMap;

    .line 40
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/waze/reports/EditPlaceCategoriesHolder;->mAllCategories:[Lcom/waze/NativeManager$VenueCategory;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 44
    .end local v0           #i:I
    :cond_1
    sget-object v1, Lcom/waze/reports/EditPlaceCategoriesHolder;->mCategoryNameById:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 41
    .restart local v0       #i:I
    :cond_2
    sget-object v1, Lcom/waze/reports/EditPlaceCategoriesHolder;->mCategoryNameById:Ljava/util/HashMap;

    sget-object v2, Lcom/waze/reports/EditPlaceCategoriesHolder;->mAllCategories:[Lcom/waze/NativeManager$VenueCategory;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/waze/NativeManager$VenueCategory;->id:Ljava/lang/String;

    sget-object v3, Lcom/waze/reports/EditPlaceCategoriesHolder;->mAllCategories:[Lcom/waze/NativeManager$VenueCategory;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/waze/NativeManager$VenueCategory;->label:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getCategoryIconById(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    .line 48
    sget-object v1, Lcom/waze/reports/EditPlaceCategoriesHolder;->mCategoryIconById:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 49
    sget-object v1, Lcom/waze/reports/EditPlaceCategoriesHolder;->mAllCategories:[Lcom/waze/NativeManager$VenueCategory;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 56
    :goto_0
    return-object v1

    .line 51
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/waze/reports/EditPlaceCategoriesHolder;->mCategoryIconById:Ljava/util/HashMap;

    .line 52
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/waze/reports/EditPlaceCategoriesHolder;->mAllCategories:[Lcom/waze/NativeManager$VenueCategory;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 56
    .end local v0           #i:I
    :cond_1
    sget-object v1, Lcom/waze/reports/EditPlaceCategoriesHolder;->mCategoryIconById:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 53
    .restart local v0       #i:I
    :cond_2
    sget-object v1, Lcom/waze/reports/EditPlaceCategoriesHolder;->mCategoryIconById:Ljava/util/HashMap;

    sget-object v2, Lcom/waze/reports/EditPlaceCategoriesHolder;->mAllCategories:[Lcom/waze/NativeManager$VenueCategory;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/waze/NativeManager$VenueCategory;->id:Ljava/lang/String;

    sget-object v3, Lcom/waze/reports/EditPlaceCategoriesHolder;->mAllCategories:[Lcom/waze/NativeManager$VenueCategory;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/waze/NativeManager$VenueCategory;->icon:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getCategoryValues()[Lcom/waze/settings/SettingsValue;
    .locals 14

    .prologue
    const/4 v9, 0x0

    .line 60
    sget-object v8, Lcom/waze/reports/EditPlaceCategoriesHolder;->mCategoryIdForParent:Ljava/util/HashMap;

    if-nez v8, :cond_1

    .line 61
    sget-object v8, Lcom/waze/reports/EditPlaceCategoriesHolder;->mAllCategories:[Lcom/waze/NativeManager$VenueCategory;

    if-nez v8, :cond_0

    const/4 v8, 0x0

    .line 100
    .local v1, i:I
    :goto_0
    return-object v8

    .line 63
    .end local v1           #i:I
    :cond_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sput-object v8, Lcom/waze/reports/EditPlaceCategoriesHolder;->mCategoryIdForParent:Ljava/util/HashMap;

    .line 64
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sput-object v8, Lcom/waze/reports/EditPlaceCategoriesHolder;->mCategoryParentIds:Ljava/util/ArrayList;

    .line 66
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    sget-object v8, Lcom/waze/reports/EditPlaceCategoriesHolder;->mAllCategories:[Lcom/waze/NativeManager$VenueCategory;

    array-length v8, v8

    if-lt v1, v8, :cond_4

    .line 78
    :cond_1
    sget-object v8, Lcom/waze/reports/EditPlaceCategoriesHolder;->mSettingValues:[Lcom/waze/settings/SettingsValue;

    if-nez v8, :cond_8

    .line 79
    sget-object v8, Lcom/waze/reports/EditPlaceCategoriesHolder;->mAllCategories:[Lcom/waze/NativeManager$VenueCategory;

    array-length v4, v8

    .line 80
    .local v4, length:I
    const/4 v3, 0x0

    .line 81
    .local v3, idx:I
    new-array v8, v4, [Lcom/waze/settings/SettingsValue;

    sput-object v8, Lcom/waze/reports/EditPlaceCategoriesHolder;->mSettingValues:[Lcom/waze/settings/SettingsValue;

    .line 83
    sget-object v8, Lcom/waze/reports/EditPlaceCategoriesHolder;->mCategoryParentIds:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_7

    .line 100
    .end local v3           #idx:I
    .end local v4           #length:I
    :cond_3
    sget-object v8, Lcom/waze/reports/EditPlaceCategoriesHolder;->mSettingValues:[Lcom/waze/settings/SettingsValue;

    goto :goto_0

    .line 67
    :cond_4
    sget-object v8, Lcom/waze/reports/EditPlaceCategoriesHolder;->mAllCategories:[Lcom/waze/NativeManager$VenueCategory;

    aget-object v8, v8, v1

    iget-object v2, v8, Lcom/waze/NativeManager$VenueCategory;->id:Ljava/lang/String;

    .line 68
    .local v2, id:Ljava/lang/String;
    sget-object v8, Lcom/waze/reports/EditPlaceCategoriesHolder;->mAllCategories:[Lcom/waze/NativeManager$VenueCategory;

    aget-object v8, v8, v1

    iget-object v5, v8, Lcom/waze/NativeManager$VenueCategory;->parent:Ljava/lang/String;

    .line 69
    .local v5, parent:Ljava/lang/String;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 70
    :cond_5
    sget-object v8, Lcom/waze/reports/EditPlaceCategoriesHolder;->mCategoryParentIds:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v8, Lcom/waze/reports/EditPlaceCategoriesHolder;->mCategoryIdForParent:Ljava/util/HashMap;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 73
    :cond_6
    sget-object v8, Lcom/waze/reports/EditPlaceCategoriesHolder;->mCategoryIdForParent:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 83
    .end local v2           #id:Ljava/lang/String;
    .end local v5           #parent:Ljava/lang/String;
    .restart local v3       #idx:I
    .restart local v4       #length:I
    :cond_7
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 84
    .local v6, parentId:Ljava/lang/String;
    sget-object v8, Lcom/waze/reports/EditPlaceCategoriesHolder;->mSettingValues:[Lcom/waze/settings/SettingsValue;

    new-instance v11, Lcom/waze/settings/SettingsValue;

    invoke-static {v6}, Lcom/waze/reports/EditPlaceCategoriesHolder;->getCategoryById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v6, v12, v9}, Lcom/waze/settings/SettingsValue;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v11, v8, v3

    .line 85
    sget-object v8, Lcom/waze/reports/EditPlaceCategoriesHolder;->mSettingValues:[Lcom/waze/settings/SettingsValue;

    aget-object v8, v8, v3

    const/4 v11, 0x1

    iput-boolean v11, v8, Lcom/waze/settings/SettingsValue;->isHeader:Z

    .line 86
    sget-object v8, Lcom/waze/reports/EditPlaceCategoriesHolder;->mSettingValues:[Lcom/waze/settings/SettingsValue;

    aget-object v8, v8, v3

    invoke-static {v6}, Lcom/waze/reports/EditPlaceCategoriesHolder;->getCategoryIconById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/waze/settings/SettingsValue;->iconName:Ljava/lang/String;

    .line 87
    add-int/lit8 v3, v3, 0x1

    .line 89
    sget-object v8, Lcom/waze/reports/EditPlaceCategoriesHolder;->mCategoryIdForParent:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    .local v0, childId:Ljava/lang/String;
    sget-object v11, Lcom/waze/reports/EditPlaceCategoriesHolder;->mSettingValues:[Lcom/waze/settings/SettingsValue;

    new-instance v12, Lcom/waze/settings/SettingsValue;

    invoke-static {v0}, Lcom/waze/reports/EditPlaceCategoriesHolder;->getCategoryById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v0, v13, v9}, Lcom/waze/settings/SettingsValue;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v12, v11, v3

    .line 91
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 95
    .end local v0           #childId:Ljava/lang/String;
    .end local v3           #idx:I
    .end local v4           #length:I
    .end local v6           #parentId:Ljava/lang/String;
    :cond_8
    sget-object v10, Lcom/waze/reports/EditPlaceCategoriesHolder;->mSettingValues:[Lcom/waze/settings/SettingsValue;

    array-length v11, v10

    move v8, v9

    :goto_4
    if-ge v8, v11, :cond_3

    aget-object v7, v10, v8

    .line 96
    .local v7, sv:Lcom/waze/settings/SettingsValue;
    iput-boolean v9, v7, Lcom/waze/settings/SettingsValue;->isSelected:Z

    .line 97
    const/4 v12, 0x0

    iput v12, v7, Lcom/waze/settings/SettingsValue;->rank:F

    .line 95
    add-int/lit8 v8, v8, 0x1

    goto :goto_4
.end method

.method public static sortCategoryIdsArray([Ljava/lang/String;)I
    .locals 4
    .parameter "categoryIds"

    .prologue
    .line 104
    sget-object v3, Lcom/waze/reports/EditPlaceCategoriesHolder;->mAllCategories:[Lcom/waze/NativeManager$VenueCategory;

    if-nez v3, :cond_1

    array-length v2, p0

    .line 114
    :cond_0
    return v2

    .line 106
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 107
    .local v0, categorySet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 108
    .local v2, j:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Lcom/waze/reports/EditPlaceCategoriesHolder;->mAllCategories:[Lcom/waze/NativeManager$VenueCategory;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 109
    sget-object v3, Lcom/waze/reports/EditPlaceCategoriesHolder;->mAllCategories:[Lcom/waze/NativeManager$VenueCategory;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/waze/NativeManager$VenueCategory;->id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 110
    sget-object v3, Lcom/waze/reports/EditPlaceCategoriesHolder;->mAllCategories:[Lcom/waze/NativeManager$VenueCategory;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/waze/NativeManager$VenueCategory;->id:Ljava/lang/String;

    aput-object v3, p0, v2

    .line 111
    add-int/lit8 v2, v2, 0x1

    .line 108
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
