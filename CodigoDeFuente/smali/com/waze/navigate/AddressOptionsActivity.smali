.class public final Lcom/waze/navigate/AddressOptionsActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "AddressOptionsActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNavigateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;
    }
.end annotation


# static fields
.field protected static final MORE_ANIMATION_TICK:J = 0x14L

.field protected static final MORE_OFFSET:I = -0x64

.field private static buttons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/waze/navigate/GenericView;",
            ">;"
        }
    .end annotation
.end field

.field private static s_addressOptionsActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/waze/navigate/AddressOptionsActivity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private EventAddressItem:Lcom/waze/navigate/AddressItem;

.field private addressItem:Lcom/waze/navigate/AddressItem;

.field private addressItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/navigate/AddressItem;",
            ">;"
        }
    .end annotation
.end field

.field private caller:I

.field private driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

.field private increaseMapButton:Landroid/widget/ImageView;

.field private isAdditionalAddToFavorites:Z

.field private isClearAdsContext:Z

.field private isDayMode:Z

.field private isMapBig:Z

.field private isNavigateable:Z

.field private layoutView:Landroid/view/View;

.field private leftCorner:Landroid/widget/ImageView;

.field private final mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

.field private mapLayout:Landroid/widget/RelativeLayout;

.field private mapPlaceholder:Landroid/widget/RelativeLayout;

.field private mapView:Lcom/waze/MapView;

.field private nativeManager:Lcom/waze/NativeManager;

.field private previewTabsManager:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;

.field private rightCorner:Landroid/widget/ImageView;

.field private selectedItem:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/navigate/AddressOptionsActivity;->buttons:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/waze/navigate/AddressOptionsActivity;->buttons:Ljava/util/Map;

    .line 61
    sget-object v0, Lcom/waze/navigate/AddressOptionsActivity;->buttons:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/waze/navigate/AddToFavoritesButton;

    invoke-direct {v2}, Lcom/waze/navigate/AddToFavoritesButton;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/waze/navigate/AddressOptionsActivity;->buttons:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/waze/navigate/DeleteFromFavoritesButton;

    invoke-direct {v2}, Lcom/waze/navigate/DeleteFromFavoritesButton;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/waze/navigate/AddressOptionsActivity;->buttons:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/waze/navigate/DeleteFromHistoryButton;

    invoke-direct {v2}, Lcom/waze/navigate/DeleteFromHistoryButton;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/waze/navigate/AddressOptionsActivity;->buttons:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/waze/navigate/GoButton;

    invoke-direct {v2}, Lcom/waze/navigate/GoButton;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/waze/navigate/AddressOptionsActivity;->buttons:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/waze/navigate/GoneButton;

    invoke-direct {v2}, Lcom/waze/navigate/GoneButton;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/waze/navigate/AddressOptionsActivity;->buttons:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/waze/navigate/MoreButton;

    invoke-direct {v2}, Lcom/waze/navigate/MoreButton;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->EventAddressItem:Lcom/waze/navigate/AddressItem;

    .line 76
    iput-boolean v1, p0, Lcom/waze/navigate/AddressOptionsActivity;->isMapBig:Z

    .line 81
    iput v1, p0, Lcom/waze/navigate/AddressOptionsActivity;->selectedItem:I

    .line 85
    iput-boolean v1, p0, Lcom/waze/navigate/AddressOptionsActivity;->isClearAdsContext:Z

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->isNavigateable:Z

    .line 839
    new-instance v0, Lcom/waze/navigate/AddressOptionsActivity$1;

    invoke-direct {v0, p0}, Lcom/waze/navigate/AddressOptionsActivity$1;-><init>(Lcom/waze/navigate/AddressOptionsActivity;)V

    iput-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/navigate/DriveToNativeManager;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/navigate/AddressItem;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    return-object v0
.end method

