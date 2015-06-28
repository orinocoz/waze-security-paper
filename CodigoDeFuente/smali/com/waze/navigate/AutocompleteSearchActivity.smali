.class public final Lcom/waze/navigate/AutocompleteSearchActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "AutocompleteSearchActivity.java"


# static fields
.field protected static final HINT_SIZE:F = 14.0f

.field protected static final TEXT_SIZE:F = 16.0f


# instance fields
.field getHistoryCallback:Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;

.field private isKeyboardVisible:Z

.field private mAddresses:[Lcom/waze/navigate/AddressItem;

.field private mPlaceAdapter:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

.field mType:Ljava/lang/Integer;

.field private natMgr:Lcom/waze/NativeManager;

.field private nativeManager:Lcom/waze/NativeManager;

.field private nm:Lcom/waze/navigate/DriveToNativeManager;

.field searchBox:Lcom/waze/view/text/InstantAutoComplete;

.field private speechString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->mAddresses:[Lcom/waze/navigate/AddressItem;

    .line 310
    new-instance v0, Lcom/waze/navigate/AutocompleteSearchActivity$1;

    invoke-direct {v0, p0}, Lcom/waze/navigate/AutocompleteSearchActivity$1;-><init>(Lcom/waze/navigate/AutocompleteSearchActivity;)V

    iput-object v0, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->getHistoryCallback:Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/AutocompleteSearchActivity;[Lcom/waze/navigate/AddressItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->mAddresses:[Lcom/waze/navigate/AddressItem;

    return-void
.end method

.method static synthetic access$1(Lcom/waze/navigate/AutocompleteSearchActivity;)[Lcom/waze/navigate/AddressItem;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->mAddresses:[Lcom/waze/navigate/AddressItem;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/navigate/AutocompleteSearchActivity;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->natMgr:Lcom/waze/NativeManager;

    return-object v0
.end method

.method static synthetic access$3(Lcom/waze/navigate/AutocompleteSearchActivity;Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->mPlaceAdapter:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    return-void
.end method

.method static synthetic access$4(Lcom/waze/navigate/AutocompleteSearchActivity;)Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->mPlaceAdapter:Lcom/waze/autocomplete/PlacesAutoCompleteAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/waze/navigate/AutocompleteSearchActivity;Lcom/waze/navigate/AddressItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/waze/navigate/AutocompleteSearchActivity;->finishedSearch(Lcom/waze/navigate/AddressItem;)V

    return-void
.end method

.method static synthetic access$6(Lcom/waze/navigate/AutocompleteSearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/waze/navigate/AutocompleteSearchActivity;->continueToSearch()V

    return-void
.end method

.method private continueToSearch()V
    .locals 3

    .prologue
    .line 135
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/navigate/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "SearchStr"

    iget-object v2, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->searchBox:Lcom/waze/view/text/InstantAutoComplete;

    invoke-virtual {v2}, Lcom/waze/view/text/InstantAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string v1, "SearchMode"

    iget-object v2, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->mType:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 138
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/waze/navigate/AutocompleteSearchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 139
    return-void
.end method

.method private finishedSearch(Lcom/waze/navigate/AddressItem;)V
    .locals 4
    .parameter "ai"

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 142
    iget-object v0, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->mType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 143
    const-string v0, "Home"

    invoke-virtual {p1, v0}, Lcom/waze/navigate/AddressItem;->setTitle(Ljava/lang/String;)V

    .line 144
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/waze/navigate/AddressItem;->setCategory(Ljava/lang/Integer;)V

    .line 145
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add home ai="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/waze/navigate/AddressItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v0, p1}, Lcom/waze/navigate/DriveToNativeManager;->StoreAddressItem(Lcom/waze/navigate/AddressItem;)V

    .line 147
    invoke-virtual {p0, v3}, Lcom/waze/navigate/AutocompleteSearchActivity;->setResult(I)V

    .line 148
    invoke-virtual {p0}, Lcom/waze/navigate/AutocompleteSearchActivity;->finish()V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->mType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 150
    const-string v0, "Work"

    invoke-virtual {p1, v0}, Lcom/waze/navigate/AddressItem;->setTitle(Ljava/lang/String;)V

    .line 151
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/waze/navigate/AddressItem;->setCategory(Ljava/lang/Integer;)V

    .line 152
    const-string v0, "WAZE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add work ai="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/waze/navigate/AddressItem;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v0, p1}, Lcom/waze/navigate/DriveToNativeManager;->StoreAddressItem(Lcom/waze/navigate/AddressItem;)V

    .line 154
    invoke-virtual {p0, v3}, Lcom/waze/navigate/AutocompleteSearchActivity;->setResult(I)V

    .line 155
    invoke-virtual {p0}, Lcom/waze/navigate/AutocompleteSearchActivity;->finish()V

    goto :goto_0
.end method

.method private initLayout()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 165
    const v3, 0x7f030023

    invoke-virtual {p0, v3}, Lcom/waze/navigate/AutocompleteSearchActivity;->setContentView(I)V

    .line 166
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v3

    iput-object v3, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 168
    iget-object v3, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_SEARCH:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, title:Ljava/lang/String;
    iget-object v3, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->mType:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 170
    iget-object v3, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_HOME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 175
    :cond_0
    :goto_0
    const v3, 0x7f090058

    invoke-virtual {p0, v3}, Lcom/waze/navigate/AutocompleteSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/waze/view/title/TitleBar;

    invoke-virtual {v3, p0, v2}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 177
    const v3, 0x7f090061

    invoke-virtual {p0, v3}, Lcom/waze/navigate/AutocompleteSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/waze/view/text/InstantAutoComplete;

    iput-object v3, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->searchBox:Lcom/waze/view/text/InstantAutoComplete;

    .line 178
    iget-object v3, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->searchBox:Lcom/waze/view/text/InstantAutoComplete;

    invoke-virtual {v3, v6}, Lcom/waze/view/text/InstantAutoComplete;->setThreshold(I)V

    .line 179
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-gt v3, v4, :cond_3

    .line 181
    iget-object v3, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->searchBox:Lcom/waze/view/text/InstantAutoComplete;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const-string v5, "#cbd6da"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/waze/view/text/InstantAutoComplete;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    :goto_1
    iget-object v3, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->searchBox:Lcom/waze/view/text/InstantAutoComplete;

    new-instance v4, Lcom/waze/navigate/AutocompleteSearchActivity$2;

    invoke-direct {v4, p0}, Lcom/waze/navigate/AutocompleteSearchActivity$2;-><init>(Lcom/waze/navigate/AutocompleteSearchActivity;)V

    invoke-virtual {v3, v4}, Lcom/waze/view/text/InstantAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 203
    iget-object v3, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->searchBox:Lcom/waze/view/text/InstantAutoComplete;

    .line 204
    iget-object v4, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->searchBox:Lcom/waze/view/text/InstantAutoComplete;

    invoke-static {p0, v4, v7}, Lcom/waze/utils/EditTextUtils;->getKeyboardLockOnTouchListener(Landroid/content/Context;Landroid/widget/EditText;Lcom/waze/utils/EditTextUtils$OnTouchListenerDoneListener;)Landroid/view/View$OnTouchListener;

    move-result-object v4

    .line 203
    invoke-virtual {v3, v4}, Lcom/waze/view/text/InstantAutoComplete;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 205
    iget-object v3, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->searchBox:Lcom/waze/view/text/InstantAutoComplete;

    iget-object v4, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 206
    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_SEARCH_ADDRESS__PLACE_OR_CONTACT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v4, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    .line 205
    invoke-virtual {v3, v4}, Lcom/waze/view/text/InstantAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v3, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->searchBox:Lcom/waze/view/text/InstantAutoComplete;

    new-instance v4, Lcom/waze/navigate/AutocompleteSearchActivity$3;

    invoke-direct {v4, p0}, Lcom/waze/navigate/AutocompleteSearchActivity$3;-><init>(Lcom/waze/navigate/AutocompleteSearchActivity;)V

    invoke-virtual {v3, v4}, Lcom/waze/view/text/InstantAutoComplete;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 222
    iget-object v3, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->searchBox:Lcom/waze/view/text/InstantAutoComplete;

    new-instance v4, Lcom/waze/navigate/AutocompleteSearchActivity$4;

    invoke-direct {v4, p0}, Lcom/waze/navigate/AutocompleteSearchActivity$4;-><init>(Lcom/waze/navigate/AutocompleteSearchActivity;)V

    invoke-virtual {v3, v4}, Lcom/waze/view/text/InstantAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 247
    iget-object v3, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    iget-object v4, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->getHistoryCallback:Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;

    invoke-virtual {v3, v4}, Lcom/waze/navigate/DriveToNativeManager;->getAutoCompleteData(Lcom/waze/navigate/DriveToNativeManager$DriveToGetAddressItemArrayCallback;)V

    .line 249
    const v3, 0x7f090062

    invoke-virtual {p0, v3}, Lcom/waze/navigate/AutocompleteSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 251
    .local v1, speakButton:Landroid/widget/ImageButton;
    invoke-virtual {p0}, Lcom/waze/navigate/AutocompleteSearchActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 252
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 253
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 254
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 256
    :cond_1
    return-void

    .line 171
    .end local v0           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1           #speakButton:Landroid/widget/ImageButton;
    :cond_2
    iget-object v3, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->mType:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 172
    iget-object v3, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_WORK:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 183
    :cond_3
    iget-object v3, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->searchBox:Lcom/waze/view/text/InstantAutoComplete;

    invoke-virtual {v3, v7}, Lcom/waze/view/text/InstantAutoComplete;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method


# virtual methods
.method public PlaceClickedByAutoComplete(Landroid/view/View;Lcom/waze/autocomplete/PlaceData;)V
    .locals 12
    .parameter "v"
    .parameter "p"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 123
    invoke-virtual {p2}, Lcom/waze/autocomplete/PlaceData;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    new-instance v11, Lcom/waze/navigate/AddressItem;

    invoke-direct {v11, p2}, Lcom/waze/navigate/AddressItem;-><init>(Lcom/waze/autocomplete/PlaceData;)V

    .line 125
    .local v11, addressItem:Lcom/waze/navigate/AddressItem;
    invoke-direct {p0, v11}, Lcom/waze/navigate/AutocompleteSearchActivity;->finishedSearch(Lcom/waze/navigate/AddressItem;)V

    .line 132
    .end local v11           #addressItem:Lcom/waze/navigate/AddressItem;
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    sget v1, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    iget-object v2, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->setUpdateHandler(ILandroid/os/Handler;)V

    .line 130
    iget-object v0, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->natMgr:Lcom/waze/NativeManager;

    iget-object v1, p2, Lcom/waze/autocomplete/PlaceData;->mVenueId:Ljava/lang/String;

    iget-object v2, p2, Lcom/waze/autocomplete/PlaceData;->mReference:Ljava/lang/String;

    iget-object v6, p2, Lcom/waze/autocomplete/PlaceData;->mTitle:Ljava/lang/String;

    .line 131
    iget v8, p2, Lcom/waze/autocomplete/PlaceData;->mfeature:I

    iget-object v9, p2, Lcom/waze/autocomplete/PlaceData;->mResponse:Ljava/lang/String;

    iget-object v4, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->searchBox:Lcom/waze/view/text/InstantAutoComplete;

    invoke-virtual {v4}, Lcom/waze/view/text/InstantAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v4, v3

    move v7, v5

    .line 130
    invoke-virtual/range {v0 .. v10}, Lcom/waze/NativeManager;->AutoCompletePlaceClicked(Ljava/lang/String;Ljava/lang/String;Lcom/waze/navigate/AddressItem;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public SetHandlerForAutocomplete()V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    sget v1, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    iget-object v2, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 112
    iget-object v0, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    sget v1, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    iget-object v2, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->setUpdateHandler(ILandroid/os/Handler;)V

    .line 113
    return-void
.end method

.method protected myHandleMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    .line 297
    iget v2, p1, Landroid/os/Message;->what:I

    sget v3, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    if-ne v2, v3, :cond_0

    .line 298
    iget-object v2, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    sget v3, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    iget-object v4, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v2, v3, v4}, Lcom/waze/navigate/DriveToNativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 299
    iget-object v2, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->natMgr:Lcom/waze/NativeManager;

    invoke-virtual {v2}, Lcom/waze/NativeManager;->CloseProgressPopup()V

    .line 301
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 302
    .local v1, b:Landroid/os/Bundle;
    const-string v2, "address_item"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/waze/navigate/AddressItem;

    .line 304
    .local v0, ai:Lcom/waze/navigate/AddressItem;
    invoke-direct {p0, v0}, Lcom/waze/navigate/AutocompleteSearchActivity;->finishedSearch(Lcom/waze/navigate/AddressItem;)V

    .line 305
    const/4 v2, 0x1

    .line 307
    .end local v0           #ai:Lcom/waze/navigate/AddressItem;
    .end local v1           #b:Landroid/os/Bundle;
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->myHandleMessage(Landroid/os/Message;)Z

    move-result v2

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x1

    .line 273
    const/16 v2, 0x4d2

    if-ne p1, v2, :cond_1

    .line 274
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 275
    const-string v2, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 276
    .local v0, matches:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 277
    const-string v2, "VOICE_SEARCH_RECOGNIZED"

    invoke-static {v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 278
    iget-object v3, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->searchBox:Lcom/waze/view/text/InstantAutoComplete;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Lcom/waze/view/text/InstantAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 280
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/waze/navigate/AutocompleteSearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 281
    .local v1, mgr:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->searchBox:Lcom/waze/view/text/InstantAutoComplete;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 292
    .end local v0           #matches:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v1           #mgr:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 293
    return-void

    .line 284
    :cond_1
    if-ne p2, v3, :cond_2

    .line 285
    invoke-virtual {p0, v3}, Lcom/waze/navigate/AutocompleteSearchActivity;->setResult(I)V

    .line 286
    invoke-virtual {p0}, Lcom/waze/navigate/AutocompleteSearchActivity;->finish()V

    goto :goto_0

    .line 287
    :cond_2
    if-eqz p2, :cond_0

    .line 288
    invoke-virtual {p0, p2, p3}, Lcom/waze/navigate/AutocompleteSearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 289
    invoke-virtual {p0}, Lcom/waze/navigate/AutocompleteSearchActivity;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onBackPressed()V

    .line 108
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 161
    invoke-direct {p0}, Lcom/waze/navigate/AutocompleteSearchActivity;->initLayout()V

    .line 162
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0, v4}, Lcom/waze/navigate/AutocompleteSearchActivity;->requestWindowFeature(I)Z

    .line 70
    invoke-virtual {p0}, Lcom/waze/navigate/AutocompleteSearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 72
    invoke-virtual {p0}, Lcom/waze/navigate/AutocompleteSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "SearchMode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->mType:Ljava/lang/Integer;

    .line 74
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    .line 75
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->natMgr:Lcom/waze/NativeManager;

    .line 77
    iget-object v1, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->natMgr:Lcom/waze/NativeManager;

    invoke-virtual {v1}, Lcom/waze/NativeManager;->OpenSearchIntent()V

    .line 79
    invoke-virtual {p0}, Lcom/waze/navigate/AutocompleteSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "keyboard"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->isKeyboardVisible:Z

    .line 80
    invoke-virtual {p0}, Lcom/waze/navigate/AutocompleteSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Speech"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->speechString:Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Lcom/waze/navigate/AutocompleteSearchActivity;->initLayout()V

    .line 84
    iget-object v1, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->speechString:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->searchBox:Lcom/waze/view/text/InstantAutoComplete;

    iget-object v2, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->speechString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/waze/view/text/InstantAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_0
    iget-boolean v1, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->isKeyboardVisible:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->speechString:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v1, v4}, Lcom/waze/navigate/DriveToNativeManager;->setSearchMode(Z)V

    .line 90
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/waze/navigate/AutocompleteSearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 91
    .local v0, mgr:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 95
    .end local v0           #mgr:Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return-void

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    invoke-virtual {v1, v3}, Lcom/waze/navigate/DriveToNativeManager;->setSearchMode(Z)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    sget v1, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    iget-object v2, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 102
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onDestroy()V

    .line 103
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 359
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onPause()V

    .line 360
    iget-object v1, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->nm:Lcom/waze/navigate/DriveToNativeManager;

    sget v2, Lcom/waze/navigate/DriveToNativeManager;->UH_SEARCH_ADD_RESULT:I

    iget-object v3, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->mHandler:Lcom/waze/ifs/ui/ActivityBase$IncomingHandler;

    invoke-virtual {v1, v2, v3}, Lcom/waze/navigate/DriveToNativeManager;->unsetUpdateHandler(ILandroid/os/Handler;)V

    .line 361
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/waze/navigate/AutocompleteSearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 362
    .local v0, mgr:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->searchBox:Lcom/waze/view/text/InstantAutoComplete;

    invoke-virtual {v1}, Lcom/waze/view/text/InstantAutoComplete;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 363
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 350
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onResume()V

    .line 351
    iget-object v0, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->searchBox:Lcom/waze/view/text/InstantAutoComplete;

    invoke-virtual {v0}, Lcom/waze/view/text/InstantAutoComplete;->requestFocus()Z

    .line 352
    iget-object v0, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->searchBox:Lcom/waze/view/text/InstantAutoComplete;

    invoke-static {p0, v0}, Lcom/waze/utils/EditTextUtils;->openKeyboard(Landroid/app/Activity;Landroid/view/View;)V

    .line 353
    iget-object v0, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->searchBox:Lcom/waze/view/text/InstantAutoComplete;

    invoke-virtual {v0}, Lcom/waze/view/text/InstantAutoComplete;->performClick()Z

    .line 354
    iget-object v0, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->searchBox:Lcom/waze/view/text/InstantAutoComplete;

    invoke-virtual {v0}, Lcom/waze/view/text/InstantAutoComplete;->filterNow()V

    .line 355
    return-void
.end method

.method public searchClickedByAutoComplete(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/waze/navigate/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "SearchStr"

    iget-object v2, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->searchBox:Lcom/waze/view/text/InstantAutoComplete;

    invoke-virtual {v2}, Lcom/waze/view/text/InstantAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v1, "SearchMode"

    iget-object v2, p0, Lcom/waze/navigate/AutocompleteSearchActivity;->mType:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 119
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/waze/navigate/AutocompleteSearchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 120
    return-void
.end method

.method public speechRecognitionClicked(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 259
    const-string v1, "WAZE"

    const-string v2, "SR pressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v1, "VOICE_SEARCH"

    invoke-static {v1}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 262
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    .line 264
    const-string v2, "free_form"

    .line 263
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const/16 v1, 0x4d2

    invoke-virtual {p0, v0, v1}, Lcom/waze/navigate/AutocompleteSearchActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v1

    goto :goto_0
.end method
