.class public final Lcom/waze/navigate/AddFavoriteNameActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "AddFavoriteNameActivity.java"


# instance fields
.field private ai:Lcom/waze/navigate/AddressItem;

.field editText:Landroid/widget/EditText;

.field private nativeManager:Lcom/waze/NativeManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method public approveClicked(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 181
    const-string v1, "WAZE"

    const-string v2, "approve pressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v1, p0, Lcom/waze/navigate/AddFavoriteNameActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/waze/navigate/AddFavoriteNameActivity;->ai:Lcom/waze/navigate/AddressItem;

    iget-object v2, p0, Lcom/waze/navigate/AddFavoriteNameActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/navigate/AddressItem;->setTitle(Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/waze/navigate/AddFavoriteNameActivity;->ai:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v1}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/waze/navigate/AddFavoriteNameActivity;->editText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/waze/navigate/AddFavoriteNameActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_NAME_THIS_FAVORITE_LOCATION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/waze/navigate/AddFavoriteNameActivity;->ai:Lcom/waze/navigate/AddressItem;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/waze/navigate/AddressItem;->setCategory(Ljava/lang/Integer;)V

    .line 188
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fav= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/waze/navigate/AddFavoriteNameActivity;->ai:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v3}, Lcom/waze/navigate/AddressItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    .line 190
    .local v0, nm:Lcom/waze/navigate/DriveToNativeManager;
    iget-object v1, p0, Lcom/waze/navigate/AddFavoriteNameActivity;->ai:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v0, v1}, Lcom/waze/navigate/DriveToNativeManager;->StoreAddressItem(Lcom/waze/navigate/AddressItem;)V

    .line 191
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/waze/navigate/AddFavoriteNameActivity;->setResult(I)V

    .line 192
    invoke-virtual {p0}, Lcom/waze/navigate/AddFavoriteNameActivity;->finish()V

    .line 196
    .end local v0           #nm:Lcom/waze/navigate/DriveToNativeManager;
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, -0x1

    .line 157
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AddFavoriteName onActRes requestCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/16 v1, 0x4d2

    if-ne p1, v1, :cond_1

    .line 159
    if-ne p2, v4, :cond_0

    .line 160
    const-string v1, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 161
    .local v0, matches:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 162
    iget-object v2, p0, Lcom/waze/navigate/AddFavoriteNameActivity;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 169
    .end local v0           #matches:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    if-eq p2, v4, :cond_2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 166
    :cond_2
    invoke-virtual {p0, p2}, Lcom/waze/navigate/AddFavoriteNameActivity;->setResult(I)V

    .line 167
    invoke-virtual {p0}, Lcom/waze/navigate/AddFavoriteNameActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/waze/navigate/AddFavoriteNameActivity;->requestWindowFeature(I)Z

    .line 45
    const v10, 0x7f030005

    invoke-virtual {p0, v10}, Lcom/waze/navigate/AddFavoriteNameActivity;->setContentView(I)V

    .line 46
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v10

    iput-object v10, p0, Lcom/waze/navigate/AddFavoriteNameActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 47
    const v10, 0x7f090058

    invoke-virtual {p0, v10}, Lcom/waze/navigate/AddFavoriteNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/waze/view/title/TitleBar;

    iget-object v11, p0, Lcom/waze/navigate/AddFavoriteNameActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v12, Lcom/waze/strings/DisplayStrings;->DS_NAME_FAVORITE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v11, v12}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, p0, v11}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 48
    const v10, 0x7f090058

    invoke-virtual {p0, v10}, Lcom/waze/navigate/AddFavoriteNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/waze/view/title/TitleBar;

    iget-object v11, p0, Lcom/waze/navigate/AddFavoriteNameActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v12, Lcom/waze/strings/DisplayStrings;->DS_DONE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v11, v12}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/waze/view/title/TitleBar;->setCloseText(Ljava/lang/String;)V

    .line 49
    const v10, 0x7f090058

    invoke-virtual {p0, v10}, Lcom/waze/navigate/AddFavoriteNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/waze/view/title/TitleBar;

    new-instance v11, Lcom/waze/navigate/AddFavoriteNameActivity$1;

    invoke-direct {v11, p0}, Lcom/waze/navigate/AddFavoriteNameActivity$1;-><init>(Lcom/waze/navigate/AddFavoriteNameActivity;)V

    invoke-virtual {v10, v11}, Lcom/waze/view/title/TitleBar;->setOnClickCloseListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v10, 0x7f090068

    invoke-virtual {p0, v10}, Lcom/waze/navigate/AddFavoriteNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    iget-object v11, p0, Lcom/waze/navigate/AddFavoriteNameActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v12, Lcom/waze/strings/DisplayStrings;->DS_NAME_THIS_FAVORITE_LOCATION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v11, v12}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {p0}, Lcom/waze/navigate/AddFavoriteNameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "AddressItem"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Lcom/waze/navigate/AddressItem;

    iput-object v10, p0, Lcom/waze/navigate/AddFavoriteNameActivity;->ai:Lcom/waze/navigate/AddressItem;

    .line 60
    const-string v10, "layout_inflater"

    invoke-virtual {p0, v10}, Lcom/waze/navigate/AddFavoriteNameActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 61
    .local v5, li:Landroid/view/LayoutInflater;
    const v10, 0x7f03000e

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 63
    .local v9, view:Landroid/view/View;
    const v10, 0x7f0900e2

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 64
    const v10, 0x7f0900d9

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 65
    const v10, 0x7f0900c3

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 66
    const v10, 0x7f0900be

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object v10, p0, Lcom/waze/navigate/AddFavoriteNameActivity;->ai:Lcom/waze/navigate/AddressItem;

    if-eqz v10, :cond_0

    .line 69
    const v10, 0x7f0900c2

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 70
    .local v6, name:Landroid/widget/TextView;
    iget-object v10, p0, Lcom/waze/navigate/AddFavoriteNameActivity;->ai:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v10}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 71
    const v10, 0x7f0900c2

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 77
    :goto_0
    const v10, 0x7f0900c4

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 78
    .local v1, address:Landroid/widget/TextView;
    iget-object v10, p0, Lcom/waze/navigate/AddFavoriteNameActivity;->ai:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v10}, Lcom/waze/navigate/AddressItem;->getAddress()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 79
    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    :goto_1
    const v10, 0x7f0900c6

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 87
    .local v3, distance:Landroid/widget/TextView;
    iget-object v10, p0, Lcom/waze/navigate/AddFavoriteNameActivity;->ai:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v10}, Lcom/waze/navigate/AddressItem;->getDistance()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 88
    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    :goto_2
    const v10, 0x7f020225

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 95
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 96
    const v10, 0x7f09006c

    invoke-virtual {p0, v10}, Lcom/waze/navigate/AddFavoriteNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 97
    .local v2, aiv:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 98
    .local v7, parent:Landroid/view/ViewGroup;
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 99
    .local v4, index:I
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 100
    invoke-virtual {v7, v9, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 106
    .end local v1           #address:Landroid/widget/TextView;
    .end local v2           #aiv:Landroid/view/View;
    .end local v3           #distance:Landroid/widget/TextView;
    .end local v4           #index:I
    .end local v6           #name:Landroid/widget/TextView;
    .end local v7           #parent:Landroid/view/ViewGroup;
    :cond_0
    const v10, 0x7f090069

    invoke-virtual {p0, v10}, Lcom/waze/navigate/AddFavoriteNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    .line 107
    .local v8, speakButton:Landroid/widget/ImageButton;
    invoke-virtual {p0}, Lcom/waze/navigate/AddFavoriteNameActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 108
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    .line 107
    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 109
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_1

    .line 110
    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 113
    :cond_1
    const v10, 0x7f090068

    invoke-virtual {p0, v10}, Lcom/waze/navigate/AddFavoriteNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    iput-object v10, p0, Lcom/waze/navigate/AddFavoriteNameActivity;->editText:Landroid/widget/EditText;

    .line 114
    iget-object v10, p0, Lcom/waze/navigate/AddFavoriteNameActivity;->editText:Landroid/widget/EditText;

    iget-object v11, p0, Lcom/waze/navigate/AddFavoriteNameActivity;->ai:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v11}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v10, p0, Lcom/waze/navigate/AddFavoriteNameActivity;->editText:Landroid/widget/EditText;

    .line 116
    new-instance v11, Lcom/waze/navigate/AddFavoriteNameActivity$2;

    invoke-direct {v11, p0}, Lcom/waze/navigate/AddFavoriteNameActivity$2;-><init>(Lcom/waze/navigate/AddFavoriteNameActivity;)V

    .line 115
    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 128
    return-void

    .line 73
    .end local v0           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8           #speakButton:Landroid/widget/ImageButton;
    .restart local v6       #name:Landroid/widget/TextView;
    :cond_2
    const v10, 0x7f0900c2

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 74
    iget-object v10, p0, Lcom/waze/navigate/AddFavoriteNameActivity;->ai:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v10}, Lcom/waze/navigate/AddressItem;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 81
    .restart local v1       #address:Landroid/widget/TextView;
    :cond_3
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object v10, p0, Lcom/waze/navigate/AddFavoriteNameActivity;->ai:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v10}, Lcom/waze/navigate/AddressItem;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 90
    .restart local v3       #distance:Landroid/widget/TextView;
    :cond_4
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v10, p0, Lcom/waze/navigate/AddFavoriteNameActivity;->ai:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v10}, Lcom/waze/navigate/AddressItem;->getDistance()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 149
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/waze/navigate/AddFavoriteNameActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 150
    .local v0, mgr:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/waze/navigate/AddFavoriteNameActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 151
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onPause()V

    .line 153
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 133
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onResume()V

    .line 134
    iget-object v0, p0, Lcom/waze/navigate/AddFavoriteNameActivity;->ai:Lcom/waze/navigate/AddressItem;

    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->getType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 135
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/waze/navigate/AddFavoriteNameActivity$3;

    invoke-direct {v1, p0}, Lcom/waze/navigate/AddFavoriteNameActivity$3;-><init>(Lcom/waze/navigate/AddFavoriteNameActivity;)V

    .line 142
    const-wide/16 v2, 0x64

    .line 135
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 144
    :cond_0
    return-void
.end method

.method public speechRecognitionClicked(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 173
    const-string v1, "WAZE"

    const-string v2, "SR pressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    .line 176
    const-string v2, "free_form"

    .line 175
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const/16 v1, 0x4d2

    invoke-virtual {p0, v0, v1}, Lcom/waze/navigate/AddFavoriteNameActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 178
    return-void
.end method
