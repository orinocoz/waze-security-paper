.class public final Lcom/waze/navigate/NavigateActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "NavigateActivity.java"

# interfaces
.implements Lcom/waze/navigate/DriveToNavigateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/navigate/NavigateActivity$NavListAdapter;
    }
.end annotation


# static fields
.field protected static final HINT_SIZE:F = 14.0f

.field private static final RQ_ADD_FAVORITE:I = 0x3ea

.field private static final RQ_ADD_HOME_WORK:I = 0x3e9

.field protected static final TEXT_SIZE:F = 16.0f


# instance fields
.field getHistoryCallback:Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;

.field getTopTenFavoritesCallback:Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;

.field private isKeyboardVisible:Z

.field private isStopPoint:Z

.field private isStopPointMessage:Z

.field private mAddresses:[Lcom/waze/navigate/AddressItem;

.field mCalendarAI:Lcom/waze/navigate/AddressItem;

.field private mLastAddressItem:Lcom/waze/navigate/AddressItem;

.field private mPlaceAdapter:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

.field private natMgr:Lcom/waze/NativeManager;

.field private nativeManager:Lcom/waze/NativeManager;

.field private nm:Lcom/waze/navigate/DriveToNativeManager;

.field searchBox:Landroid/widget/AutoCompleteTextView;

.field private speechString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 81
    iput-object v0, p0, Lcom/waze/navigate/NavigateActivity;->mAddresses:[Lcom/waze/navigate/AddressItem;

    .line 85
    iput-object v0, p0, Lcom/waze/navigate/NavigateActivity;->mLastAddressItem:Lcom/waze/navigate/AddressItem;

    .line 867
    new-instance v0, Lcom/waze/navigate/NavigateActivity$1;

    invoke-direct {v0, p0}, Lcom/waze/navigate/NavigateActivity$1;-><init>(Lcom/waze/navigate/NavigateActivity;)V

    iput-object v0, p0, Lcom/waze/navigate/NavigateActivity;->getHistoryCallback:Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;

    .line 906
    new-instance v0, Lcom/waze/navigate/NavigateActivity$2;

    invoke-direct {v0, p0}, Lcom/waze/navigate/NavigateActivity$2;-><init>(Lcom/waze/navigate/NavigateActivity;)V

    iput-object v0, p0, Lcom/waze/navigate/NavigateActivity;->getTopTenFavoritesCallback:Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;

    .line 68
    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/NavigateActivity;[Lcom/waze/navigate/AddressItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/waze/navigate/NavigateActivity;->mAddresses:[Lcom/waze/navigate/AddressItem;

    return-void
.end method

.method static synthetic access$1(Lcom/waze/navigate/NavigateActivity;)[Lcom/waze/navigate/AddressItem;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity;->mAddresses:[Lcom/waze/navigate/AddressItem;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/navigate/NavigateActivity;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity;->natMgr:Lcom/waze/NativeManager;

    return-object v0
.end method

.method static synthetic access$3(Lcom/waze/navigate/NavigateActivity;Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/waze/navigate/NavigateActivity;->mPlaceAdapter:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    return-void
.end method

.method static synthetic access$4(Lcom/waze/navigate/NavigateActivity;)Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity;->mPlaceAdapter:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/waze/navigate/NavigateActivity;)Lcom/waze/navigate/DriveToNativeManager;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    return-object v0
.end method

.method static synthetic access$6(Lcom/waze/navigate/NavigateActivity;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity;->nativeManager:Lcom/waze/NativeManager;

    return-object v0
.end method

.method static synthetic access$7(Lcom/waze/navigate/NavigateActivity;Lcom/waze/navigate/AddressItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 451
    invoke-direct {p0, p1}, Lcom/waze/navigate/NavigateActivity;->calendarOptions(Lcom/waze/navigate/AddressItem;)V

    return-void
.end method

.method private calendarOptions(Lcom/waze/navigate/AddressItem;)V
    .locals 4
    .parameter "ai"

    .prologue
    const/4 v3, 0x1

    .line 452
    iget-object v1, p0, Lcom/waze/navigate/NavigateActivity;->mCalendarAI:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v1}, Lcom/waze/navigate/AddressItem;->getMeetingId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/waze/navigate/AddressItem;->setMeetingId(Ljava/lang/String;)V

    .line 453
    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/waze/navigate/AddressItem;->setCategory(Ljava/lang/Integer;)V

    .line 454
    iget-object v1, p0, Lcom/waze/navigate/NavigateActivity;->mCalendarAI:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v1}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/waze/navigate/AddressItem;->setTitle(Ljava/lang/String;)V

    .line 455
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/navigate/AddressPreviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 456
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "AddressItem"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 457
    const-string v1, "CalendarAddressItem"

    iget-object v2, p0, Lcom/waze/navigate/NavigateActivity;->mCalendarAI:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 458
    const-string v1, "ClearAdsContext"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 459
    invoke-virtual {p0, v0, v3}, Lcom/waze/navigate/NavigateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 460
    return-void
.end method

.method private initLayout()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f09046f

    const v6, 0x7f090470

    .line 270
    const v3, 0x7f030095

    invoke-virtual {p0, v3}, Lcom/waze/navigate/NavigateActivity;->setContentView(I)V

    .line 271
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v3

    iput-object v3, p0, Lcom/waze/navigate/NavigateActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 272
    const v3, 0x7f090058

    invoke-virtual {p0, v3}, Lcom/waze/navigate/NavigateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/waze/view/title/TitleBar;

    iget-object v4, p0, Lcom/waze/navigate/NavigateActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_NAVIGATE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 273
    const v3, 0x7f090472

    invoke-virtual {p0, v3}, Lcom/waze/navigate/NavigateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/navigate/NavigateActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_FAVORITES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    invoke-virtual {p0, v6}, Lcom/waze/navigate/NavigateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/navigate/NavigateActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_CATEGORIES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    const v3, 0x7f090474

    invoke-virtual {p0, v3}, Lcom/waze/navigate/NavigateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/navigate/NavigateActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_FRIENDS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v3, p0, Lcom/waze/navigate/NavigateActivity;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v3}, Lcom/waze/NativeManager;->isGasUpdateable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 278
    invoke-virtual {p0, v7}, Lcom/waze/navigate/NavigateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0201aa

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 279
    invoke-virtual {p0, v6}, Lcom/waze/navigate/NavigateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/navigate/NavigateActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_GAS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    :goto_0
    const v3, 0x7f090061

    invoke-virtual {p0, v3}, Lcom/waze/navigate/NavigateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/AutoCompleteTextView;

    iput-object v3, p0, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    .line 288
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-gt v3, v4, :cond_2

    .line 291
    iget-object v3, p0, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const-string v5, "#cbd6da"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    :goto_1
    iget-object v3, p0, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    new-instance v4, Lcom/waze/navigate/NavigateActivity$3;

    invoke-direct {v4, p0}, Lcom/waze/navigate/NavigateActivity$3;-><init>(Lcom/waze/navigate/NavigateActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 376
    iget-object v3, p0, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    iget-object v4, p0, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    invoke-static {p0, v4, v8}, Lcom/waze/utils/EditTextUtils;->getKeyboardLockOnTouchListener(Landroid/content/Context;Landroid/widget/EditText;Lcom/waze/utils/EditTextUtils$OnTouchListenerDoneListener;)Landroid/view/View$OnTouchListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 377
    iget-object v3, p0, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    iget-object v4, p0, Lcom/waze/navigate/NavigateActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_SEARCH_ADDRESS__PLACE_OR_CONTACT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v3, p0, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    new-instance v4, Lcom/waze/navigate/NavigateActivity$4;

    invoke-direct {v4, p0}, Lcom/waze/navigate/NavigateActivity$4;-><init>(Lcom/waze/navigate/NavigateActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 393
    iget-object v3, p0, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    new-instance v4, Lcom/waze/navigate/NavigateActivity$5;

    invoke-direct {v4, p0}, Lcom/waze/navigate/NavigateActivity$5;-><init>(Lcom/waze/navigate/NavigateActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 412
    iget-object v3, p0, Lcom/waze/navigate/NavigateActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v4, p0, Lcom/waze/navigate/NavigateActivity;->getTopTenFavoritesCallback:Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;

    invoke-virtual {v3, v4}, Lcom/waze/navigate/DriveToNativeManager;->getTopTenFavorites(Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;)V

    .line 413
    iget-object v3, p0, Lcom/waze/navigate/NavigateActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v4, p0, Lcom/waze/navigate/NavigateActivity;->getHistoryCallback:Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;

    invoke-virtual {v3, v4}, Lcom/waze/navigate/DriveToNativeManager;->getAutoCompleteData(Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;)V

    .line 416
    const v3, 0x7f090062

    invoke-virtual {p0, v3}, Lcom/waze/navigate/NavigateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 417
    .local v2, speakButton:Landroid/widget/ImageButton;
    invoke-virtual {p0}, Lcom/waze/navigate/NavigateActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 418
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 417
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 419
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 420
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 423
    :cond_0
    const v3, 0x7f09046c

    invoke-virtual {p0, v3}, Lcom/waze/navigate/NavigateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 424
    .local v1, listView:Landroid/widget/ListView;
    new-instance v3, Lcom/waze/navigate/NavigateActivity$6;

    invoke-direct {v3, p0}, Lcom/waze/navigate/NavigateActivity$6;-><init>(Lcom/waze/navigate/NavigateActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 431
    new-instance v3, Lcom/waze/navigate/NavigateActivity$7;

    invoke-direct {v3, p0, v1}, Lcom/waze/navigate/NavigateActivity$7;-><init>(Lcom/waze/navigate/NavigateActivity;Landroid/widget/ListView;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 449
    return-void

    .line 283
    .end local v0           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1           #listView:Landroid/widget/ListView;
    .end local v2           #speakButton:Landroid/widget/ImageButton;
    :cond_1
    invoke-virtual {p0, v7}, Lcom/waze/navigate/NavigateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0201a1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 284
    invoke-virtual {p0, v6}, Lcom/waze/navigate/NavigateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/waze/navigate/NavigateActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_CATEGORIES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 295
    :cond_2
    iget-object v3, p0, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3, v8}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public PlaceClickedByAutoComplete(Landroid/view/View;Lcom/waze/autocomplete/PlaceData;)V
    .locals 13
    .parameter "v"
    .parameter "p"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 207
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity;->mCalendarAI:Lcom/waze/navigate/AddressItem;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/waze/autocomplete/PlaceData;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    new-instance v11, Lcom/waze/navigate/AddressItem;

    invoke-direct {v11, p2}, Lcom/waze/navigate/AddressItem;-><init>(Lcom/waze/autocomplete/PlaceData;)V

    .line 210
    .local v11, addressItem:Lcom/waze/navigate/AddressItem;
    new-instance v12, Landroid/content/Intent;

    const-class v0, Lcom/waze/navigate/AddressPreviewActivity;

    invoke-direct {v12, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    .local v12, intent:Landroid/content/Intent;
    const-string v0, "AddressItem"

    invoke-virtual {v12, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 212
    const-string v0, "preview_load_venue"

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0, v12, v1}, Lcom/waze/navigate/NavigateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 227
    .end local v11           #addressItem:Lcom/waze/navigate/AddressItem;
    .end local v12           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    sget v1, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    iget-object v2, p0, Lcom/waze/navigate/NavigateActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->setUpdateHandler(ILandroid/os/Handler;)V

    .line 218
    iget-object v6, p2, Lcom/waze/autocomplete/PlaceData;->mTitle:Ljava/lang/String;

    .line 220
    .local v6, sText:Ljava/lang/String;
    iget-object v0, p2, Lcom/waze/autocomplete/PlaceData;->mSecondaryTitle:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/waze/autocomplete/PlaceData;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/waze/autocomplete/PlaceData;->mSecondaryTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity;->natMgr:Lcom/waze/NativeManager;

    iget-object v1, p2, Lcom/waze/autocomplete/PlaceData;->mVenueId:Ljava/lang/String;

    iget-object v2, p2, Lcom/waze/autocomplete/PlaceData;->mReference:Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/navigate/NavigateActivity;->mCalendarAI:Lcom/waze/navigate/AddressItem;

    const/4 v4, 0x0

    .line 226
    iget v8, p2, Lcom/waze/autocomplete/PlaceData;->mfeature:I

    iget-object v9, p2, Lcom/waze/autocomplete/PlaceData;->mResponse:Ljava/lang/String;

    iget-object v7, p0, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v7}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    move v7, v5

    .line 225
    invoke-virtual/range {v0 .. v10}, Lcom/waze/NativeManager;->AutoCompletePlaceClicked(Ljava/lang/String;Ljava/lang/String;Lcom/waze/navigate/AddressItem;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public SetHandlerForAutocomplete()V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    sget v1, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    iget-object v2, p0, Lcom/waze/navigate/NavigateActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 172
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    sget v1, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    iget-object v2, p0, Lcom/waze/navigate/NavigateActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->setUpdateHandler(ILandroid/os/Handler;)V

    .line 173
    return-void
.end method

.method public addressItemClicked(Landroid/view/View;)V
    .locals 20
    .parameter "v"

    .prologue
    .line 603
    const v1, 0x7f09002c

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/waze/navigate/AddressItem;

    .line 604
    .local v12, ai:Lcom/waze/navigate/AddressItem;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/navigate/NavigateActivity;->mPlaceAdapter:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->setIsCalendar(Z)V

    .line 606
    if-eqz v12, :cond_1

    .line 607
    invoke-virtual {v12}, Lcom/waze/navigate/AddressItem;->getType()Ljava/lang/Integer;

    move-result-object v19

    .line 608
    .local v19, type:Ljava/lang/Integer;
    if-eqz v19, :cond_2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 609
    :cond_0
    new-instance v15, Landroid/content/Intent;

    const-class v1, Lcom/waze/navigate/AddHomeWorkActivity;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 610
    .local v15, intent:Landroid/content/Intent;
    const-string v1, "AddressType"

    move-object/from16 v0, v19

    invoke-virtual {v15, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 611
    const/16 v1, 0x3e9

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v1}, Lcom/waze/navigate/NavigateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 739
    .end local v15           #intent:Landroid/content/Intent;
    .end local v19           #type:Ljava/lang/Integer;
    :cond_1
    :goto_0
    return-void

    .line 612
    .restart local v19       #type:Ljava/lang/Integer;
    :cond_2
    if-eqz v19, :cond_3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    .line 613
    new-instance v15, Landroid/content/Intent;

    const-class v1, Lcom/waze/navigate/AddFavoriteActivity;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 614
    .restart local v15       #intent:Landroid/content/Intent;
    const-string v1, "AddressType"

    move-object/from16 v0, v19

    invoke-virtual {v15, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 615
    const/16 v1, 0x3ea

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v1}, Lcom/waze/navigate/NavigateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 617
    .end local v15           #intent:Landroid/content/Intent;
    :cond_3
    if-eqz v19, :cond_5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 619
    const-string v1, "DRIVE_TYPE"

    const-string v2, "VAUE"

    const-string v3, "HOME"

    invoke-static {v1, v2, v3}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    :cond_4
    :goto_1
    if-eqz v19, :cond_8

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_8

    .line 635
    const-string v1, "FACEBOOK_CONNECT_CLICK"

    const-string v2, "VAUE"

    const-string v3, "NAVIGATE_SCREEN"

    invoke-static {v1, v2, v3}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->getInstance()Lcom/waze/social/facebook/FacebookWrapper;

    move-result-object v1

    new-instance v2, Lcom/waze/navigate/NavigateActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/waze/navigate/NavigateActivity$8;-><init>(Lcom/waze/navigate/NavigateActivity;)V

    .line 642
    const/4 v3, 0x1

    .line 636
    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v2, v3}, Lcom/waze/social/facebook/FacebookWrapper;->authorize(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;Z)V

    goto :goto_0

    .line 621
    :cond_5
    if-eqz v19, :cond_6

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 623
    const-string v1, "DRIVE_TYPE"

    const-string v2, "VAUE"

    const-string v3, "WORK"

    invoke-static {v1, v2, v3}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 625
    :cond_6
    if-eqz v19, :cond_7

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    .line 627
    const-string v1, "DRIVE_TYPE"

    const-string v2, "VAUE"

    const-string v3, "OTHER_FAV"

    invoke-static {v1, v2, v3}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 629
    :cond_7
    if-eqz v19, :cond_4

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 631
    const-string v1, "DRIVE_TYPE"

    const-string v2, "VAUE"

    const-string v3, "HISTORY"

    invoke-static {v1, v2, v3}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 644
    :cond_8
    if-eqz v19, :cond_a

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_a

    .line 646
    invoke-virtual {v12}, Lcom/waze/navigate/AddressItem;->getIsValidate()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 648
    const-string v1, "DRIVE_TYPE"

    const-string v2, "VAUE"

    const-string v3, "FB_EVENT"

    invoke-static {v1, v2, v3}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/navigate/NavigateActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v12}, Lcom/waze/navigate/AddressItem;->getMeetingId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/waze/navigate/DriveToNativeManager;->drive(Ljava/lang/String;Z)V

    .line 650
    const/4 v1, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/waze/navigate/NavigateActivity;->setResult(I)V

    .line 651
    invoke-virtual/range {p0 .. p0}, Lcom/waze/navigate/NavigateActivity;->finish()V

    goto/16 :goto_0

    .line 655
    :cond_9
    new-instance v15, Landroid/content/Intent;

    const-class v1, Lcom/waze/mywaze/social/FacebookEventActivity;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 656
    .restart local v15       #intent:Landroid/content/Intent;
    const-string v1, "AddressItem"

    invoke-virtual {v15, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 657
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v1}, Lcom/waze/navigate/NavigateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 660
    .end local v15           #intent:Landroid/content/Intent;
    :cond_a
    if-eqz v19, :cond_b

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_b

    .line 662
    const-string v1, "DRIVE_TYPE"

    const-string v2, "VAUE"

    const-string v3, "HISTORY"

    invoke-static {v1, v2, v3}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/navigate/NavigateActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v12}, Lcom/waze/navigate/AddressItem;->getMeetingId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/waze/navigate/DriveToNativeManager;->drive(Ljava/lang/String;Z)V

    .line 664
    const/4 v1, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/waze/navigate/NavigateActivity;->setResult(I)V

    .line 665
    invoke-virtual/range {p0 .. p0}, Lcom/waze/navigate/NavigateActivity;->finish()V

    goto/16 :goto_0

    .line 667
    :cond_b
    if-eqz v19, :cond_c

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_c

    .line 670
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/navigate/NavigateActivity;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v1}, Lcom/waze/NativeManager;->CalendaRequestAccessNTV()V

    .line 671
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/navigate/NavigateActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v1}, Lcom/waze/navigate/DriveToNativeManager;->fetchCalendarEvents()I

    move-result v13

    .line 673
    .local v13, count:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/navigate/NavigateActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_DONT_FORGET_TO_INCLUDE_LOCATIONS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v18

    .line 674
    .local v18, progressMsgTxt:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/navigate/NavigateActivity;->nativeManager:Lcom/waze/NativeManager;

    const-string v2, "calendar_added"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0, v2}, Lcom/waze/NativeManager;->OpenProgressIconPopup(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/navigate/NavigateActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/navigate/NavigateActivity;->getTopTenFavoritesCallback:Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;

    invoke-virtual {v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->getTopTenFavorites(Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;)V

    .line 677
    new-instance v14, Landroid/os/Handler;

    invoke-direct {v14}, Landroid/os/Handler;-><init>()V

    .line 678
    .local v14, hn:Landroid/os/Handler;
    new-instance v1, Lcom/waze/navigate/NavigateActivity$9;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/waze/navigate/NavigateActivity$9;-><init>(Lcom/waze/navigate/NavigateActivity;)V

    .line 682
    const-wide/16 v2, 0xbb8

    .line 678
    invoke-virtual {v14, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 685
    .end local v13           #count:I
    .end local v14           #hn:Landroid/os/Handler;
    .end local v18           #progressMsgTxt:Ljava/lang/String;
    :cond_c
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_d

    invoke-virtual {v12}, Lcom/waze/navigate/AddressItem;->getMeetingId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 687
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/navigate/NavigateActivity;->natMgr:Lcom/waze/NativeManager;

    iget-object v2, v12, Lcom/waze/navigate/AddressItem;->VanueID:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v12}, Lcom/waze/navigate/AddressItem;->getMeetingId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v1 .. v11}, Lcom/waze/NativeManager;->AutoCompletePlaceClicked(Ljava/lang/String;Ljava/lang/String;Lcom/waze/navigate/AddressItem;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 689
    :cond_d
    if-eqz v19, :cond_10

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_10

    .line 691
    invoke-virtual {v12}, Lcom/waze/navigate/AddressItem;->getIsValidate()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 693
    const-string v1, "DRIVE_TO_CALENDAR"

    const-string v2, "VAUE"

    invoke-virtual {v12}, Lcom/waze/navigate/AddressItem;->getMeetingId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const-string v1, "DRIVE_TYPE"

    const-string v2, "VAUE"

    const-string v3, "CALENDAR"

    invoke-static {v1, v2, v3}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/navigate/NavigateActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    move-object/from16 v0, p0

    invoke-virtual {v1, v12, v0}, Lcom/waze/navigate/DriveToNativeManager;->navigate(Lcom/waze/navigate/AddressItem;Lcom/waze/navigate/DriveToNavigateCallback;)V

    goto/16 :goto_0

    .line 700
    :cond_e
    const-string v1, "CALENDAR_EVENT_PRESSED"

    const-string v2, "VAUE"

    invoke-virtual {v12}, Lcom/waze/navigate/AddressItem;->getMeetingId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/navigate/NavigateActivity;->natMgr:Lcom/waze/NativeManager;

    invoke-virtual {v1}, Lcom/waze/NativeManager;->getAutoCompleteFeatures()I

    move-result v17

    .line 703
    .local v17, nFeatures:I
    if-eqz v17, :cond_f

    .line 705
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/waze/navigate/NavigateActivity;->mCalendarAI:Lcom/waze/navigate/AddressItem;

    .line 706
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v12}, Lcom/waze/navigate/AddressItem;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 707
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/navigate/NavigateActivity;->mPlaceAdapter:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;->setIsCalendar(Z)V

    .line 708
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 709
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v12}, Lcom/waze/navigate/AddressItem;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 710
    const-string v1, "input_method"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/waze/navigate/NavigateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/inputmethod/InputMethodManager;

    .line 711
    .local v16, mgr:Landroid/view/inputmethod/InputMethodManager;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    const/4 v2, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto/16 :goto_0

    .line 721
    .end local v16           #mgr:Landroid/view/inputmethod/InputMethodManager;
    :cond_f
    new-instance v15, Landroid/content/Intent;

    const-class v1, Lcom/waze/navigate/AddFavoriteActivity;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 722
    .restart local v15       #intent:Landroid/content/Intent;
    const-string v1, "SearchStr"

    invoke-virtual {v12}, Lcom/waze/navigate/AddressItem;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 723
    const-string v1, "AddressType"

    move-object/from16 v0, v19

    invoke-virtual {v15, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 724
    const-string v1, "AddressItem"

    invoke-virtual {v15, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 726
    const/16 v1, 0x3ea

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v1}, Lcom/waze/navigate/NavigateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 734
    .end local v15           #intent:Landroid/content/Intent;
    .end local v17           #nFeatures:I
    :cond_10
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/waze/navigate/AddressItem;->setCategory(Ljava/lang/Integer;)V

    .line 735
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/waze/navigate/NavigateActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v1, v12, v0, v2, v3}, Lcom/waze/navigate/DriveToNativeManager;->navigate(Lcom/waze/navigate/AddressItem;Lcom/waze/navigate/DriveToNavigateCallback;ZZ)V

    goto/16 :goto_0
.end method

.method public categoriesClicked(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 531
    iget-object v1, p0, Lcom/waze/navigate/NavigateActivity;->natMgr:Lcom/waze/NativeManager;

    invoke-virtual {v1}, Lcom/waze/NativeManager;->OpenSearchIntent()V

    .line 532
    const-string v1, "WAZE"

    const-string v2, "categories pressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v1, p0, Lcom/waze/navigate/NavigateActivity;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v1}, Lcom/waze/NativeManager;->isGasUpdateable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 536
    const-string v1, "MAIN_MENU_CLICK"

    const-string v2, "VAUE"

    const-string v3, "GAS"

    invoke-static {v1, v2, v3}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/navigate/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 538
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "SearchCategory"

    const-string v2, "GAS_STATION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    const-string v1, "SearchMode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 540
    invoke-virtual {p0, v0, v4}, Lcom/waze/navigate/NavigateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 549
    :goto_0
    return-void

    .line 544
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const-string v1, "MAIN_MENU_CLICK"

    const-string v2, "VAUE"

    const-string v3, "CATEGORIES"

    invoke-static {v1, v2, v3}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/navigate/CategoriesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 547
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0, v4}, Lcom/waze/navigate/NavigateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public favoritesClicked(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 525
    const-string v1, "WAZE"

    const-string v2, "favs pressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/navigate/FavoritesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 527
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/waze/navigate/NavigateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 528
    return-void
.end method

.method public moreActionClicked(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 552
    const v0, 0x7f09002c

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/waze/navigate/AddressItem;

    .line 554
    .local v11, addressItem:Lcom/waze/navigate/AddressItem;
    invoke-virtual {v11}, Lcom/waze/navigate/AddressItem;->getType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 555
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity;->natMgr:Lcom/waze/NativeManager;

    invoke-virtual {v0, v11}, Lcom/waze/NativeManager;->setSharedAddressItem(Lcom/waze/navigate/AddressItem;)V

    .line 556
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v11}, Lcom/waze/navigate/AddressItem;->getMeetingId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->InitMeeting(Ljava/lang/String;)V

    .line 577
    :goto_0
    return-void

    .line 560
    :cond_0
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Lcom/waze/navigate/AddressItem;->getType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 561
    invoke-virtual {v11}, Lcom/waze/navigate/AddressItem;->getMeetingId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 562
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    sget v1, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    iget-object v3, p0, Lcom/waze/navigate/NavigateActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v0, v1, v3}, Lcom/waze/navigate/DriveToNativeManager;->setUpdateHandler(ILandroid/os/Handler;)V

    .line 563
    iput-object v11, p0, Lcom/waze/navigate/NavigateActivity;->mLastAddressItem:Lcom/waze/navigate/AddressItem;

    .line 564
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity;->natMgr:Lcom/waze/NativeManager;

    iget-object v1, v11, Lcom/waze/navigate/AddressItem;->VanueID:Ljava/lang/String;

    invoke-virtual {v11}, Lcom/waze/navigate/AddressItem;->getMeetingId()Ljava/lang/String;

    move-result-object v4

    move-object v3, v2

    move-object v6, v2

    move v8, v5

    move-object v9, v2

    move-object v10, v2

    invoke-virtual/range {v0 .. v10}, Lcom/waze/NativeManager;->AutoCompletePlaceClicked(Ljava/lang/String;Ljava/lang/String;Lcom/waze/navigate/AddressItem;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 569
    :cond_1
    new-instance v12, Landroid/content/Intent;

    const-class v0, Lcom/waze/navigate/AddressPreviewActivity;

    invoke-direct {v12, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 570
    .local v12, intent:Landroid/content/Intent;
    const-string v0, "AddressItem"

    invoke-virtual {v12, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 572
    if-eqz v11, :cond_2

    iget-object v0, v11, Lcom/waze/navigate/AddressItem;->VanueID:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v11, Lcom/waze/navigate/AddressItem;->VanueID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 573
    const-string v0, "preview_load_venue"

    invoke-virtual {v12, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 576
    :cond_2
    invoke-virtual {p0, v12, v7}, Lcom/waze/navigate/NavigateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected myHandleMessage(Landroid/os/Message;)Z
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 581
    iget v4, p1, Landroid/os/Message;->what:I

    sget v5, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    if-ne v4, v5, :cond_1

    .line 582
    iget-object v4, p0, Lcom/waze/navigate/NavigateActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    sget v5, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    iget-object v6, p0, Lcom/waze/navigate/NavigateActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v4, v5, v6}, Lcom/waze/navigate/DriveToNativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 583
    iget-object v4, p0, Lcom/waze/navigate/NavigateActivity;->natMgr:Lcom/waze/NativeManager;

    invoke-virtual {v4}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 585
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 586
    .local v1, b:Landroid/os/Bundle;
    const-string v4, "address_item"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/waze/navigate/AddressItem;

    .line 587
    .local v0, ai:Lcom/waze/navigate/AddressItem;
    iget-object v4, p0, Lcom/waze/navigate/NavigateActivity;->mLastAddressItem:Lcom/waze/navigate/AddressItem;

    if-eqz v4, :cond_0

    .line 589
    iget-object v4, p0, Lcom/waze/navigate/NavigateActivity;->mLastAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v4}, Lcom/waze/navigate/AddressItem;->getType()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/waze/navigate/AddressItem;->setType(Ljava/lang/Integer;)V

    .line 590
    iget-object v4, p0, Lcom/waze/navigate/NavigateActivity;->mLastAddressItem:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v4}, Lcom/waze/navigate/AddressItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/waze/navigate/AddressItem;->setId(Ljava/lang/String;)V

    .line 591
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/waze/navigate/NavigateActivity;->mLastAddressItem:Lcom/waze/navigate/AddressItem;

    .line 594
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/waze/navigate/AddressPreviewActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 595
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "AddressItem"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 596
    invoke-virtual {p0, v2, v3}, Lcom/waze/navigate/NavigateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 599
    .end local v0           #ai:Lcom/waze/navigate/AddressItem;
    .end local v1           #b:Landroid/os/Bundle;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return v3

    :cond_1
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->myHandleMessage(Landroid/os/Message;)Z

    move-result v3

    goto :goto_0
.end method

.method public navigateCallback(I)V
    .locals 3
    .parameter "rc"

    .prologue
    .line 917
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "navigateCallback:rc="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/waze/navigate/NavigateActivity;->setResult(I)V

    .line 919
    invoke-virtual {p0}, Lcom/waze/navigate/NavigateActivity;->finish()V

    .line 920
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    .line 479
    const-string v2, "WAZE"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Navigate onActRes requestCode="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resultCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/16 v2, 0x4d2

    if-ne p1, v2, :cond_1

    .line 481
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 482
    const-string v2, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 483
    .local v0, matches:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 484
    const-string v2, "VOICE_SEARCH_RECOGNIZED"

    invoke-static {v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 485
    iget-object v3, p0, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/waze/navigate/NavigateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 487
    .local v1, mgr:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 504
    .end local v0           #matches:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v1           #mgr:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 505
    return-void

    .line 491
    :cond_1
    if-ne p2, v5, :cond_2

    .line 493
    invoke-virtual {p0, v5}, Lcom/waze/navigate/NavigateActivity;->setResult(I)V

    .line 494
    invoke-virtual {p0}, Lcom/waze/navigate/NavigateActivity;->finish()V

    goto :goto_0

    .line 496
    :cond_2
    const v2, 0x800f

    if-ne p2, v2, :cond_3

    .line 497
    iget-object v2, p0, Lcom/waze/navigate/NavigateActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v3, p0, Lcom/waze/navigate/NavigateActivity;->getTopTenFavoritesCallback:Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;

    invoke-virtual {v2, v3}, Lcom/waze/navigate/DriveToNativeManager;->getTopTenFavorites(Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;)V

    goto :goto_0

    .line 499
    :cond_3
    if-eqz p2, :cond_0

    .line 500
    invoke-virtual {p0, p2, p3}, Lcom/waze/navigate/NavigateActivity;->setResult(ILandroid/content/Intent;)V

    .line 501
    invoke-virtual {p0}, Lcom/waze/navigate/NavigateActivity;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v0}, Lcom/waze/navigate/DriveToNativeManager;->cancelStopPointAndRemoveDeparturePoi()V

    .line 166
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onBackPressed()V

    .line 167
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 265
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 266
    invoke-direct {p0}, Lcom/waze/navigate/NavigateActivity;->initLayout()V

    .line 267
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0, v3}, Lcom/waze/navigate/NavigateActivity;->requestWindowFeature(I)Z

    .line 94
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navigate/NavigateActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    .line 95
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navigate/NavigateActivity;->natMgr:Lcom/waze/NativeManager;

    .line 98
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity;->natMgr:Lcom/waze/NativeManager;

    invoke-virtual {v0}, Lcom/waze/NativeManager;->OpenSearchIntent()V

    .line 99
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity;->natMgr:Lcom/waze/NativeManager;

    invoke-virtual {v0}, Lcom/waze/NativeManager;->OpenRoutingIntent()V

    .line 101
    invoke-virtual {p0}, Lcom/waze/navigate/NavigateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "stopPoint"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/waze/navigate/NavigateActivity;->isStopPoint:Z

    .line 102
    invoke-virtual {p0}, Lcom/waze/navigate/NavigateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "keyboard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/waze/navigate/NavigateActivity;->isKeyboardVisible:Z

    .line 103
    invoke-virtual {p0}, Lcom/waze/navigate/NavigateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "stopPointMessage"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/waze/navigate/NavigateActivity;->isStopPointMessage:Z

    .line 104
    invoke-virtual {p0}, Lcom/waze/navigate/NavigateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Speech"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/navigate/NavigateActivity;->speechString:Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/navigate/NavigateActivity;->mCalendarAI:Lcom/waze/navigate/AddressItem;

    .line 108
    invoke-direct {p0}, Lcom/waze/navigate/NavigateActivity;->initLayout()V

    .line 110
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity;->speechString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/waze/navigate/NavigateActivity;->speechString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :cond_0
    iget-boolean v0, p0, Lcom/waze/navigate/NavigateActivity;->isKeyboardVisible:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity;->speechString:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 119
    :cond_1
    const-string v0, "SEARCH_BAR"

    invoke-static {v0}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v0, v3}, Lcom/waze/navigate/DriveToNativeManager;->setSearchMode(Z)V

    .line 122
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/waze/navigate/NavigateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    .line 123
    .local v6, mgr:Landroid/view/inputmethod/InputMethodManager;
    const/4 v0, 0x2

    invoke-virtual {v6, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 131
    .end local v6           #mgr:Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v0}, Lcom/waze/NativeManager;->isNavigatingNTV()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 133
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v0, v3}, Lcom/waze/navigate/DriveToNativeManager;->setStopPoint(Z)V

    .line 140
    :goto_1
    iget-boolean v0, p0, Lcom/waze/navigate/NavigateActivity;->isStopPointMessage:Z

    if-eqz v0, :cond_2

    .line 141
    invoke-static {}, Lcom/waze/MsgBox;->getInstance()Lcom/waze/MsgBox;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/NavigateActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_STOP_POINT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 142
    iget-object v2, p0, Lcom/waze/navigate/NavigateActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_YOU_SHOULD_NOW_SEARCH_FOR_AND_SELECT_YOUR_STOP_POINT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 143
    const/16 v3, 0x8

    const-wide/16 v4, 0x0

    .line 141
    invoke-virtual/range {v0 .. v5}, Lcom/waze/MsgBox;->OpenMessageBoxTimeoutCb(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 146
    :cond_2
    invoke-virtual {p0}, Lcom/waze/navigate/NavigateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "AddressItem"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    invoke-virtual {p0}, Lcom/waze/navigate/NavigateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "AddressItem"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/waze/navigate/AddressItem;

    .line 148
    iput-object v0, p0, Lcom/waze/navigate/NavigateActivity;->mCalendarAI:Lcom/waze/navigate/AddressItem;

    .line 150
    const v0, 0x7f090058

    invoke-virtual {p0, v0}, Lcom/waze/navigate/NavigateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleBar;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_VERIFY_ADDRESS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/waze/view/title/TitleBar;->setTitle(Ljava/lang/String;)V

    .line 152
    :cond_3
    return-void

    .line 127
    :cond_4
    const-string v0, "SEARCH_MENU"

    invoke-static {v0}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v0, v2}, Lcom/waze/navigate/DriveToNativeManager;->setSearchMode(Z)V

    goto :goto_0

    .line 137
    :cond_5
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    iget-boolean v1, p0, Lcom/waze/navigate/NavigateActivity;->isStopPoint:Z

    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->setStopPoint(Z)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    sget v1, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    iget-object v2, p0, Lcom/waze/navigate/NavigateActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 159
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->setStopPoint(Z)V

    .line 160
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onDestroy()V

    .line 161
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 924
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onPause()V

    .line 925
    iget-object v1, p0, Lcom/waze/navigate/NavigateActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    sget v2, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    iget-object v3, p0, Lcom/waze/navigate/NavigateActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v1, v2, v3}, Lcom/waze/navigate/DriveToNativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 926
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/waze/navigate/NavigateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 927
    .local v0, mgr:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 928
    return-void
.end method

.method public pickupClicked(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 511
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->getFacebookLoggedInNTV()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/mywaze/MyWazeNativeManager;->getContactLoggedInNTV()Z

    move-result v1

    if-nez v1, :cond_0

    .line 513
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/navigate/social/AddFriendsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 514
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0, v2}, Lcom/waze/navigate/NavigateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 522
    :goto_0
    return-void

    .line 518
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/navigate/social/MyFriendsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 519
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0, v2}, Lcom/waze/navigate/NavigateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public searchClicked(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 231
    const-string v0, "WAZE"

    const-string v3, "Search pressed"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity;->nativeManager:Lcom/waze/NativeManager;

    iget-object v3, p0, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/waze/NativeManager;->isCategorySearchNTV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, sCategory:Ljava/lang/String;
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "#test#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v3, p0, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/waze/navigate/DriveToNativeManager;->search(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/waze/navigate/DriveToSearchCallback;)V

    .line 237
    invoke-virtual {p0}, Lcom/waze/navigate/NavigateActivity;->finish()V

    .line 262
    :goto_0
    return-void

    .line 241
    :cond_0
    new-instance v6, Landroid/content/Intent;

    const-class v0, Lcom/waze/navigate/SearchActivity;

    invoke-direct {v6, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    .local v6, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    :cond_1
    const-string v0, "SearchStr"

    iget-object v2, p0, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    :goto_1
    iget-object v0, p0, Lcom/waze/navigate/NavigateActivity;->mCalendarAI:Lcom/waze/navigate/AddressItem;

    if-eqz v0, :cond_3

    .line 254
    const-string v0, "SearchMode"

    const/16 v2, 0x9

    invoke-virtual {v6, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    const-string v0, "AddressItem"

    iget-object v2, p0, Lcom/waze/navigate/NavigateActivity;->mCalendarAI:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v6, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 260
    :goto_2
    invoke-virtual {p0, v6, v4}, Lcom/waze/navigate/NavigateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 249
    :cond_2
    const-string v0, "SearchCategory"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 259
    :cond_3
    const-string v0, "SearchMode"

    const/4 v2, 0x2

    invoke-virtual {v6, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2
.end method

.method public searchClickedByAutoComplete(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 176
    const-string v2, "WAZE"

    const-string v3, "Search pressed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/waze/navigate/SearchActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/waze/navigate/NavigateActivity;->nativeManager:Lcom/waze/NativeManager;

    iget-object v3, p0, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->isCategorySearchNTV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, sCategory:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    :cond_0
    const-string v2, "SearchStr"

    iget-object v3, p0, Lcom/waze/navigate/NavigateActivity;->searchBox:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    :goto_0
    iget-object v2, p0, Lcom/waze/navigate/NavigateActivity;->mCalendarAI:Lcom/waze/navigate/AddressItem;

    if-eqz v2, :cond_2

    .line 194
    const-string v2, "SearchMode"

    const/16 v3, 0x9

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    const-string v2, "AddressItem"

    iget-object v3, p0, Lcom/waze/navigate/NavigateActivity;->mCalendarAI:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 202
    :goto_1
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/waze/navigate/NavigateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 204
    return-void

    .line 189
    :cond_1
    const-string v2, "SearchCategory"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 199
    :cond_2
    const-string v2, "SearchMode"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method public speechRecognitionClicked(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 463
    const-string v1, "WAZE"

    const-string v2, "SR pressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string v1, "VOICE_SEARCH"

    invoke-static {v1}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 466
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 467
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    .line 468
    const-string v2, "free_form"

    .line 467
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    const/16 v1, 0x4d2

    invoke-virtual {p0, v0, v1}, Lcom/waze/navigate/NavigateActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 471
    :catch_0
    move-exception v1

    goto :goto_0
.end method
