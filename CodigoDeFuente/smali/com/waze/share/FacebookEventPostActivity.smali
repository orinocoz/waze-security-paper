.class public Lcom/waze/share/FacebookEventPostActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "FacebookEventPostActivity.java"

# interfaces
.implements Lcom/waze/share/ShareNativeManager$IShareFbMainDataHandler;
.implements Lcom/waze/share/ShareFbQueries$IPostCallback;


# instance fields
.field private bIsAction:Z

.field private mEventId:Ljava/lang/String;

.field private mFbMainData:Lcom/waze/share/ShareFbMainData;

.field private mFriends:[Lcom/waze/share/ShareFbFriend;

.field private mLink:Ljava/lang/String;

.field private mLocation:Lcom/waze/share/ShareFbLocation;

.field private mPostText:Landroid/widget/EditText;

.field private final mPostTextWatcher:Landroid/text/TextWatcher;

.field private mTripText:Landroid/widget/TextView;

.field private sPostText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 298
    new-instance v0, Lcom/waze/share/FacebookEventPostActivity$1;

    invoke-direct {v0, p0}, Lcom/waze/share/FacebookEventPostActivity$1;-><init>(Lcom/waze/share/FacebookEventPostActivity;)V

    iput-object v0, p0, Lcom/waze/share/FacebookEventPostActivity;->mPostTextWatcher:Landroid/text/TextWatcher;

    .line 317
    iput-object v1, p0, Lcom/waze/share/FacebookEventPostActivity;->mFriends:[Lcom/waze/share/ShareFbFriend;

    .line 318
    iput-object v1, p0, Lcom/waze/share/FacebookEventPostActivity;->mLocation:Lcom/waze/share/ShareFbLocation;

    .line 319
    iput-object v1, p0, Lcom/waze/share/FacebookEventPostActivity;->mPostText:Landroid/widget/EditText;

    .line 320
    iput-object v1, p0, Lcom/waze/share/FacebookEventPostActivity;->mEventId:Ljava/lang/String;

    .line 321
    iput-object v1, p0, Lcom/waze/share/FacebookEventPostActivity;->mLink:Ljava/lang/String;

    .line 322
    iput-object v1, p0, Lcom/waze/share/FacebookEventPostActivity;->sPostText:Ljava/lang/String;

    .line 323
    iput-object v1, p0, Lcom/waze/share/FacebookEventPostActivity;->mTripText:Landroid/widget/TextView;

    .line 324
    iput-object v1, p0, Lcom/waze/share/FacebookEventPostActivity;->mFbMainData:Lcom/waze/share/ShareFbMainData;

    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/share/FacebookEventPostActivity;->bIsAction:Z

    .line 29
    return-void
.end method

.method private _append_highlight_span(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V
    .locals 2
    .parameter "builder"
    .parameter "str"

    .prologue
    .line 262
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 263
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/waze/share/FacebookEventPostActivity;->_highlight_span(Landroid/text/SpannableStringBuilder;II)V

    .line 264
    return-void
.end method

.method private _friends()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 273
    iget-object v2, p0, Lcom/waze/share/FacebookEventPostActivity;->mFriends:[Lcom/waze/share/ShareFbFriend;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/waze/share/FacebookEventPostActivity;->mFriends:[Lcom/waze/share/ShareFbFriend;

    array-length v2, v2

    if-nez v2, :cond_2

    .line 274
    :cond_0
    const/4 v1, 0x0

    .line 282
    :cond_1
    return-object v1

    .line 276
    :cond_2
    const/4 v0, 0x0

    .line 277
    .local v0, i:I
    iget-object v2, p0, Lcom/waze/share/FacebookEventPostActivity;->mFriends:[Lcom/waze/share/ShareFbFriend;

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/String;

    .line 278
    .local v1, res:[Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/waze/share/FacebookEventPostActivity;->mFriends:[Lcom/waze/share/ShareFbFriend;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 280
    iget-object v2, p0, Lcom/waze/share/FacebookEventPostActivity;->mFriends:[Lcom/waze/share/ShareFbFriend;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/waze/share/ShareFbFriend;->name:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private _friends_ids()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 286
    iget-object v2, p0, Lcom/waze/share/FacebookEventPostActivity;->mFriends:[Lcom/waze/share/ShareFbFriend;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/waze/share/FacebookEventPostActivity;->mFriends:[Lcom/waze/share/ShareFbFriend;

    array-length v2, v2

    if-nez v2, :cond_2

    .line 287
    :cond_0
    const/4 v1, 0x0

    .line 295
    :cond_1
    return-object v1

    .line 289
    :cond_2
    const/4 v0, 0x0

    .line 290
    .local v0, i:I
    iget-object v2, p0, Lcom/waze/share/FacebookEventPostActivity;->mFriends:[Lcom/waze/share/ShareFbFriend;

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/String;

    .line 291
    .local v1, res:[Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/waze/share/FacebookEventPostActivity;->mFriends:[Lcom/waze/share/ShareFbFriend;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 293
    iget-object v2, p0, Lcom/waze/share/FacebookEventPostActivity;->mFriends:[Lcom/waze/share/ShareFbFriend;

    aget-object v2, v2, v0

    iget-wide v2, v2, Lcom/waze/share/ShareFbFriend;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private _highlight_span(Landroid/text/SpannableStringBuilder;II)V
    .locals 2
    .parameter "builder"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 268
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    const v1, 0x7f06005b

    invoke-direct {v0, p0, v1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/16 v1, 0x21

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 269
    return-void
.end method

.method static synthetic access$0(Lcom/waze/share/FacebookEventPostActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/waze/share/FacebookEventPostActivity;->setTripText()V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/share/FacebookEventPostActivity;)Lcom/waze/share/ShareFbMainData;
    .locals 1
    .parameter

    .prologue
    .line 324
    iget-object v0, p0, Lcom/waze/share/FacebookEventPostActivity;->mFbMainData:Lcom/waze/share/ShareFbMainData;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/share/FacebookEventPostActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/waze/share/FacebookEventPostActivity;->bIsAction:Z

    return v0
.end method

.method static synthetic access$3(Lcom/waze/share/FacebookEventPostActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/waze/share/FacebookEventPostActivity;->postAction()V

    return-void
.end method

.method static synthetic access$4(Lcom/waze/share/FacebookEventPostActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/waze/share/FacebookEventPostActivity;->postFeed()V

    return-void
.end method

.method private postAction()V
    .locals 7

    .prologue
    .line 176
    iget-object v1, p0, Lcom/waze/share/FacebookEventPostActivity;->mLocation:Lcom/waze/share/ShareFbLocation;

    .line 178
    .local v1, loc:Lcom/waze/share/ShareFbLocation;
    if-nez v1, :cond_0

    .line 180
    new-instance v1, Lcom/waze/share/ShareFbLocation;

    .end local v1           #loc:Lcom/waze/share/ShareFbLocation;
    invoke-direct {v1}, Lcom/waze/share/ShareFbLocation;-><init>()V

    .line 181
    .restart local v1       #loc:Lcom/waze/share/ShareFbLocation;
    const-string v0, "-1"

    iput-object v0, v1, Lcom/waze/share/ShareFbLocation;->id:Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lcom/waze/share/FacebookEventPostActivity;->mFbMainData:Lcom/waze/share/ShareFbMainData;

    iget-object v0, v0, Lcom/waze/share/ShareFbMainData;->location:Ljava/lang/String;

    iput-object v0, v1, Lcom/waze/share/ShareFbLocation;->name:Ljava/lang/String;

    .line 183
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/waze/share/ShareFbLocation;->longitude:D

    iput-wide v2, v1, Lcom/waze/share/ShareFbLocation;->latitude:D

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/waze/share/FacebookEventPostActivity;->mFbMainData:Lcom/waze/share/ShareFbMainData;

    iget-object v2, v0, Lcom/waze/share/ShareFbMainData;->eta:Ljava/lang/String;

    invoke-direct {p0}, Lcom/waze/share/FacebookEventPostActivity;->_friends_ids()[Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/waze/share/FacebookEventPostActivity;->mPostText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    move-object v0, p0

    move-object v5, p0

    invoke-static/range {v0 .. v6}, Lcom/waze/share/ShareFbQueries;->postAction(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/share/ShareFbLocation;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/waze/share/ShareFbQueries$IPostCallback;Z)V

    .line 187
    return-void
.end method

.method private postFeed()V
    .locals 12

    .prologue
    .line 149
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v10

    .line 150
    .local v10, nm:Lcom/waze/NativeManager;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .local v11, sb:Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/waze/share/FacebookEventPostActivity;->mTripText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v0, "POST_EVENT_NOW"

    invoke-static {v0}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 169
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/waze/share/FacebookEventPostActivity;->mLink:Ljava/lang/String;

    invoke-direct {p0}, Lcom/waze/share/FacebookEventPostActivity;->_friends_ids()[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/waze/share/FacebookEventPostActivity;->sPostText:Ljava/lang/String;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/waze/share/FacebookEventPostActivity;->mEventId:Ljava/lang/String;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    sget-object v5, Lcom/waze/strings/DisplayStrings;->DS_POST_EVENT_WALL_WAZE_TEXT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v5}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "http://www.waze.com/images/facebook/share-image.png"

    move-object v0, p0

    move-object v5, p0

    invoke-static/range {v0 .. v9}, Lcom/waze/share/ShareFbQueries;->postEventFeed(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/share/ShareFbLocation;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/waze/share/ShareFbQueries$IPostCallback;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method private setTripText()V
    .locals 0

    .prologue
    .line 258
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 99
    packed-switch p2, :pswitch_data_0

    .line 107
    invoke-virtual {p0, p2}, Lcom/waze/share/FacebookEventPostActivity;->setResult(I)V

    .line 108
    invoke-virtual {p0}, Lcom/waze/share/FacebookEventPostActivity;->finish()V

    .line 112
    :pswitch_0
    return-void

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-static {}, Lcom/waze/share/ShareNativeManager;->getInstance()Lcom/waze/share/ShareNativeManager;

    move-result-object v1

    .line 36
    .local v1, nm:Lcom/waze/share/ShareNativeManager;
    const v2, 0x7f030054

    invoke-virtual {p0, v2}, Lcom/waze/share/FacebookEventPostActivity;->setContentView(I)V

    .line 38
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/NativeManager;->isNavigatingNTV()Z

    move-result v2

    invoke-virtual {v1, p0, v2}, Lcom/waze/share/ShareNativeManager;->getShareFbMainData(Lcom/waze/share/ShareNativeManager$IShareFbMainDataHandler;Z)V

    .line 40
    invoke-virtual {p0}, Lcom/waze/share/FacebookEventPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/waze/share/FacebookEventPostActivity;->sPostText:Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Lcom/waze/share/FacebookEventPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/waze/share/FacebookEventPostActivity;->mEventId:Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Lcom/waze/share/FacebookEventPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "link"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/waze/share/FacebookEventPostActivity;->mLink:Ljava/lang/String;

    .line 43
    const v2, 0x7f0902b1

    invoke-virtual {p0, v2}, Lcom/waze/share/FacebookEventPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_POST_TO_EVENT_WALL:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    const v2, 0x7f0902b0

    invoke-virtual {p0, v2}, Lcom/waze/share/FacebookEventPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_LET_OTHER_ATTENDEES_KNOW_TEXT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    const v2, 0x7f0902b3

    invoke-virtual {p0, v2}, Lcom/waze/share/FacebookEventPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/waze/share/FacebookEventPostActivity;->mPostText:Landroid/widget/EditText;

    .line 47
    iget-object v2, p0, Lcom/waze/share/FacebookEventPostActivity;->mPostText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/waze/share/FacebookEventPostActivity;->mPostTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 48
    const v2, 0x7f0902b5

    invoke-virtual {p0, v2}, Lcom/waze/share/FacebookEventPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/waze/share/FacebookEventPostActivity;->mTripText:Landroid/widget/TextView;

    .line 49
    iget-object v2, p0, Lcom/waze/share/FacebookEventPostActivity;->mTripText:Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_POST_EVENT_WALL_WAZE_TEXT:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v2, p0, Lcom/waze/share/FacebookEventPostActivity;->sPostText:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/waze/share/FacebookEventPostActivity;->mPostText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/waze/share/FacebookEventPostActivity;->sPostText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 53
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/waze/share/FacebookEventPostActivity;->bIsAction:Z

    .line 57
    :cond_0
    const v2, 0x7f0902b6

    invoke-virtual {p0, v2}, Lcom/waze/share/FacebookEventPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, btnPost:Landroid/view/View;
    new-instance v2, Lcom/waze/share/FacebookEventPostActivity$2;

    invoke-direct {v2, p0}, Lcom/waze/share/FacebookEventPostActivity$2;-><init>(Lcom/waze/share/FacebookEventPostActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method

.method public onFbMainData(Lcom/waze/share/ShareFbMainData;)V
    .locals 5
    .parameter "data"

    .prologue
    .line 71
    move-object v0, p0

    .line 73
    .local v0, activity:Lcom/waze/share/FacebookEventPostActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/waze/share/FacebookEventPostActivity;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    iput-object p1, p0, Lcom/waze/share/FacebookEventPostActivity;->mFbMainData:Lcom/waze/share/ShareFbMainData;

    .line 78
    const v3, 0x7f0902af

    invoke-virtual {p0, v3}, Lcom/waze/share/FacebookEventPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/title/TitleBar;

    .line 79
    .local v2, tb:Lcom/waze/view/title/TitleBar;
    iget-object v3, p1, Lcom/waze/share/ShareFbMainData;->title:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 82
    iget-object v3, p0, Lcom/waze/share/FacebookEventPostActivity;->mPostText:Landroid/widget/EditText;

    iget-object v4, p1, Lcom/waze/share/ShareFbMainData;->hint:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 85
    const v3, 0x7f0902b7

    invoke-virtual {v0, v3}, Lcom/waze/share/FacebookEventPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 86
    .local v1, postFbBtnText:Landroid/widget/TextView;
    iget-object v3, p1, Lcom/waze/share/ShareFbMainData;->post_to_fb:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .end local v1           #postFbBtnText:Landroid/widget/TextView;
    .end local v2           #tb:Lcom/waze/view/title/TitleBar;
    :cond_0
    return-void
.end method

.method public onPostResult(ILjava/lang/String;)V
    .locals 5
    .parameter "error_code"
    .parameter "errorString"

    .prologue
    .line 117
    new-instance v0, Lcom/waze/share/FacebookEventPostActivity$3;

    invoke-direct {v0, p0}, Lcom/waze/share/FacebookEventPostActivity$3;-><init>(Lcom/waze/share/FacebookEventPostActivity;)V

    .line 125
    .local v0, onMsgClose:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/waze/share/FacebookEventPostActivity$4;

    invoke-direct {v1, p0}, Lcom/waze/share/FacebookEventPostActivity$4;-><init>(Lcom/waze/share/FacebookEventPostActivity;)V

    .line 133
    .local v1, onMsgFailedClose:Landroid/content/DialogInterface$OnClickListener;
    if-nez p1, :cond_0

    .line 135
    const-string v2, "WAZE"

    const-string v3, "Post has been done successfully"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v2, p0, Lcom/waze/share/FacebookEventPostActivity;->mFbMainData:Lcom/waze/share/ShareFbMainData;

    iget-object v2, v2, Lcom/waze/share/ShareFbMainData;->postMsgBoxSuccessTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/share/FacebookEventPostActivity;->mFbMainData:Lcom/waze/share/ShareFbMainData;

    iget-object v3, v3, Lcom/waze/share/ShareFbMainData;->postMsgBoxSuccessText:Ljava/lang/String;

    const/4 v4, 0x5

    invoke-static {v2, v3, v4, v0}, Lcom/waze/MsgBox;->openMessageBoxTimeout(Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 143
    :goto_0
    return-void

    .line 140
    :cond_0
    const-string v2, "WAZE"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "There was an error posting to FB: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v2, p0, Lcom/waze/share/FacebookEventPostActivity;->mFbMainData:Lcom/waze/share/ShareFbMainData;

    iget-object v2, v2, Lcom/waze/share/ShareFbMainData;->postMsgBoxFailureTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/waze/share/FacebookEventPostActivity;->mFbMainData:Lcom/waze/share/ShareFbMainData;

    iget-object v3, v3, Lcom/waze/share/ShareFbMainData;->postMsgBoxFailureText:Ljava/lang/String;

    const/16 v4, 0x8

    invoke-static {v2, v3, v4, v1}, Lcom/waze/MsgBox;->openMessageBoxTimeout(Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method
