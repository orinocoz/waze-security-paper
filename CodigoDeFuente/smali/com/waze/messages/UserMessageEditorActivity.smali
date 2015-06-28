.class public Lcom/waze/messages/UserMessageEditorActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "UserMessageEditorActivity.java"


# instance fields
.field private mEditorView:Landroid/widget/EditText;

.field private mIsPrivate:Z

.field private mOnSendHandler:Lcom/waze/messages/OnSendHandler;

.field private final mTextWatcher:Landroid/text/TextWatcher;

.field private mTitleBar:Lcom/waze/view/title/TitleBar;

.field private mUserData:Lcom/waze/user/UserData;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 230
    new-instance v0, Lcom/waze/messages/UserMessageEditorActivity$1;

    invoke-direct {v0, p0}, Lcom/waze/messages/UserMessageEditorActivity$1;-><init>(Lcom/waze/messages/UserMessageEditorActivity;)V

    iput-object v0, p0, Lcom/waze/messages/UserMessageEditorActivity;->mTextWatcher:Landroid/text/TextWatcher;

    .line 248
    iput-object v1, p0, Lcom/waze/messages/UserMessageEditorActivity;->mEditorView:Landroid/widget/EditText;

    .line 249
    iput-object v1, p0, Lcom/waze/messages/UserMessageEditorActivity;->mOnSendHandler:Lcom/waze/messages/OnSendHandler;

    .line 250
    iput-object v1, p0, Lcom/waze/messages/UserMessageEditorActivity;->mUserData:Lcom/waze/user/UserData;

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/messages/UserMessageEditorActivity;->mIsPrivate:Z

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/waze/messages/UserMessageEditorActivity;)Lcom/waze/view/title/TitleBar;
    .locals 1
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/waze/messages/UserMessageEditorActivity;->mTitleBar:Lcom/waze/view/title/TitleBar;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/messages/UserMessageEditorActivity;Lcom/waze/strings/DisplayStrings;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/waze/messages/UserMessageEditorActivity;->showErrorPopup(Lcom/waze/strings/DisplayStrings;)V

    return-void
.end method

.method static synthetic access$2(Lcom/waze/messages/UserMessageEditorActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, Lcom/waze/messages/UserMessageEditorActivity;->mEditorView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/waze/messages/UserMessageEditorActivity;)Lcom/waze/messages/OnSendHandler;
    .locals 1
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lcom/waze/messages/UserMessageEditorActivity;->mOnSendHandler:Lcom/waze/messages/OnSendHandler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/waze/messages/UserMessageEditorActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/waze/messages/UserMessageEditorActivity;->mIsPrivate:Z

    return v0
.end method

.method static synthetic access$5(Lcom/waze/messages/UserMessageEditorActivity;)Lcom/waze/user/UserData;
    .locals 1
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/waze/messages/UserMessageEditorActivity;->mUserData:Lcom/waze/user/UserData;

    return-object v0
.end method

.method private setDisclaimer()V
    .locals 4

    .prologue
    .line 174
    iget-boolean v2, p0, Lcom/waze/messages/UserMessageEditorActivity;->mIsPrivate:Z

    if-eqz v2, :cond_0

    .line 175
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_MESSAGES_ARE_PRIVATE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, text:Ljava/lang/String;
    :goto_0
    const v2, 0x7f0907b3

    invoke-virtual {p0, v2}, Lcom/waze/messages/UserMessageEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 180
    .local v1, tv:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    return-void

    .line 177
    .end local v0           #text:Ljava/lang/String;
    .end local v1           #tv:Landroid/widget/TextView;
    :cond_0
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_CHIT_CHATS_ARE_PUBLIC:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #text:Ljava/lang/String;
    goto :goto_0
.end method

.method private setEditor()V
    .locals 3

    .prologue
    .line 164
    const v1, 0x7f0907b1

    invoke-virtual {p0, v1}, Lcom/waze/messages/UserMessageEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/waze/messages/UserMessageEditorActivity;->mEditorView:Landroid/widget/EditText;

    .line 166
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_ADD_A_MESSAGE_OPTIONAL:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, hint:Ljava/lang/String;
    iget-object v1, p0, Lcom/waze/messages/UserMessageEditorActivity;->mEditorView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v1, p0, Lcom/waze/messages/UserMessageEditorActivity;->mEditorView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/waze/messages/UserMessageEditorActivity;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 170
    return-void