.method static synthetic access$10(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->nativeManager:Lcom/waze/NativeManager;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/navigate/AddressOptionsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 834
    invoke-direct {p0, p1}, Lcom/waze/navigate/AddressOptionsActivity;->logAnalyticsAds(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/waze/navigate/AddressOptionsActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/waze/navigate/AddressOptionsActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->mapLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$5(Lcom/waze/navigate/AddressOptionsActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 82
    iget v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->caller:I

    return v0
.end method

.method static synthetic access$6()Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/waze/navigate/AddressOptionsActivity;->s_addressOptionsActivity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$7(Lcom/waze/navigate/AddressOptionsActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->leftCorner:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/waze/navigate/AddressOptionsActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->rightCorner:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/navigate/AddressItem;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->EventAddressItem:Lcom/waze/navigate/AddressItem;

    return-object v0
.end method

.method private logAnalyticsAds(Ljava/lang/String;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 836
    invoke-static {p1}, Lcom/waze/analytics/Analytics;->logAdsContext(Ljava/lang/String;)V

    .line 837
    return-void
.end method

.method private refreshView()V
    .locals 13

    .prologue
    .line 224
    iget-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItemList:Ljava/util/ArrayList;

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItemList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget v10, p0, Lcom/waze/navigate/AddressOptionsActivity;->selectedItem:I

    if-le v9, v10, :cond_c

    .line 225
    iget-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItemList:Ljava/util/ArrayList;

    iget v10, p0, Lcom/waze/navigate/AddressOptionsActivity;->selectedItem:I

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/waze/navigate/AddressItem;

    iput-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    .line 227
    iget-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->getCategory()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x7

    if-eq v9, v10, :cond_0

    .line 228
    iget-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v10, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    iget v10, v10, Lcom/waze/navigate/AddressItem;->index:I

    invoke-virtual {v9, v10}, Lcom/waze/navigate/DriveToNativeManager;->notifyAddressItemShownBeforeNavigate(I)V

    .line 230
    :cond_0
    iget v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->selectedItem:I

    if-nez v9, :cond_a

    .line 231
    const v9, 0x7f0900f8

    invoke-virtual {p0, v9}, Lcom/waze/navigate/AddressOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 236
    :goto_0
    iget v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->selectedItem:I

    iget-object v10, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItemList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v9, v10, :cond_b

    .line 237
    const v9, 0x7f0900f7

    invoke-virtual {p0, v9}, Lcom/waze/navigate/AddressOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 249
    :goto_1
    iget-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->getCategory()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x7

    if-ne v9, v10, :cond_d

    .line 251
    iget-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->EventAddressItem:Lcom/waze/navigate/AddressItem;

    if-nez v9, :cond_1

    .line 253
    invoke-virtual {p0}, Lcom/waze/navigate/AddressOptionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "CalendarAddressItem"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, Lcom/waze/navigate/AddressItem;

    iput-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->EventAddressItem:Lcom/waze/navigate/AddressItem;

    .line 257
    :cond_1
    iget-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->EventAddressItem:Lcom/waze/navigate/AddressItem;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->EventAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->getIsValidate()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    iget-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->getIsValidate()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_6

    .line 259
    :cond_3
    iget-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    iget-object v0, v9, Lcom/waze/navigate/AddressItem;->VanueID:Ljava/lang/String;

    .line 260
    .local v0, VenueId:Ljava/lang/String;
    if-nez v0, :cond_4

    .line 261
    iget-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->EventAddressItem:Lcom/waze/navigate/AddressItem;

    iget-object v0, v9, Lcom/waze/navigate/AddressItem;->VanueID:Ljava/lang/String;

    .line 262
    :cond_4
    if-nez v0, :cond_5

    .line 263
    const-string v0, ""

    .line 264
    :cond_5
    const-string v9, "CALENDAR_OPTIONS"

    const-string v10, "ID|VENUE"

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v12}, Lcom/waze/navigate/AddressItem;->getMeetingId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "|"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const v9, 0x7f0900f0

    invoke-virtual {p0, v9}, Lcom/waze/navigate/AddressOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 267
    const v9, 0x7f0900ed

    invoke-virtual {p0, v9}, Lcom/waze/navigate/AddressOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0900ef

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/waze/navigate/AddressOptionsActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v11, Lcom/waze/strings/DisplayStrings;->DS_DRIVE_NOW:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v10, v11}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    sget-object v9, Lcom/waze/navigate/AddressOptionsActivity;->buttons:Ljava/util/Map;

    const/4 v10, 0x7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/waze/navigate/GenericView;

    const v10, 0x7f0201ca

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/waze/navigate/GenericView;->setImageId(Ljava/lang/Integer;)V

    .line 269
    sget-object v9, Lcom/waze/navigate/AddressOptionsActivity;->buttons:Ljava/util/Map;

    const/4 v10, 0x7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/waze/navigate/GenericView;

    const v10, 0x7f0201ca

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/waze/navigate/GenericView;->setLandscapeImageId(Ljava/lang/Integer;)V

    .line 270
    sget-object v9, Lcom/waze/navigate/AddressOptionsActivity;->buttons:Ljava/util/Map;

    const/4 v10, 0x7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/waze/navigate/GenericView;

    const v10, 0x7f0900f1

    invoke-virtual {p0, v10}, Lcom/waze/navigate/AddressOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/waze/navigate/AddressOptionsActivity;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {p0}, Lcom/waze/navigate/AddressOptionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v9, v10, v11, v12}, Lcom/waze/navigate/GenericView;->fillContent(Landroid/widget/LinearLayout;Lcom/waze/NativeManager;I)V

    .line 271
    const v9, 0x7f0900f1

    invoke-virtual {p0, v9}, Lcom/waze/navigate/AddressOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0900ef

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/waze/navigate/AddressOptionsActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v11, Lcom/waze/strings/DisplayStrings;->DS_SAVE_EVENT_LOCATION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v10, v11}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    const v9, 0x7f0900f1

    invoke-virtual {p0, v9}, Lcom/waze/navigate/AddressOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Lcom/waze/navigate/AddressOptionsActivity$3;

    invoke-direct {v10, p0}, Lcom/waze/navigate/AddressOptionsActivity$3;-><init>(Lcom/waze/navigate/AddressOptionsActivity;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    const v9, 0x7f0900ed

    invoke-virtual {p0, v9}, Lcom/waze/navigate/AddressOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Lcom/waze/navigate/AddressOptionsActivity$4;

    invoke-direct {v10, p0}, Lcom/waze/navigate/AddressOptionsActivity$4;-><init>(Lcom/waze/navigate/AddressOptionsActivity;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    .end local v0           #VenueId:Ljava/lang/String;
    :cond_6
    :goto_2
    iget-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->getCategory()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x6

    if-ne v9, v10, :cond_9

    .line 350
    iget-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->EventAddressItem:Lcom/waze/navigate/AddressItem;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->EventAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->getIsValidate()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_7
    iget-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->getIsValidate()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_9

    .line 352
    :cond_8
    const v9, 0x7f0900f0

    invoke-virtual {p0, v9}, Lcom/waze/navigate/AddressOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 353
    const v9, 0x7f0900f1

    invoke-virtual {p0, v9}, Lcom/waze/navigate/AddressOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0900ef

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/waze/navigate/AddressOptionsActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v11, Lcom/waze/strings/DisplayStrings;->DS_SAVE_AND_POST_TO_EVENT_WALL:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v10, v11}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    const v9, 0x7f0900ed

    invoke-virtual {p0, v9}, Lcom/waze/navigate/AddressOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0900ef

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/waze/navigate/AddressOptionsActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v11, Lcom/waze/strings/DisplayStrings;->DS_SAVE_EVENT_LOCATION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v10, v11}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    const v9, 0x7f0900f1

    invoke-virtual {p0, v9}, Lcom/waze/navigate/AddressOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Lcom/waze/navigate/AddressOptionsActivity$5;

    invoke-direct {v10, p0}, Lcom/waze/navigate/AddressOptionsActivity$5;-><init>(Lcom/waze/navigate/AddressOptionsActivity;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    const v9, 0x7f0900ed

    invoke-virtual {p0, v9}, Lcom/waze/navigate/AddressOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v10, Lcom/waze/navigate/AddressOptionsActivity$6;

    invoke-direct {v10, p0}, Lcom/waze/navigate/AddressOptionsActivity$6;-><init>(Lcom/waze/navigate/AddressOptionsActivity;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    :cond_9
    iget-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->layoutView:Landroid/view/View;

    const v10, 0x7f0900c2

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 415
    .local v4, name:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 416
    iget-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->layoutView:Landroid/view/View;

    const v10, 0x7f0900c2

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 421
    :goto_3
    iget-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->layoutView:Landroid/view/View;

    const v10, 0x7f0900c4

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 422
    .local v2, address:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->getAddress()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 423
    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 429
    :goto_4
    iget-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->layoutView:Landroid/view/View;

    const v10, 0x7f0900c6

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 431
    .local v3, distance:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->getDistance()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 432
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 438
    :goto_5
    iget-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->layoutView:Landroid/view/View;

    const v10, 0x7f0900c7

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 439
    .local v7, sep:Landroid/view/View;
    iget-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->layoutView:Landroid/view/View;

    const v10, 0x7f0900c8

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 440
    .local v5, phoneIcon:Landroid/widget/ImageView;
    iget-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->layoutView:Landroid/view/View;

    const v10, 0x7f0900c9

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 441
    .local v6, phonetext:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->getPhone()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 442
    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 443
    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 444
    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 468
    :goto_6
    iget-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->layoutView:Landroid/view/View;

    const v10, 0x7f0900d7

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 469
    .local v1, accr:Landroid/widget/ImageView;
    iget-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->getAccreditation()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_12

    .line 470
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 471
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v10}, Lcom/waze/navigate/AddressItem;->getAccreditation()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ".bin"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 475
    :goto_7
    return-void

    .line 233
    .end local v1           #accr:Landroid/widget/ImageView;
    .end local v2           #address:Landroid/widget/TextView;
    .end local v3           #distance:Landroid/widget/TextView;
    .end local v4           #name:Landroid/widget/TextView;
    .end local v5           #phoneIcon:Landroid/widget/ImageView;
    .end local v6           #phonetext:Landroid/widget/TextView;
    .end local v7           #sep:Landroid/view/View;
    :cond_a
    const v9, 0x7f0900f8

    invoke-virtual {p0, v9}, Lcom/waze/navigate/AddressOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 239
    :cond_b
    const v9, 0x7f0900f7

    invoke-virtual {p0, v9}, Lcom/waze/navigate/AddressOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 242
    :cond_c
    iget-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v10, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    iget v10, v10, Lcom/waze/navigate/AddressItem;->index:I

    invoke-virtual {v9, v10}, Lcom/waze/navigate/DriveToNativeManager;->notifyAddressItemShownBeforeNavigate(I)V

    .line 244
    const v9, 0x7f0900f8

    invoke-virtual {p0, v9}, Lcom/waze/navigate/AddressOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 245
    const v9, 0x7f0900f7

    invoke-virtual {p0, v9}, Lcom/waze/navigate/AddressOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 341
    :cond_d
    sget-object v9, Lcom/waze/navigate/AddressOptionsActivity;->buttons:Ljava/util/Map;

    const/4 v10, 0x7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/waze/navigate/GenericView;

    const v10, 0x7f0201cb

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/waze/navigate/GenericView;->setImageId(Ljava/lang/Integer;)V

    .line 342
    sget-object v9, Lcom/waze/navigate/AddressOptionsActivity;->buttons:Ljava/util/Map;

    const/4 v10, 0x7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/waze/navigate/GenericView;

    const v10, 0x7f0201cb

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/waze/navigate/GenericView;->setLandscapeImageId(Ljava/lang/Integer;)V

    .line 343
    sget-object v9, Lcom/waze/navigate/AddressOptionsActivity;->buttons:Ljava/util/Map;

    const/4 v10, 0x7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/waze/navigate/GenericView;

    const v10, 0x7f0900f1

    invoke-virtual {p0, v10}, Lcom/waze/navigate/AddressOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/waze/navigate/AddressOptionsActivity;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {p0}, Lcom/waze/navigate/AddressOptionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v9, v10, v11, v12}, Lcom/waze/navigate/GenericView;->fillContent(Landroid/widget/LinearLayout;Lcom/waze/NativeManager;I)V

    goto/16 :goto_2

    .line 418
    .restart local v4       #name:Landroid/widget/TextView;
    :cond_e
    iget-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 425
    .restart local v2       #address:Landroid/widget/TextView;
    :cond_f
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 426
    iget-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 434
    .restart local v3       #distance:Landroid/widget/TextView;
    :cond_10
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 435
    iget-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->getDistance()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 446
    .restart local v5       #phoneIcon:Landroid/widget/ImageView;
    .restart local v6       #phonetext:Landroid/widget/TextView;
    .restart local v7       #sep:Landroid/view/View;
    :cond_11
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 447
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 448
    const v9, 0x7f02029a

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 449
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 450
    new-instance v8, Landroid/text/SpannableString;

    iget-object v9, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v9}, Lcom/waze/navigate/AddressItem;->getPhone()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 451
    .local v8, underline_phone:Landroid/text/SpannableString;
    new-instance v9, Landroid/text/style/UnderlineSpan;

    invoke-direct {v9}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 452
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    new-instance v9, Lcom/waze/navigate/AddressOptionsActivity$7;

    invoke-direct {v9, p0}, Lcom/waze/navigate/AddressOptionsActivity$7;-><init>(Lcom/waze/navigate/AddressOptionsActivity;)V

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    .line 473
    .end local v8           #underline_phone:Landroid/text/SpannableString;
    .restart local v1       #accr:Landroid/widget/ImageView;
    :cond_12
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7
.end method

