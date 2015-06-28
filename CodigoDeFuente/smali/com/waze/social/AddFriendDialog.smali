.class public Lcom/waze/social/AddFriendDialog;
.super Landroid/app/Dialog;
.source "AddFriendDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/social/AddFriendDialog$IAddFriendDialog;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/waze/ifs/ui/ActivityBase;

.field private mButtonText:Ljava/lang/String;

.field private mFriend:Lcom/waze/user/PersonBase;

.field private mIAddFriendDialog:Lcom/waze/social/AddFriendDialog$IAddFriendDialog;

.field private mImageResource:I

.field private mNatMgr:Lcom/waze/NativeManager;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/user/PersonBase;Lcom/waze/social/AddFriendDialog$IAddFriendDialog;)V
    .locals 1
    .parameter "act"
    .parameter "p"
    .parameter "iafd"

    .prologue
    .line 39
    const v0, 0x7f06000f

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 40
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/social/AddFriendDialog;->mNatMgr:Lcom/waze/NativeManager;

    .line 41
    iput-object p1, p0, Lcom/waze/social/AddFriendDialog;->mActivity:Lcom/waze/ifs/ui/ActivityBase;

    .line 42
    iput-object p2, p0, Lcom/waze/social/AddFriendDialog;->mFriend:Lcom/waze/user/PersonBase;

    .line 43
    iput-object p3, p0, Lcom/waze/social/AddFriendDialog;->mIAddFriendDialog:Lcom/waze/social/AddFriendDialog$IAddFriendDialog;

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/waze/ifs/ui/ActivityBase;Ljava/lang/String;Ljava/lang/String;ILcom/waze/social/AddFriendDialog$IAddFriendDialog;)V
    .locals 1
    .parameter "act"
    .parameter "title"
    .parameter "buttonText"
    .parameter "imageResource"
    .parameter "iafd"

    .prologue
    .line 48
    const v0, 0x7f06000f

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 49
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/social/AddFriendDialog;->mNatMgr:Lcom/waze/NativeManager;

    .line 50
    iput-object p1, p0, Lcom/waze/social/AddFriendDialog;->mActivity:Lcom/waze/ifs/ui/ActivityBase;

    .line 51
    iput-object p2, p0, Lcom/waze/social/AddFriendDialog;->mTitle:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/waze/social/AddFriendDialog;->mButtonText:Ljava/lang/String;

    .line 53
    iput p4, p0, Lcom/waze/social/AddFriendDialog;->mImageResource:I

    .line 54
    iput-object p5, p0, Lcom/waze/social/AddFriendDialog;->mIAddFriendDialog:Lcom/waze/social/AddFriendDialog$IAddFriendDialog;

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/waze/social/AddFriendDialog;)Lcom/waze/social/AddFriendDialog$IAddFriendDialog;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/waze/social/AddFriendDialog;->mIAddFriendDialog:Lcom/waze/social/AddFriendDialog$IAddFriendDialog;

    return-object v0
.end method