.end method

.method private setPhone()V
    .locals 4

    .prologue
    .line 153
    iget-object v3, p0, Lcom/waze/messages/UserMessageEditorActivity;->mUserData:Lcom/waze/user/UserData;

    iget-object v1, v3, Lcom/waze/user/UserData;->mPhone:Ljava/lang/String;

    .line 154
    .local v1, phone:Ljava/lang/String;
    const v3, 0x7f0907b0

    invoke-virtual {p0, v3}, Lcom/waze/messages/UserMessageEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 155
    .local v2, tv:Landroid/widget/TextView;
    const v3, 0x7f0907af

    invoke-virtual {p0, v3}, Lcom/waze/messages/UserMessageEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 156
    .local v0, container:Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 157
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setTitle()V
    .locals 5

    .prologue
    const/16 v4, 0x77

    .line 186
    iget-boolean v2, p0, Lcom/waze/messages/UserMessageEditorActivity;->mIsPrivate:Z

    if-eqz v2, :cond_0

    .line 187
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_MESSAGE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, title:Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_SEND:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, btnText:Ljava/lang/String;
    const v2, 0x7f0907a1

    invoke-virtual {p0, v2}, Lcom/waze/messages/UserMessageEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/waze/view/title/TitleBar;

    iput-object v2, p0, Lcom/waze/messages/UserMessageEditorActivity;->mTitleBar:Lcom/waze/view/title/TitleBar;

    .line 192
    iget-object v2, p0, Lcom/waze/messages/UserMessageEditorActivity;->mTitleBar:Lcom/waze/view/title/TitleBar;

    invoke-virtual {v2, p0, v1, v0}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v2, p0, Lcom/waze/messages/UserMessageEditorActivity;->mTitleBar:Lcom/waze/view/title/TitleBar;

    invoke-virtual {v2, v4, v4, v4}, Lcom/waze/view/title/TitleBar;->setCloseTextColor(III)V

    .line 194
    iget-object v2, p0, Lcom/waze/messages/UserMessageEditorActivity;->mTitleBar:Lcom/waze/view/title/TitleBar;

    new-instance v3, Lcom/waze/messages/UserMessageEditorActivity$2;

    invoke-direct {v3, p0}, Lcom/waze/messages/UserMessageEditorActivity$2;-><init>(Lcom/waze/messages/UserMessageEditorActivity;)V

    invoke-virtual {v2, v3}, Lcom/waze/view/title/TitleBar;->setOnClickCloseListener(Landroid/view/View$OnClickListener;)V

    .line 210
    return-void

    .line 189
    .end local v0           #btnText:Ljava/lang/String;
    .end local v1           #title:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_PING:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #title:Ljava/lang/String;
    goto :goto_0
.end method