.method private setMapLayoutListener(Landroid/view/View;)V
    .locals 3
    .parameter "mapLayoutRoot"

    .prologue
    .line 613
    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsActivity;->mapLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 614
    .local v1, vto:Landroid/view/ViewTreeObserver;
    new-instance v0, Lcom/waze/navigate/AddressOptionsActivity$8;

    invoke-direct {v0, p0, p1, v1}, Lcom/waze/navigate/AddressOptionsActivity$8;-><init>(Lcom/waze/navigate/AddressOptionsActivity;Landroid/view/View;Landroid/view/ViewTreeObserver;)V

    .line 628
    .local v0, listener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 629
    return-void
.end method

.method private setUpActivity()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 143
    const v5, 0x7f03000f

    invoke-virtual {p0, v5}, Lcom/waze/navigate/AddressOptionsActivity;->setContentView(I)V

    .line 144
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v5, Lcom/waze/navigate/AddressOptionsActivity;->s_addressOptionsActivity:Ljava/lang/ref/WeakReference;

    .line 146
    const v5, 0x7f090058

    invoke-virtual {p0, v5}, Lcom/waze/navigate/AddressOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/waze/view/title/TitleBar;

    sget-object v6, Lcom/waze/strings/DisplayStrings;->DS_PREVIEW:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v5, p0, v6}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 148
    const v5, 0x7f0900f5

    invoke-virtual {p0, v5}, Lcom/waze/navigate/AddressOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/waze/MapView;

    iput-object v5, p0, Lcom/waze/navigate/AddressOptionsActivity;->mapView:Lcom/waze/MapView;

    .line 149
    iget-object v5, p0, Lcom/waze/navigate/AddressOptionsActivity;->mapView:Lcom/waze/MapView;

    iget-object v6, p0, Lcom/waze/navigate/AddressOptionsActivity;->mNativeCanvasReadyEvent:Lcom/waze/ifs/async/RunnableExecutor;

    invoke-virtual {v5, v6}, Lcom/waze/MapView;->setNativeCanvasReadyEvent(Lcom/waze/ifs/async/RunnableExecutor;)V

    .line 151
    const v5, 0x7f0900f3

    invoke-virtual {p0, v5}, Lcom/waze/navigate/AddressOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/waze/navigate/AddressOptionsActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;

    .line 152
    const v5, 0x7f0900f4

    invoke-virtual {p0, v5}, Lcom/waze/navigate/AddressOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/waze/navigate/AddressOptionsActivity;->mapLayout:Landroid/widget/RelativeLayout;

    .line 153
    const v5, 0x7f0900fa

    invoke-virtual {p0, v5}, Lcom/waze/navigate/AddressOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/waze/navigate/AddressOptionsActivity;->rightCorner:Landroid/widget/ImageView;

    .line 154
    const v5, 0x7f0900f9

    invoke-virtual {p0, v5}, Lcom/waze/navigate/AddressOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/waze/navigate/AddressOptionsActivity;->leftCorner:Landroid/widget/ImageView;

    .line 156
    iget-object v5, p0, Lcom/waze/navigate/AddressOptionsActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    .line 157
    .local v4, vto:Landroid/view/ViewTreeObserver;
    new-instance v5, Lcom/waze/navigate/AddressOptionsActivity$2;

    invoke-direct {v5, p0}, Lcom/waze/navigate/AddressOptionsActivity$2;-><init>(Lcom/waze/navigate/AddressOptionsActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 177
    iget-object v5, p0, Lcom/waze/navigate/AddressOptionsActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v5}, Lcom/waze/navigate/DriveToNativeManager;->isDayMode()Z

    move-result v5

    iput-boolean v5, p0, Lcom/waze/navigate/AddressOptionsActivity;->isDayMode:Z

    .line 178
    const v5, 0x7f0900f6

    invoke-virtual {p0, v5}, Lcom/waze/navigate/AddressOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/waze/navigate/AddressOptionsActivity;->increaseMapButton:Landroid/widget/ImageView;

    .line 179
    iget-boolean v5, p0, Lcom/waze/navigate/AddressOptionsActivity;->isDayMode:Z

    if-eqz v5, :cond_0

    .line 181
    iget-object v5, p0, Lcom/waze/navigate/AddressOptionsActivity;->increaseMapButton:Landroid/widget/ImageView;

    const v6, 0x7f02024e

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    :goto_0
    invoke-virtual {p0}, Lcom/waze/navigate/AddressOptionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "AddressItemList"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItemList:Ljava/util/ArrayList;

    .line 188
    invoke-virtual {p0}, Lcom/waze/navigate/AddressOptionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "AddressItemSelected"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/waze/navigate/AddressOptionsActivity;->selectedItem:I

    .line 189
    iget-object v5, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItemList:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 190
    invoke-virtual {p0}, Lcom/waze/navigate/AddressOptionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "AddressItem"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/waze/navigate/AddressItem;

    iput-object v5, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    .line 197
    :goto_1
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/waze/navigate/AddressOptionsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 198
    .local v2, li:Landroid/view/LayoutInflater;
    const v5, 0x7f03000e

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/waze/navigate/AddressOptionsActivity;->layoutView:Landroid/view/View;

    .line 200
    iget-object v5, p0, Lcom/waze/navigate/AddressOptionsActivity;->layoutView:Landroid/view/View;

    const v6, 0x7f0900e2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-object v5, p0, Lcom/waze/navigate/AddressOptionsActivity;->layoutView:Landroid/view/View;

    const v6, 0x7f0900d8

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 202
    iget-object v5, p0, Lcom/waze/navigate/AddressOptionsActivity;->layoutView:Landroid/view/View;

    const v6, 0x7f0900c3

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iget-object v5, p0, Lcom/waze/navigate/AddressOptionsActivity;->layoutView:Landroid/view/View;

    const v6, 0x7f0900be

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object v5, p0, Lcom/waze/navigate/AddressOptionsActivity;->layoutView:Landroid/view/View;

    const v6, 0x7f020226

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 206
    iget-object v5, p0, Lcom/waze/navigate/AddressOptionsActivity;->layoutView:Landroid/view/View;

    invoke-virtual {v5, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 207
    const v5, 0x7f09006c

    invoke-virtual {p0, v5}, Lcom/waze/navigate/AddressOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 208
    .local v0, aiv:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 209
    .local v3, parent:Landroid/view/ViewGroup;
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 210
    .local v1, index:I
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 211
    iget-object v5, p0, Lcom/waze/navigate/AddressOptionsActivity;->layoutView:Landroid/view/View;

    invoke-virtual {v3, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 213
    sget-object v5, Lcom/waze/navigate/AddressOptionsActivity;->buttons:Ljava/util/Map;

    const/4 v6, 0x7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/waze/navigate/GenericView;

    const v6, 0x7f0900f1

    invoke-virtual {p0, v6}, Lcom/waze/navigate/AddressOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/waze/navigate/AddressOptionsActivity;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {p0}, Lcom/waze/navigate/AddressOptionsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/waze/navigate/GenericView;->fillContent(Landroid/widget/LinearLayout;Lcom/waze/NativeManager;I)V

    .line 214
    sget-object v5, Lcom/waze/navigate/AddressOptionsActivity;->buttons:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/waze/navigate/AddressOptionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "ActionButton"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/waze/navigate/GenericView;

    const v6, 0x7f0900f0

    invoke-virtual {p0, v6}, Lcom/waze/navigate/AddressOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/waze/navigate/AddressOptionsActivity;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v5, v6, v7}, Lcom/waze/navigate/GenericView;->fillContent(Landroid/widget/LinearLayout;Lcom/waze/NativeManager;)V

    .line 215
    sget-object v5, Lcom/waze/navigate/AddressOptionsActivity;->buttons:Ljava/util/Map;

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/waze/navigate/GenericView;

    const v6, 0x7f0900ed

    invoke-virtual {p0, v6}, Lcom/waze/navigate/AddressOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/waze/navigate/AddressOptionsActivity;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v5, v6, v7}, Lcom/waze/navigate/GenericView;->fillContent(Landroid/widget/LinearLayout;Lcom/waze/NativeManager;)V

    .line 217
    invoke-direct {p0}, Lcom/waze/navigate/AddressOptionsActivity;->refreshView()V

    .line 220
    iget-object v5, p0, Lcom/waze/navigate/AddressOptionsActivity;->previewTabsManager:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;

    invoke-virtual {v5}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->initTabs()V

    .line 221
    return-void

    .line 185
    .end local v0           #aiv:Landroid/view/View;
    .end local v1           #index:I
    .end local v2           #li:Landroid/view/LayoutInflater;
    .end local v3           #parent:Landroid/view/ViewGroup;
    :cond_0
    iget-object v5, p0, Lcom/waze/navigate/AddressOptionsActivity;->increaseMapButton:Landroid/widget/ImageView;

    const v6, 0x7f020250

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/waze/navigate/AddressOptionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "AddressItem"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/waze/navigate/AddressItem;

    iput-object v5, p0, Lcom/waze/navigate/AddressOptionsActivity;->EventAddressItem:Lcom/waze/navigate/AddressItem;

    goto/16 :goto_1