.method private initLayout()V
    .locals 14

    .prologue
    const v13, 0x7f090070

    const/4 v10, -0x1

    .line 64
    const v9, 0x7f030006

    invoke-virtual {p0, v9}, Lcom/waze/social/AddFriendDialog;->setContentView(I)V

    .line 65
    invoke-virtual {p0}, Lcom/waze/social/AddFriendDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v10, v10}, Landroid/view/Window;->setLayout(II)V

    .line 67
    const v9, 0x7f090071

    invoke-virtual {p0, v9}, Lcom/waze/social/AddFriendDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 68
    .local v6, sendRequestButton:Landroid/widget/TextView;
    const v9, 0x7f09006f

    invoke-virtual {p0, v9}, Lcom/waze/social/AddFriendDialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 70
    .local v8, userPic:Landroid/widget/ImageView;
    iget-object v9, p0, Lcom/waze/social/AddFriendDialog;->mFriend:Lcom/waze/user/PersonBase;

    if-eqz v9, :cond_3

    .line 72
    iget-object v9, p0, Lcom/waze/social/AddFriendDialog;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v10, Lcom/waze/strings/DisplayStrings;->DS_ADD_SP_AS_FRIEND:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v9, v10}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/waze/social/AddFriendDialog;->mFriend:Lcom/waze/user/PersonBase;

    invoke-virtual {v12}, Lcom/waze/user/PersonBase;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 71
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, content:Ljava/lang/String;
    invoke-virtual {p0, v13}, Lcom/waze/social/AddFriendDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v9, p0, Lcom/waze/social/AddFriendDialog;->mFriend:Lcom/waze/user/PersonBase;

    invoke-virtual {v9}, Lcom/waze/user/PersonBase;->getName()Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, name:Ljava/lang/String;
    const v9, 0x7f09006e

    invoke-virtual {p0, v9}, Lcom/waze/social/AddFriendDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 78
    .local v2, initialsView:Landroid/widget/TextView;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 79
    invoke-static {v3}, Lcom/waze/share/ShareUtility;->getInitials(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :cond_0
    iget-object v9, p0, Lcom/waze/social/AddFriendDialog;->mFriend:Lcom/waze/user/PersonBase;

    invoke-virtual {v9}, Lcom/waze/user/PersonBase;->getImage()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, imageUrl:Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 84
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 85
    .local v7, tryUri:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 86
    .local v5, scheme:Ljava/lang/String;
    if-eqz v5, :cond_1

    const-string v9, "content"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 88
    :cond_1
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v9

    iget-object v10, p0, Lcom/waze/social/AddFriendDialog;->mFriend:Lcom/waze/user/PersonBase;

    invoke-virtual {v10}, Lcom/waze/user/PersonBase;->getID()I

    move-result v10

    .line 89
    const/high16 v11, 0x42a0

    invoke-virtual {p0}, Lcom/waze/social/AddFriendDialog;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v11, v12

    float-to-int v11, v11

    .line 88
    invoke-virtual {v9, v10, v11}, Lcom/waze/navigate/DriveToNativeManager;->getFriendImageNTV(II)Ljava/lang/String;

    move-result-object v1

    .line 93
    .end local v5           #scheme:Ljava/lang/String;
    .end local v7           #tryUri:Landroid/net/Uri;
    :cond_2
    sget-object v9, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    iget-object v10, p0, Lcom/waze/social/AddFriendDialog;->mActivity:Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v9, v1, v8, v10}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/waze/ifs/ui/ActivityBase;)V

    .line 95
    iget-object v9, p0, Lcom/waze/social/AddFriendDialog;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v10, Lcom/waze/strings/DisplayStrings;->DS_SEND_FRIEND_REQUEST:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v9, v10}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .end local v0           #content:Ljava/lang/String;
    .end local v1           #imageUrl:Ljava/lang/String;
    .end local v2           #initialsView:Landroid/widget/TextView;
    .end local v3           #name:Ljava/lang/String;
    :goto_0
    new-instance v9, Lcom/waze/social/AddFriendDialog$1;

    invoke-direct {v9, p0}, Lcom/waze/social/AddFriendDialog$1;-><init>(Lcom/waze/social/AddFriendDialog;)V

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v9, 0x7f090072

    invoke-virtual {p0, v9}, Lcom/waze/social/AddFriendDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 111
    .local v4, notNow:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/waze/social/AddFriendDialog;->mNatMgr:Lcom/waze/NativeManager;

    sget-object v10, Lcom/waze/strings/DisplayStrings;->DS_SKIP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v9, v10}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    new-instance v9, Lcom/waze/social/AddFriendDialog$2;

    invoke-direct {v9, p0}, Lcom/waze/social/AddFriendDialog$2;-><init>(Lcom/waze/social/AddFriendDialog;)V

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void

    .line 97
    .end local v4           #notNow:Landroid/widget/TextView;
    :cond_3
    invoke-virtual {p0, v13}, Lcom/waze/social/AddFriendDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/waze/social/AddFriendDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v9, p0, Lcom/waze/social/AddFriendDialog;->mButtonText:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget v9, p0, Lcom/waze/social/AddFriendDialog;->mImageResource:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-direct {p0}, Lcom/waze/social/AddFriendDialog;->initLayout()V

    .line 61
    return-void
.end method