.method private setUserDetails()V
    .locals 30

    .prologue
    .line 67
    const v2, 0x7f0907a8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/messages/UserMessageEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 68
    .local v27, nicknameView:Landroid/widget/TextView;
    const v2, 0x7f0907a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/messages/UserMessageEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    .line 69
    .local v26, moodImageView:Landroid/widget/ImageView;
    const v2, 0x7f0907a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/messages/UserMessageEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 70
    .local v13, fbImageView:Landroid/widget/ImageView;
    const v2, 0x7f0907a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/messages/UserMessageEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 71
    .local v16, addOnImageView:Landroid/widget/ImageView;
    const v2, 0x7f0907aa

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/messages/UserMessageEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 72
    .local v24, friendsWithView:Landroid/widget/TextView;
    const v2, 0x7f0907ac

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/messages/UserMessageEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 73
    .local v5, friendPic1View:Landroid/widget/ImageView;
    const v2, 0x7f0907ae

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/messages/UserMessageEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 74
    .local v9, friendPic2View:Landroid/widget/ImageView;
    const v2, 0x7f0907a7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/messages/UserMessageEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    .line 75
    .local v25, groupImageView:Landroid/widget/ImageView;
    const v2, 0x7f0907a9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/messages/UserMessageEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .line 76
    .local v21, friendsContainerView:Landroid/view/View;
    const v2, 0x7f0907a6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/messages/UserMessageEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v29

    .line 77
    .local v29, userImageProfileFrameView:Landroid/view/View;
    const v2, 0x7f0907ab

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/messages/UserMessageEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 78
    .local v22, friendsPic1ContainerView:Landroid/view/View;
    const v2, 0x7f0907ad

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/waze/messages/UserMessageEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .line 79
    .local v23, friendsPic2ContainerView:Landroid/view/View;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v28

    .line 81
    .local v28, nm:Lcom/waze/NativeManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/messages/UserMessageEditorActivity;->mUserData:Lcom/waze/user/UserData;

    iget-object v2, v2, Lcom/waze/user/UserData;->mNickName:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/messages/UserMessageEditorActivity;->mUserData:Lcom/waze/user/UserData;

    iget-object v2, v2, Lcom/waze/user/UserData;->mMood:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/waze/MoodManager;->getMoodDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 85
    .local v19, drawable:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/messages/UserMessageEditorActivity;->mUserData:Lcom/waze/user/UserData;

    iget-object v2, v2, Lcom/waze/user/UserData;->mAddonName:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/messages/UserMessageEditorActivity;->mUserData:Lcom/waze/user/UserData;

    iget-object v2, v2, Lcom/waze/user/UserData;->mAddonName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 89
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/messages/UserMessageEditorActivity;->mUserData:Lcom/waze/user/UserData;

    iget-object v3, v3, Lcom/waze/user/UserData;->mAddonName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 91
    .local v17, addonIcon:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    .end local v17           #addonIcon:Landroid/graphics/drawable/Drawable;
    :goto_0
    const/16 v2, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 98
    const/16 v2, 0x8

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 99
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/messages/UserMessageEditorActivity;->mUserData:Lcom/waze/user/UserData;

    iget-boolean v2, v2, Lcom/waze/user/UserData;->mIsFbFriend:Z

    if-eqz v2, :cond_4

    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/messages/UserMessageEditorActivity;->mUserData:Lcom/waze/user/UserData;

    iget-object v2, v2, Lcom/waze/user/UserData;->mFaceBookNickName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/messages/UserMessageEditorActivity;->mUserData:Lcom/waze/user/UserData;

    iget-object v2, v2, Lcom/waze/user/UserData;->mFaceBookNickName:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/messages/UserMessageEditorActivity;->mUserData:Lcom/waze/user/UserData;

    iget-boolean v2, v2, Lcom/waze/user/UserData;->mShowGroupIcon:Z

    if-eqz v2, :cond_8

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/messages/UserMessageEditorActivity;->mUserData:Lcom/waze/user/UserData;

    iget-object v3, v3, Lcom/waze/user/UserData;->mGroupIcon:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 133
    .local v18, d:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    .end local v18           #d:Landroid/graphics/drawable/Drawable;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/messages/UserMessageEditorActivity;->mUserData:Lcom/waze/user/UserData;

    iget-boolean v2, v2, Lcom/waze/user/UserData;->mIsFbFriend:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/messages/UserMessageEditorActivity;->mUserData:Lcom/waze/user/UserData;

    iget-boolean v2, v2, Lcom/waze/user/UserData;->mShowFacebookPicture:Z

    if-eqz v2, :cond_9

    .line 141
    :cond_1
    const/16 v2, 0x8

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    const/16 v2, 0x8

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    sget-object v10, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/messages/UserMessageEditorActivity;->mUserData:Lcom/waze/user/UserData;

    invoke-virtual {v2}, Lcom/waze/user/UserData;->getImage()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v14, 0x0

    move-object/from16 v15, p0

    invoke-virtual/range {v10 .. v15}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;ZLandroid/widget/ImageView;Landroid/view/View;Lcom/waze/ifs/ui/ActivityBase;)V

    .line 150
    :goto_3
    return-void

    .line 93
    :cond_2
    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 103
    :cond_3
    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_FRIEND_WITH_YOU:Lcom/waze/strings/DisplayStrings;

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 106
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/messages/UserMessageEditorActivity;->mUserData:Lcom/waze/user/UserData;

    iget v2, v2, Lcom/waze/user/UserData;->mNumFriendsOfFriends:I

    if-nez v2, :cond_6

    .line 107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/messages/UserMessageEditorActivity;->mUserData:Lcom/waze/user/UserData;

    iget-object v0, v2, Lcom/waze/user/UserData;->mFaceBookNickName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 108
    .local v20, fbName:Ljava/lang/String;
    if-eqz v20, :cond_5

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/messages/UserMessageEditorActivity;->mUserData:Lcom/waze/user/UserData;

    iget-object v2, v2, Lcom/waze/user/UserData;->mFaceBookNickName:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 111
    :cond_5
    const/16 v2, 0x8

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 114
    .end local v20           #fbName:Ljava/lang/String;
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_FRIENDS_WITH:Lcom/waze/strings/DisplayStrings;

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/messages/UserMessageEditorActivity;->mUserData:Lcom/waze/user/UserData;

    iget-object v2, v2, Lcom/waze/user/UserData;->mFriend1Url:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 117
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 118
    sget-object v2, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    .line 119
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/waze/messages/UserMessageEditorActivity;->mUserData:Lcom/waze/user/UserData;

    iget-object v3, v3, Lcom/waze/user/UserData;->mFriend1Url:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v2 .. v7}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;ZLandroid/widget/ImageView;Landroid/view/View;Lcom/waze/ifs/ui/ActivityBase;)V

    .line 122
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/messages/UserMessageEditorActivity;->mUserData:Lcom/waze/user/UserData;

    iget-object v2, v2, Lcom/waze/user/UserData;->mFriend2Url:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 123
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 124
    sget-object v6, Lcom/waze/utils/ImageRepository;->instance:Lcom/waze/utils/ImageRepository;

    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/waze/messages/UserMessageEditorActivity;->mUserData:Lcom/waze/user/UserData;

    iget-object v7, v2, Lcom/waze/user/UserData;->mFriend2Url:Ljava/lang/String;

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object/from16 v11, p0

    invoke-virtual/range {v6 .. v11}, Lcom/waze/utils/ImageRepository;->getImage(Ljava/lang/String;ZLandroid/widget/ImageView;Landroid/view/View;Lcom/waze/ifs/ui/ActivityBase;)V

    goto/16 :goto_1

    .line 136
    :cond_8
    const/16 v2, 0x8

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 146
    :cond_9
    const/16 v2, 0x8

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 147
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method private showErrorPopup(Lcom/waze/strings/DisplayStrings;)V
    .locals 4
    .parameter "bodyText"

    .prologue
    .line 214
    new-instance v0, Lcom/waze/messages/UserMessageEditorActivity$3;

    invoke-direct {v0, p0}, Lcom/waze/messages/UserMessageEditorActivity$3;-><init>(Lcom/waze/messages/UserMessageEditorActivity;)V

    .line 224
    .local v0, onclick:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_UHHOHE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 223
    invoke-static {v1, v2, v3, v0}, Lcom/waze/MsgBox;->openMessageBoxWithCallback(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;)V

    .line 226
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f03012f

    invoke-virtual {p0, v0}, Lcom/waze/messages/UserMessageEditorActivity;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Lcom/waze/messages/UserMessageEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Is private message"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/waze/messages/UserMessageEditorActivity;->mIsPrivate:Z

    .line 44
    invoke-virtual {p0}, Lcom/waze/messages/UserMessageEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "User data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/waze/user/UserData;

    iput-object v0, p0, Lcom/waze/messages/UserMessageEditorActivity;->mUserData:Lcom/waze/user/UserData;

    .line 46
    invoke-virtual {p0}, Lcom/waze/messages/UserMessageEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 47
    const-string v1, "On Send Handler"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 46
    check-cast v0, Lcom/waze/messages/OnSendHandler;

    .line 45
    iput-object v0, p0, Lcom/waze/messages/UserMessageEditorActivity;->mOnSendHandler:Lcom/waze/messages/OnSendHandler;

    .line 49
    iget-object v0, p0, Lcom/waze/messages/UserMessageEditorActivity;->mUserData:Lcom/waze/user/UserData;

    if-nez v0, :cond_0

    .line 50
    const-string v0, "Messages"

    const-string v1, "There is no user data in editor request"

    invoke-static {v0, v1}, Lcom/waze/Logger;->e_(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/waze/messages/UserMessageEditorActivity;->setEditor()V

    .line 57
    invoke-direct {p0}, Lcom/waze/messages/UserMessageEditorActivity;->setDisclaimer()V

    .line 59
    invoke-direct {p0}, Lcom/waze/messages/UserMessageEditorActivity;->setTitle()V

    .line 61
    invoke-direct {p0}, Lcom/waze/messages/UserMessageEditorActivity;->setPhone()V

    .line 63
    invoke-direct {p0}, Lcom/waze/messages/UserMessageEditorActivity;->setUserDetails()V

    goto :goto_0
.end method