.end method

.method public static updateEta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "provider"
    .parameter "distance"
    .parameter "id"

    .prologue
    .line 855
    sget-object v1, Lcom/waze/navigate/AddressOptionsActivity;->s_addressOptionsActivity:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 856
    sget-object v1, Lcom/waze/navigate/AddressOptionsActivity;->s_addressOptionsActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/navigate/AddressOptionsActivity;

    .line 857
    .local v0, a:Lcom/waze/navigate/AddressOptionsActivity;
    if-eqz v0, :cond_0

    .line 858
    invoke-virtual {v0, p0, p1, p2}, Lcom/waze/navigate/AddressOptionsActivity;->onUpdateEta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    .end local v0           #a:Lcom/waze/navigate/AddressOptionsActivity;
    :cond_0
    return-void
.end method


# virtual methods
.method public centerButtonClicked(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 516
    const-string v0, "WAZE"

    const-string v1, "center pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    sget-object v0, Lcom/waze/navigate/AddressOptionsActivity;->buttons:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/waze/navigate/AddressOptionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ActionButton"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/navigate/GenericView;

    const v1, 0x7f0900bd

    invoke-virtual {p0, v1}, Lcom/waze/navigate/AddressOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/waze/navigate/GenericView;->onClick(Lcom/waze/navigate/AddressOptionsActivity;Landroid/view/View;)V

    .line 518
    return-void
.end method

.method public getAddressItem()Lcom/waze/navigate/AddressItem;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    return-object v0
.end method

.method public increaseMapClicked(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 549
    iget-boolean v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->isMapBig:Z

    if-eqz v0, :cond_1

    .line 550
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->previewTabsManager:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;

    invoke-virtual {v0, v4}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->setVisible(Z)V

    .line 552
    iput-boolean v1, p0, Lcom/waze/navigate/AddressOptionsActivity;->isMapBig:Z

    .line 553
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->mapView:Lcom/waze/MapView;

    invoke-virtual {v0, v1}, Lcom/waze/MapView;->setHandleTouch(Z)V

    .line 554
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->rightCorner:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->leftCorner:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 556
    iget-boolean v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->isDayMode:Z

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->increaseMapButton:Landroid/widget/ImageView;

    const v1, 0x7f02024e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 567
    :goto_0
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->mapPlaceholder:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/waze/navigate/AddressOptionsActivity;->setMapLayoutListener(Landroid/view/View;)V

    .line 569
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v1, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    iget v1, v1, Lcom/waze/navigate/AddressItem;->index:I

    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getLocationX()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v3}, Lcom/waze/navigate/AddressItem;->getLocationY()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v5}, Lcom/waze/navigate/AddressItem;->getIcon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/waze/navigate/DriveToNativeManager;->centerMapInAddressOptionsView(IIIZLjava/lang/String;)V

    .line 588
    :goto_1
    return-void

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->increaseMapButton:Landroid/widget/ImageView;

    const v1, 0x7f020250

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 571
    :cond_1
    iput-boolean v4, p0, Lcom/waze/navigate/AddressOptionsActivity;->isMapBig:Z

    .line 572
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->mapView:Lcom/waze/MapView;

    invoke-virtual {v0, v4}, Lcom/waze/MapView;->setHandleTouch(Z)V

    .line 573
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->rightCorner:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 574
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->leftCorner:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 575
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->previewTabsManager:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;

    invoke-virtual {v0, v1}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->setVisible(Z)V

    .line 576
    iget-boolean v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->isDayMode:Z

    if-eqz v0, :cond_2

    .line 578
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->increaseMapButton:Landroid/widget/ImageView;

    const v1, 0x7f020248

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 585
    :goto_2
    const v0, 0x7f0900eb

    invoke-virtual {p0, v0}, Lcom/waze/navigate/AddressOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 586
    .local v6, root:Landroid/view/View;
    invoke-direct {p0, v6}, Lcom/waze/navigate/AddressOptionsActivity;->setMapLayoutListener(Landroid/view/View;)V

    goto :goto_1

    .line 581
    .end local v6           #root:Landroid/view/View;
    :cond_2
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->increaseMapButton:Landroid/widget/ImageView;

    const v1, 0x7f020249

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method public leftButtonClicked(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 503
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/waze/navigate/AddressOptionsMoreActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 504
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "AddressItem"

    invoke-virtual {p0}, Lcom/waze/navigate/AddressOptionsActivity;->getAddressItem()Lcom/waze/navigate/AddressItem;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 505
    const-string v4, "AdditionalButton"

    iget-boolean v5, p0, Lcom/waze/navigate/AddressOptionsActivity;->isAdditionalAddToFavorites:Z

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 506
    iget-object v4, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    if-eqz v4, :cond_0

    .line 508
    iget-object v4, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v4}, Lcom/waze/navigate/AddressItem;->getType()Ljava/lang/Integer;

    move-result-object v2

    .line 510
    .local v2, type:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_1

    .line 509
    const/4 v1, 0x0

    .line 511
    .local v1, removeHistory:Z
    :goto_0
    const-string v4, "RemoveFromHistoryButton"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 513
    .end local v1           #removeHistory:Z
    .end local v2           #type:Ljava/lang/Integer;
    :cond_0
    invoke-virtual {p0, v0, v3}, Lcom/waze/navigate/AddressOptionsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 514
    return-void

    .restart local v2       #type:Ljava/lang/Integer;
    :cond_1
    move v1, v3

    .line 509
    goto :goto_0
