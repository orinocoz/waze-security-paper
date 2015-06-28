.class public Lcom/waze/share/ShareFbActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "ShareFbActivity.java"

# interfaces
.implements Lcom/waze/share/ShareNativeManager$IShareFbMainDataHandler;
.implements Lcom/waze/share/ShareFbQueries$IPostCallback;


# instance fields
.field private bIsAction:Z

.field private mFbMainData:Lcom/waze/share/ShareFbMainData;

.field private mFriends:[Lcom/waze/share/ShareFbFriend;

.field private mLocation:Lcom/waze/share/ShareFbLocation;

.field private mPostText:Landroid/widget/EditText;

.field private final mPostTextWatcher:Landroid/text/TextWatcher;

.field private mTripText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 337
    new-instance v0, Lcom/waze/share/ShareFbActivity$1;

    invoke-direct {v0, p0}, Lcom/waze/share/ShareFbActivity$1;-><init>(Lcom/waze/share/ShareFbActivity;)V

    iput-object v0, p0, Lcom/waze/share/ShareFbActivity;->mPostTextWatcher:Landroid/text/TextWatcher;

    .line 356
    iput-object v1, p0, Lcom/waze/share/ShareFbActivity;->mFriends:[Lcom/waze/share/ShareFbFriend;

    .line 357
    iput-object v1, p0, Lcom/waze/share/ShareFbActivity;->mLocation:Lcom/waze/share/ShareFbLocation;

    .line 358
    iput-object v1, p0, Lcom/waze/share/ShareFbActivity;->mPostText:Landroid/widget/EditText;

    .line 359
    iput-object v1, p0, Lcom/waze/share/ShareFbActivity;->mTripText:Landroid/widget/TextView;

    .line 360
    iput-object v1, p0, Lcom/waze/share/ShareFbActivity;->mFbMainData:Lcom/waze/share/ShareFbMainData;

    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/share/ShareFbActivity;->bIsAction:Z

    .line 27
    return-void
.end method

.method private _append_highlight_span(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V
    .locals 2
    .parameter "builder"
    .parameter "str"

    .prologue
    .line 301
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 302
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/waze/share/ShareFbActivity;->_highlight_span(Landroid/text/SpannableStringBuilder;II)V

    .line 303
    return-void
.end method

.method private _friends()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 312
    iget-object v2, p0, Lcom/waze/share/ShareFbActivity;->mFriends:[Lcom/waze/share/ShareFbFriend;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/waze/share/ShareFbActivity;->mFriends:[Lcom/waze/share/ShareFbFriend;

    array-length v2, v2

    if-nez v2, :cond_2

    .line 313
    :cond_0
    const/4 v1, 0x0

    .line 321
    :cond_1
    return-object v1

    .line 315
    :cond_2
    const/4 v0, 0x0

    .line 316
    .local v0, i:I
    iget-object v2, p0, Lcom/waze/share/ShareFbActivity;->mFriends:[Lcom/waze/share/ShareFbFriend;

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/String;

    .line 317
    .local v1, res:[Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/waze/share/ShareFbActivity;->mFriends:[Lcom/waze/share/ShareFbFriend;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 319
    iget-object v2, p0, Lcom/waze/share/ShareFbActivity;->mFriends:[Lcom/waze/share/ShareFbFriend;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/waze/share/ShareFbFriend;->name:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private _friends_ids()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 325
    iget-object v2, p0, Lcom/waze/share/ShareFbActivity;->mFriends:[Lcom/waze/share/ShareFbFriend;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/waze/share/ShareFbActivity;->mFriends:[Lcom/waze/share/ShareFbFriend;

    array-length v2, v2

    if-nez v2, :cond_2

    .line 326
    :cond_0
    const/4 v1, 0x0

    .line 334
    :cond_1
    return-object v1

    .line 328
    :cond_2
    const/4 v0, 0x0

    .line 329
    .local v0, i:I
    iget-object v2, p0, Lcom/waze/share/ShareFbActivity;->mFriends:[Lcom/waze/share/ShareFbFriend;

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/String;

    .line 330
    .local v1, res:[Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/waze/share/ShareFbActivity;->mFriends:[Lcom/waze/share/ShareFbFriend;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 332
    iget-object v2, p0, Lcom/waze/share/ShareFbActivity;->mFriends:[Lcom/waze/share/ShareFbFriend;

    aget-object v2, v2, v0

    iget-wide v2, v2, Lcom/waze/share/ShareFbFriend;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private _highlight_span(Landroid/text/SpannableStringBuilder;II)V
    .locals 2
    .parameter "builder"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 307
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    const v1, 0x7f06005b

    invoke-direct {v0, p0, v1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/16 v1, 0x21

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 308
    return-void
.end method

.method static synthetic access$0(Lcom/waze/share/ShareFbActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/waze/share/ShareFbActivity;->setTripText()V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/share/ShareFbActivity;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/waze/share/ShareFbActivity;->_friends()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/share/ShareFbActivity;)Lcom/waze/share/ShareFbMainData;
    .locals 1
    .parameter

    .prologue
    .line 360
    iget-object v0, p0, Lcom/waze/share/ShareFbActivity;->mFbMainData:Lcom/waze/share/ShareFbMainData;

    return-object v0
.end method

.method static synthetic access$3(Lcom/waze/share/ShareFbActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/waze/share/ShareFbActivity;->bIsAction:Z

    return v0
.end method

.method static synthetic access$4(Lcom/waze/share/ShareFbActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/waze/share/ShareFbActivity;->postAction()V

    return-void
.end method

.method static synthetic access$5(Lcom/waze/share/ShareFbActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/waze/share/ShareFbActivity;->postFeed()V

    return-void
.end method

.method private postAction()V
    .locals 7

    .prologue
    .line 215
    iget-object v1, p0, Lcom/waze/share/ShareFbActivity;->mLocation:Lcom/waze/share/ShareFbLocation;

    .line 217
    .local v1, loc:Lcom/waze/share/ShareFbLocation;
    if-nez v1, :cond_0

    .line 219
    new-instance v1, Lcom/waze/share/ShareFbLocation;

    .end local v1           #loc:Lcom/waze/share/ShareFbLocation;
    invoke-direct {v1}, Lcom/waze/share/ShareFbLocation;-><init>()V

    .line 220
    .restart local v1       #loc:Lcom/waze/share/ShareFbLocation;
    const-string v0, "-1"

    iput-object v0, v1, Lcom/waze/share/ShareFbLocation;->id:Ljava/lang/String;

    .line 221
    iget-object v0, p0, Lcom/waze/share/ShareFbActivity;->mFbMainData:Lcom/waze/share/ShareFbMainData;

    iget-object v0, v0, Lcom/waze/share/ShareFbMainData;->location:Ljava/lang/String;

    iput-object v0, v1, Lcom/waze/share/ShareFbLocation;->name:Ljava/lang/String;

    .line 222
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/waze/share/ShareFbLocation;->longitude:D

    iput-wide v2, v1, Lcom/waze/share/ShareFbLocation;->latitude:D

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/waze/share/ShareFbActivity;->mFbMainData:Lcom/waze/share/ShareFbMainData;

    iget-object v2, v0, Lcom/waze/share/ShareFbMainData;->eta:Ljava/lang/String;

    invoke-direct {p0}, Lcom/waze/share/ShareFbActivity;->_friends_ids()[Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/waze/share/ShareFbActivity;->mPostText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    move-object v0, p0

    move-object v5, p0

    invoke-static/range {v0 .. v6}, Lcom/waze/share/ShareFbQueries;->postAction(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/share/ShareFbLocation;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/waze/share/ShareFbQueries$IPostCallback;Z)V

    .line 226
    return-void
.end method

.method private postFeed()V
    .locals 9

    .prologue
    .line 190
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v7

    .line 191
    .local v7, nm:Lcom/waze/NativeManager;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .local v8, sb:Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/waze/share/ShareFbActivity;->mLocation:Lcom/waze/share/ShareFbLocation;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/waze/share/ShareFbActivity;->mPostText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    .line 196
    .local v6, editText:Landroid/text/Editable;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 198
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 199
    const-string v0, " - "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_0
    sget-object v0, Lcom/waze/strings/DisplayStrings;->DS_DROVE_HERE_WITH_WAZE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v7, v0}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .end local v6           #editText:Landroid/text/Editable;
    :goto_0
    iget-object v1, p0, Lcom/waze/share/ShareFbActivity;->mLocation:Lcom/waze/share/ShareFbLocation;

    invoke-direct {p0}, Lcom/waze/share/ShareFbActivity;->_friends_ids()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/waze/share/ShareFbQueries;->postFeed(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/share/ShareFbLocation;[Ljava/lang/String;Ljava/lang/String;Lcom/waze/share/ShareFbQueries$IPostCallback;Z)V

    .line 209
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/waze/share/ShareFbActivity;->mTripText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private setTripText()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 234
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    .line 235
    .local v2, nm:Lcom/waze/NativeManager;
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 236
    .local v5, res:Landroid/text/SpannableStringBuilder;
    iget-object v8, p0, Lcom/waze/share/ShareFbActivity;->mPostText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 238
    .local v4, postText:Ljava/lang/String;
    const/4 v0, 0x0

    .line 239
    .local v0, destination:Ljava/lang/String;
    iget-object v8, p0, Lcom/waze/share/ShareFbActivity;->mLocation:Lcom/waze/share/ShareFbLocation;

    if-nez v8, :cond_4

    .line 241
    iget-object v8, p0, Lcom/waze/share/ShareFbActivity;->mFbMainData:Lcom/waze/share/ShareFbMainData;

    if-eqz v8, :cond_0

    .line 242
    iget-object v8, p0, Lcom/waze/share/ShareFbActivity;->mFbMainData:Lcom/waze/share/ShareFbMainData;

    iget-object v0, v8, Lcom/waze/share/ShareFbMainData;->location:Ljava/lang/String;

    .line 249
    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    move v1, v6

    .line 251
    .local v1, destinationAvailable:Z
    :goto_1
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 253
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/waze/share/ShareFbActivity;->mPostText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 255
    :cond_1
    if-eqz v1, :cond_7

    .line 257
    iget-object v8, p0, Lcom/waze/share/ShareFbActivity;->mFbMainData:Lcom/waze/share/ShareFbMainData;

    iget-boolean v8, v8, Lcom/waze/share/ShareFbMainData;->isNavigating:Z

    if-eqz v8, :cond_6

    .line 258
    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_DRIVING_TO:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v8}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 267
    :goto_2
    if-eqz v1, :cond_2

    .line 269
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v5, v8}, Lcom/waze/share/ShareFbActivity;->_append_highlight_span(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 273
    :cond_2
    iget-object v8, p0, Lcom/waze/share/ShareFbActivity;->mFriends:[Lcom/waze/share/ShareFbFriend;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/waze/share/ShareFbActivity;->mFriends:[Lcom/waze/share/ShareFbFriend;

    array-length v8, v8

    if-lez v8, :cond_3

    .line 275
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_WITH__LLL:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 276
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/waze/share/ShareFbActivity;->mFriends:[Lcom/waze/share/ShareFbFriend;

    aget-object v7, v9, v7

    iget-object v7, v7, Lcom/waze/share/ShareFbFriend;->name:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/waze/share/ShareFbActivity;->_append_highlight_span(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 277
    iget-object v7, p0, Lcom/waze/share/ShareFbActivity;->mFriends:[Lcom/waze/share/ShareFbFriend;

    array-length v7, v7

    if-le v7, v6, :cond_3

    .line 279
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_AND:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v8}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 280
    iget-object v7, p0, Lcom/waze/share/ShareFbActivity;->mFriends:[Lcom/waze/share/ShareFbFriend;

    array-length v7, v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_8

    .line 282
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/waze/share/ShareFbActivity;->mFriends:[Lcom/waze/share/ShareFbFriend;

    aget-object v6, v8, v6

    iget-object v6, v6, Lcom/waze/share/ShareFbFriend;->name:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/waze/share/ShareFbActivity;->_append_highlight_span(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 292
    :cond_3
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_USING_WAZE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v7}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 293
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-direct {p0, v5, v6, v7}, Lcom/waze/share/ShareFbActivity;->_highlight_span(Landroid/text/SpannableStringBuilder;II)V

    .line 296
    iget-object v6, p0, Lcom/waze/share/ShareFbActivity;->mTripText:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    return-void

    .line 246
    .end local v1           #destinationAvailable:Z
    :cond_4
    iget-object v8, p0, Lcom/waze/share/ShareFbActivity;->mLocation:Lcom/waze/share/ShareFbLocation;

    iget-object v0, v8, Lcom/waze/share/ShareFbLocation;->name:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    move v1, v7

    .line 249
    goto/16 :goto_1

    .line 260
    .restart local v1       #destinationAvailable:Z
    :cond_6
    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_DROVE_TO:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v8}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_2

    .line 264
    :cond_7
    sget-object v8, Lcom/waze/strings/DisplayStrings;->DS_DROVE_LLL:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v8}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_2

    .line 286
    :cond_8
    iget-object v6, p0, Lcom/waze/share/ShareFbActivity;->mFriends:[Lcom/waze/share/ShareFbFriend;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, num:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_OTHERS__LLL:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v7}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/waze/share/ShareFbActivity;->_append_highlight_span(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private updateTripFriends([Lcom/waze/share/ShareFbFriend;)V
    .locals 4
    .parameter "friendsList"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/waze/share/ShareFbActivity;->mFriends:[Lcom/waze/share/ShareFbFriend;

    .line 156
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 157
    .local v0, friendsString:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    .line 162
    iget-object v2, p0, Lcom/waze/share/ShareFbActivity;->mTripText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    return-void

    .line 159
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, p1, v1

    iget-object v3, v3, Lcom/waze/share/ShareFbFriend;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 114
    packed-switch p2, :pswitch_data_0

    .line 143
    invoke-virtual {p0, p2}, Lcom/waze/share/ShareFbActivity;->setResult(I)V

    .line 144
    invoke-virtual {p0}, Lcom/waze/share/ShareFbActivity;->finish()V

    .line 148
    :goto_0
    :pswitch_0
    return-void

    .line 120
    :pswitch_1
    invoke-static {}, Lcom/waze/share/ShareFbWithActivity;->getSelected()[Lcom/waze/share/ShareFbFriend;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/waze/share/ShareFbActivity;->updateTripFriends([Lcom/waze/share/ShareFbFriend;)V

    .line 121
    invoke-direct {p0}, Lcom/waze/share/ShareFbActivity;->setTripText()V

    goto :goto_0

    .line 126
    :pswitch_2
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/waze/share/ShareFbActivity;->setResult(I)V

    .line 127
    invoke-virtual {p0}, Lcom/waze/share/ShareFbActivity;->finish()V

    goto :goto_0

    .line 132
    :pswitch_3
    const-string v1, "Position id"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, id:Ljava/lang/String;
    invoke-static {v0}, Lcom/waze/share/ShareFbLocationActivity;->getSelected(Ljava/lang/String;)Lcom/waze/share/ShareFbLocation;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/share/ShareFbActivity;->mLocation:Lcom/waze/share/ShareFbLocation;

    .line 134
    invoke-direct {p0}, Lcom/waze/share/ShareFbActivity;->setTripText()V

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-static {}, Lcom/waze/share/ShareNativeManager;->getInstance()Lcom/waze/share/ShareNativeManager;

    move-result-object v3

    .line 34
    .local v3, nm:Lcom/waze/share/ShareNativeManager;
    const v5, 0x7f030104

    invoke-virtual {p0, v5}, Lcom/waze/share/ShareFbActivity;->setContentView(I)V

    .line 36
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/waze/NativeManager;->isNavigatingNTV()Z

    move-result v5

    invoke-virtual {v3, p0, v5}, Lcom/waze/share/ShareNativeManager;->getShareFbMainData(Lcom/waze/share/ShareNativeManager$IShareFbMainDataHandler;Z)V

    .line 38
    invoke-virtual {p0}, Lcom/waze/share/ShareFbActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "message"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 40
    .local v4, sPostText:Ljava/lang/String;
    const v5, 0x7f0906bd

    invoke-virtual {p0, v5}, Lcom/waze/share/ShareFbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v6

    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_WITH:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v7}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    const v5, 0x7f0906bb

    invoke-virtual {p0, v5}, Lcom/waze/share/ShareFbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v6

    sget-object v7, Lcom/waze/strings/DisplayStrings;->DS_ADD_LOCATION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v6, v7}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    const v5, 0x7f0902b3

    invoke-virtual {p0, v5}, Lcom/waze/share/ShareFbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/waze/share/ShareFbActivity;->mPostText:Landroid/widget/EditText;

    .line 46
    iget-object v5, p0, Lcom/waze/share/ShareFbActivity;->mPostText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/waze/share/ShareFbActivity;->mPostTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 47
    const v5, 0x7f0902b5

    invoke-virtual {p0, v5}, Lcom/waze/share/ShareFbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/waze/share/ShareFbActivity;->mTripText:Landroid/widget/TextView;

    .line 48
    if-eqz v4, :cond_0

    .line 50
    iget-object v5, p0, Lcom/waze/share/ShareFbActivity;->mPostText:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/waze/share/ShareFbActivity;->bIsAction:Z

    .line 55
    :cond_0
    const v5, 0x7f0906bc

    invoke-virtual {p0, v5}, Lcom/waze/share/ShareFbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 56
    .local v2, btnWith:Landroid/view/View;
    new-instance v5, Lcom/waze/share/ShareFbActivity$2;

    invoke-direct {v5, p0}, Lcom/waze/share/ShareFbActivity$2;-><init>(Lcom/waze/share/ShareFbActivity;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v5, 0x7f0906ba

    invoke-virtual {p0, v5}, Lcom/waze/share/ShareFbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, btnLoc:Landroid/view/View;
    new-instance v5, Lcom/waze/share/ShareFbActivity$3;

    invoke-direct {v5, p0}, Lcom/waze/share/ShareFbActivity$3;-><init>(Lcom/waze/share/ShareFbActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v5, 0x7f0902b6

    invoke-virtual {p0, v5}, Lcom/waze/share/ShareFbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 73
    .local v1, btnPost:Landroid/view/View;
    new-instance v5, Lcom/waze/share/ShareFbActivity$4;

    invoke-direct {v5, p0}, Lcom/waze/share/ShareFbActivity$4;-><init>(Lcom/waze/share/ShareFbActivity;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    return-void
.end method

.method public onFbMainData(Lcom/waze/share/ShareFbMainData;)V
    .locals 5
    .parameter "data"

    .prologue
    .line 86
    move-object v0, p0

    .line 88
    .local v0, activity:Lcom/waze/share/ShareFbActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/waze/share/ShareFbActivity;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    iput-object p1, p0, Lcom/waze/share/ShareFbActivity;->mFbMainData:Lcom/waze/share/ShareFbMainData;

    .line 93
    const v3, 0x7f0902af

    invoke-virtual {p0, v3}, Lcom/waze/share/ShareFbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/title/TitleBar;

    .line 94
    .local v2, tb:Lcom/waze/view/title/TitleBar;
    iget-object v3, p1, Lcom/waze/share/ShareFbMainData;->title:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 97
    iget-object v3, p0, Lcom/waze/share/ShareFbActivity;->mPostText:Landroid/widget/EditText;

    iget-object v4, p1, Lcom/waze/share/ShareFbMainData;->hint:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 100
    const v3, 0x7f0902b7

    invoke-virtual {v0, v3}, Lcom/waze/share/ShareFbActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 101
    .local v1, postFbBtnText:Landroid/widget/TextView;
    iget-object v3, p1, Lcom/waze/share/ShareFbMainData;->post_to_fb:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-direct {p0}, Lcom/waze/share/ShareFbActivity;->setTripText()V

    .line 106
    .end local v1           #postFbBtnText:Landroid/widget/TextView;
    .end local v2           #tb:Lcom/waze/view/title/TitleBar;
    :cond_0
    return-void
.end method

.method public onPostResult(ILjava/lang/String;)V
    .locals 4
    .parameter "error_code"
    .parameter "errorString"

    .prologue
    .line 167
    new-instance v0, Lcom/waze/share/ShareFbActivity$5;

    invoke-direct {v0, p0}, Lcom/waze/share/ShareFbActivity$5;-><init>(Lcom/waze/share/ShareFbActivity;)V

    .line 174
    .local v0, onMsgClose:Landroid/content/DialogInterface$OnClickListener;
    if-nez p1, :cond_0

    .line 176
    const-string v1, "WAZE"

    const-string v2, "Post has been done successfully"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v1, p0, Lcom/waze/share/ShareFbActivity;->mFbMainData:Lcom/waze/share/ShareFbMainData;

    iget-object v1, v1, Lcom/waze/share/ShareFbMainData;->postMsgBoxSuccessTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/share/ShareFbActivity;->mFbMainData:Lcom/waze/share/ShareFbMainData;

    iget-object v2, v2, Lcom/waze/share/ShareFbMainData;->postMsgBoxSuccessText:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-static {v1, v2, v3, v0}, Lcom/waze/MsgBox;->openMessageBoxTimeout(Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 184
    :goto_0
    return-void

    .line 181
    :cond_0
    const-string v1, "WAZE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "There was an error posting to FB: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v1, p0, Lcom/waze/share/ShareFbActivity;->mFbMainData:Lcom/waze/share/ShareFbMainData;

    iget-object v1, v1, Lcom/waze/share/ShareFbMainData;->postMsgBoxFailureTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/share/ShareFbActivity;->mFbMainData:Lcom/waze/share/ShareFbMainData;

    iget-object v2, v2, Lcom/waze/share/ShareFbMainData;->postMsgBoxFailureText:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-static {v1, v2, v3, v0}, Lcom/waze/MsgBox;->openMessageBoxTimeout(Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method