.end method

.method public navigateCallback(I)V
    .locals 1
    .parameter "rc"

    .prologue
    .line 603
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/waze/navigate/AddressOptionsActivity;->setResult(I)V

    .line 604
    invoke-virtual {p0}, Lcom/waze/navigate/AddressOptionsActivity;->finish()V

    .line 605
    return-void
.end method

.method public nextSearchResult(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 526
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/waze/navigate/AddressOptionsActivity;->selectedItem:I

    add-int/lit8 v1, v1, 0x1

    if-gt v0, v1, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    iget v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->selectedItem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->selectedItem:I

    .line 530
    invoke-direct {p0}, Lcom/waze/navigate/AddressOptionsActivity;->refreshView()V

    .line 531
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    iget v1, p0, Lcom/waze/navigate/AddressOptionsActivity;->selectedItem:I

    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->notifyAddressItemClicked(I)V

    .line 532
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v1, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    iget v1, v1, Lcom/waze/navigate/AddressItem;->index:I

    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getLocationX()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v3}, Lcom/waze/navigate/AddressItem;->getLocationY()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v5}, Lcom/waze/navigate/AddressItem;->getIcon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/waze/navigate/DriveToNativeManager;->centerMapInAddressOptionsView(IIIZLjava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v1, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    iget v1, v1, Lcom/waze/navigate/AddressItem;->index:I

    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->notifyAddressItemShownBeforeNavigate(I)V

    .line 536
    const-string v0, "ADS_PREVIEW_SHOWN"

    invoke-direct {p0, v0}, Lcom/waze/navigate/AddressOptionsActivity;->logAnalyticsAds(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 112
    const/16 v1, 0x14d

    if-ne p1, v1, :cond_2

    .line 114
    if-ne p2, v2, :cond_1

    .line 116
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 117
    .local v0, resultIntent:Landroid/content/Intent;
    const-string v1, "AddressItem"

    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 118
    const v1, 0x800e

    invoke-virtual {p0, v1, v0}, Lcom/waze/navigate/AddressOptionsActivity;->setResult(ILandroid/content/Intent;)V

    .line 119
    invoke-virtual {p0}, Lcom/waze/navigate/AddressOptionsActivity;->finish()V

    .line 137
    .end local v0           #resultIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 138
    return-void

    .line 123
    :cond_1
    invoke-virtual {p0, v2}, Lcom/waze/navigate/AddressOptionsActivity;->setResult(I)V

    .line 124
    invoke-virtual {p0}, Lcom/waze/navigate/AddressOptionsActivity;->finish()V

    goto :goto_0

    .line 127
    :cond_2
    if-ne p2, v3, :cond_3

    .line 129
    invoke-virtual {p0, v3}, Lcom/waze/navigate/AddressOptionsActivity;->setResult(I)V

    .line 130
    invoke-virtual {p0}, Lcom/waze/navigate/AddressOptionsActivity;->finish()V

    goto :goto_0

    .line 132
    :cond_3
    if-ne p2, v2, :cond_0

    .line 134
    invoke-virtual {p0, v2}, Lcom/waze/navigate/AddressOptionsActivity;->setResult(I)V

    .line 135
    invoke-virtual {p0}, Lcom/waze/navigate/AddressOptionsActivity;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 592
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 593
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->mapView:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->onPause()V

    .line 594
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v0}, Lcom/waze/navigate/DriveToNativeManager;->unsetAddressOptionsView()V

    .line 595
    invoke-direct {p0}, Lcom/waze/navigate/AddressOptionsActivity;->setUpActivity()V

    .line 596
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->mapView:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->onResume()V

    .line 598
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 94
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0, v2}, Lcom/waze/navigate/AddressOptionsActivity;->requestWindowFeature(I)Z

    .line 96
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    .line 98
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->OpenRoutingIntent()V

    .line 100
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 101
    invoke-virtual {p0}, Lcom/waze/navigate/AddressOptionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "AdditionalButton"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->isAdditionalAddToFavorites:Z

    .line 102
    invoke-virtual {p0}, Lcom/waze/navigate/AddressOptionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ClearAdsContext"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->isClearAdsContext:Z

    .line 103
    invoke-virtual {p0}, Lcom/waze/navigate/AddressOptionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Navigateable"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->isNavigateable:Z

    .line 104
    new-instance v0, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;

    iget-boolean v1, p0, Lcom/waze/navigate/AddressOptionsActivity;->isNavigateable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;-><init>(Lcom/waze/navigate/AddressOptionsActivity;Ljava/lang/Boolean;)V

    iput-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->previewTabsManager:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;

    .line 106
    invoke-direct {p0}, Lcom/waze/navigate/AddressOptionsActivity;->setUpActivity()V

    .line 107
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->previewTabsManager:Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;

    invoke-virtual {p0}, Lcom/waze/navigate/AddressOptionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "SelectedTab"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/waze/navigate/AddressOptionsActivity$PreviewTabsManager;->setSelectedTab(I)V

    .line 108
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 488
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onDestroy()V

    .line 489
    iget-boolean v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->isClearAdsContext:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->getType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->getMeetingId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 491
    :cond_0
    invoke-static {}, Lcom/waze/analytics/Analytics;->adsContextClear()V

    .line 493
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 480
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onPause()V

    .line 481
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->mapView:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->onPause()V

    .line 482
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v0}, Lcom/waze/navigate/DriveToNativeManager;->unsetAddressOptionsView()V

    .line 483
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 498
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onResume()V

    .line 499
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->mapView:Lcom/waze/MapView;

    invoke-virtual {v0}, Lcom/waze/MapView;->onResume()V

    .line 500
    return-void
.end method

.method public onUpdateEta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "provider"
    .parameter "distance"
    .parameter "id"

    .prologue
    .line 848
    iget-object v1, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v1}, Lcom/waze/navigate/AddressItem;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v1}, Lcom/waze/navigate/AddressItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 851
    :cond_1
    iget-object v1, p0, Lcom/waze/navigate/AddressOptionsActivity;->layoutView:Landroid/view/View;

    const v2, 0x7f0900c6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 852
    .local v0, distanceTextView:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public prevSearchResult(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 539
    iget v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->selectedItem:I

    if-nez v0, :cond_0

    .line 547
    :goto_0
    return-void

    .line 542
    :cond_0
    iget v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->selectedItem:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->selectedItem:I

    .line 543
    invoke-direct {p0}, Lcom/waze/navigate/AddressOptionsActivity;->refreshView()V

    .line 544
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v1, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    iget v1, v1, Lcom/waze/navigate/AddressItem;->index:I

    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getLocationX()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v3}, Lcom/waze/navigate/AddressItem;->getLocationY()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v5}, Lcom/waze/navigate/AddressItem;->getIcon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/waze/navigate/DriveToNativeManager;->centerMapInAddressOptionsView(IIIZLjava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v1, p0, Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;

    iget v1, v1, Lcom/waze/navigate/AddressItem;->index:I

    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->notifyAddressItemShownBeforeNavigate(I)V

    goto :goto_0
.end method

.method public rightButtonClicked(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 520
    const-string v0, "WAZE"

    const-string v1, "right pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const-string v0, "ADS_PREVIEW_NAVIGATE"

    invoke-direct {p0, v0}, Lcom/waze/navigate/AddressOptionsActivity;->logAnalyticsAds(Ljava/lang/String;)V

    .line 522
    invoke-static {}, Lcom/waze/analytics/Analytics;->adsContextNavigationInit()V

    .line 523
    sget-object v0, Lcom/waze/navigate/AddressOptionsActivity;->buttons:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/navigate/GenericView;

    const v1, 0x7f0900bd

    invoke-virtual {p0, v1}, Lcom/waze/navigate/AddressOptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/waze/navigate/GenericView;->onClick(Lcom/waze/navigate/AddressOptionsActivity;Landroid/view/View;)V

    .line 524
    return-void
.end method
