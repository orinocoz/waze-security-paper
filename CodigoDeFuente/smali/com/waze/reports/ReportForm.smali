.class public abstract Lcom/waze/reports/ReportForm;
.super Landroid/widget/RelativeLayout;
.source "ReportForm.java"


# static fields
.field private static final IMAGE_FILE_NAME:Ljava/lang/String; = "waze_pic.jpg"

.field private static m_IsLaneActive:Z


# instance fields
.field public animation:Landroid/view/animation/Animation;

.field protected audioFilename:Ljava/lang/String;

.field private capturedImageURI:Landroid/net/Uri;

.field protected context:Landroid/content/Context;

.field protected imageFilename:Ljava/lang/String;

.field protected inflater:Landroid/view/LayoutInflater;

.field mTmpDescription:Ljava/lang/CharSequence;

.field public myLane:Z

.field protected nativeManager:Lcom/waze/NativeManager;

.field protected pendingTypingAllowed:Z

.field protected reportMenu:Lcom/waze/reports/ReportMenu;

.field private reportResourcePortrait:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    sput-boolean v0, Lcom/waze/reports/ReportForm;->m_IsLaneActive:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/waze/reports/ReportMenu;I)V
    .locals 1
    .parameter "context"
    .parameter "reportMenu"
    .parameter "reportResourcePortrait"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/reports/ReportForm;->myLane:Z

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/reports/ReportForm;->pendingTypingAllowed:Z

    .line 56
    iput-object p1, p0, Lcom/waze/reports/ReportForm;->context:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/waze/reports/ReportForm;->reportMenu:Lcom/waze/reports/ReportMenu;

    .line 58
    iput p3, p0, Lcom/waze/reports/ReportForm;->reportResourcePortrait:I

    .line 59
    return-void
.end method

.method public static SetIsLaneActive(Z)V
    .locals 0
    .parameter "bIsLaneActive"

    .prologue
    .line 63
    sput-boolean p0, Lcom/waze/reports/ReportForm;->m_IsLaneActive:Z

    .line 64
    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/ReportForm;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/waze/reports/ReportForm;->setMyLane()V

    return-void
.end method

.method static synthetic access$1(Lcom/waze/reports/ReportForm;Lcom/waze/mywaze/Group;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 433
    invoke-direct {p0, p1}, Lcom/waze/reports/ReportForm;->setGroupData(Lcom/waze/mywaze/Group;)V

    return-void
.end method

.method private setGroupData(Lcom/waze/mywaze/Group;)V
    .locals 5
    .parameter "group"

    .prologue
    .line 434
    const v3, 0x7f09056e

    invoke-virtual {p0, v3}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 435
    .local v1, groupName:Landroid/widget/TextView;
    const v3, 0x7f09056c

    invoke-virtual {p0, v3}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 436
    .local v0, groupIcon:Landroid/widget/ImageView;
    iget-object v3, p1, Lcom/waze/mywaze/Group;->name:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/waze/mywaze/Group;->name:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 437
    :cond_0
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v3

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_NO_GROUP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 447
    :goto_0
    return-void

    .line 440
    :cond_1
    iget-object v3, p1, Lcom/waze/mywaze/Group;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/waze/mywaze/Group;->icon:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".bin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 442
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_2

    .line 443
    const-string v3, "groups_default_icons.bin"

    invoke-static {v3}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 445
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setMyLane()V
    .locals 5

    .prologue
    const v4, 0x7f0901f5

    .line 72
    const v2, 0x7f0901f6

    invoke-virtual {p0, v2}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 73
    .local v1, laneTextView:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 74
    sget-boolean v2, Lcom/waze/reports/ReportForm;->m_IsLaneActive:Z

    if-eqz v2, :cond_4

    .line 76
    iget-boolean v2, p0, Lcom/waze/reports/ReportForm;->myLane:Z

    if-eqz v2, :cond_2

    .line 77
    iget-object v2, p0, Lcom/waze/reports/ReportForm;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_MY_LANE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, laneText:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v2, p0, Lcom/waze/reports/ReportForm;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v2}, Lcom/waze/NativeManager;->getIsDriveOnLeft()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    invoke-virtual {p0, v4}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f020213

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    .end local v0           #laneText:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 85
    .restart local v0       #laneText:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v4}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f020212

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 88
    .end local v0           #laneText:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/waze/reports/ReportForm;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_OTHER_LANE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .restart local v0       #laneText:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v2, p0, Lcom/waze/reports/ReportForm;->nativeManager:Lcom/waze/NativeManager;

    invoke-virtual {v2}, Lcom/waze/NativeManager;->getIsDriveOnLeft()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 92
    invoke-virtual {p0, v4}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f020216

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 96
    :cond_3
    invoke-virtual {p0, v4}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f020215

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 102
    .end local v0           #laneText:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/waze/reports/ReportForm;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_DURATION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .restart local v0       #laneText:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public afterOrientationChanged()V
    .locals 6

    .prologue
    const v5, 0x7f09056a

    const v4, 0x7f090569

    .line 398
    const v3, 0x7f0903eb

    invoke-virtual {p0, v3}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 399
    .local v0, descriptionView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 400
    iget-object v3, p0, Lcom/waze/reports/ReportForm;->mTmpDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    :cond_0
    invoke-direct {p0}, Lcom/waze/reports/ReportForm;->setMyLane()V

    .line 403
    iget-object v3, p0, Lcom/waze/reports/ReportForm;->imageFilename:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 404
    invoke-virtual {p0, v4}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 405
    .local v1, pic:Landroid/widget/ImageView;
    if-eqz v1, :cond_1

    .line 406
    invoke-virtual {p0}, Lcom/waze/reports/ReportForm;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 407
    const v3, 0x7f020210

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 411
    :goto_0
    iget-object v3, p0, Lcom/waze/reports/ReportForm;->nativeManager:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_PICTURE_ADDED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 412
    .local v2, picText:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    .end local v2           #picText:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 409
    :cond_2
    const v3, 0x7f02020f

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 416
    .end local v1           #pic:Landroid/widget/ImageView;
    :cond_3
    invoke-virtual {p0, v4}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 417
    .restart local v1       #pic:Landroid/widget/ImageView;
    if-eqz v1, :cond_1

    .line 418
    const v3, 0x7f02021a

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 419
    iget-object v3, p0, Lcom/waze/reports/ReportForm;->nativeManager:Lcom/waze/NativeManager;

    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_TAKE_A_PIC:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 420
    .restart local v2       #picText:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public beforeOrientationChanged()V
    .locals 2

    .prologue
    .line 390
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waze/reports/ReportForm;->mTmpDescription:Ljava/lang/CharSequence;

    .line 391
    const v1, 0x7f0903eb

    invoke-virtual {p0, v1}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 392
    .local v0, descriptionView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/waze/reports/ReportForm;->mTmpDescription:Ljava/lang/CharSequence;

    .line 395
    :cond_0
    return-void
.end method

.method public abstract getDelayedReportButtonResource()I
.end method

.method protected getDuration()I
    .locals 1

    .prologue
    .line 386
    const/4 v0, -0x1

    return v0
.end method

.method protected getFilenameFromUri(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .parameter "activity"
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 304
    const-string v3, ""

    move-object v0, p1

    move-object v1, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 305
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 312
    :goto_0
    return-object v2

    .line 308
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 310
    const-string v0, "_data"

    .line 309
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 312
    .local v7, dataIndex:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected abstract getReportSubtype()I
.end method

.method protected abstract getReportType()I
.end method

.method protected initLayout()V
    .locals 19

    .prologue
    .line 108
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/waze/reports/ReportForm;->nativeManager:Lcom/waze/NativeManager;

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/reports/ReportForm;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/LayoutInflater;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/waze/reports/ReportForm;->inflater:Landroid/view/LayoutInflater;

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/reports/ReportForm;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/waze/reports/ReportForm;->reportResourcePortrait:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/reports/ReportForm;->nativeManager:Lcom/waze/NativeManager;

    move-object/from16 v17, v0

    sget-object v18, Lcom/waze/strings/DisplayStrings;->DS_SEND:Lcom/waze/strings/DisplayStrings;

    invoke-virtual/range {v17 .. v18}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v14

    .line 112
    .local v14, sendText:Ljava/lang/String;
    const v17, 0x7f090370

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 113
    .local v15, sendTextView:Landroid/widget/TextView;
    if-eqz v15, :cond_0

    .line 114
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/reports/ReportForm;->nativeManager:Lcom/waze/NativeManager;

    move-object/from16 v17, v0

    sget-object v18, Lcom/waze/strings/DisplayStrings;->DS_LATER_CAPITAL:Lcom/waze/strings/DisplayStrings;

    invoke-virtual/range {v17 .. v18}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, closeText:Ljava/lang/String;
    const v17, 0x7f090205

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 118
    .local v3, closeTextView:Landroid/widget/TextView;
    if-eqz v3, :cond_1

    .line 119
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/reports/ReportForm;->nativeManager:Lcom/waze/NativeManager;

    move-object/from16 v17, v0

    sget-object v18, Lcom/waze/strings/DisplayStrings;->DS_TAKE_A_PIC:Lcom/waze/strings/DisplayStrings;

    invoke-virtual/range {v17 .. v18}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v10

    .line 122
    .local v10, picText:Ljava/lang/String;
    const v17, 0x7f09056a

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 123
    .local v12, reportPicture:Landroid/widget/TextView;
    if-eqz v12, :cond_2

    .line 124
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :cond_2
    sget-boolean v17, Lcom/waze/reports/ReportForm;->m_IsLaneActive:Z

    if-eqz v17, :cond_d

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/reports/ReportForm;->nativeManager:Lcom/waze/NativeManager;

    move-object/from16 v17, v0

    sget-object v18, Lcom/waze/strings/DisplayStrings;->DS_MY_LANE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual/range {v17 .. v18}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v7

    .line 130
    .local v7, laneText:Ljava/lang/String;
    const v17, 0x7f0901f6

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 131
    .local v8, laneTextView:Landroid/widget/TextView;
    if-eqz v8, :cond_3

    .line 132
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/waze/reports/ReportForm;->setMyLane()V

    .line 145
    :cond_4
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/reports/ReportForm;->nativeManager:Lcom/waze/NativeManager;

    move-object/from16 v17, v0

    sget-object v18, Lcom/waze/strings/DisplayStrings;->DS_SHARE_DETAILS_HERE___:Lcom/waze/strings/DisplayStrings;

    invoke-virtual/range {v17 .. v18}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v16

    .line 146
    .local v16, shareDetailsText:Ljava/lang/String;
    const v17, 0x7f0903eb

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 147
    .local v4, descriptionView:Landroid/widget/EditText;
    if-eqz v4, :cond_5

    .line 148
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/reports/ReportForm;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    new-instance v18, Lcom/waze/reports/ReportForm$1;

    invoke-direct/range {v18 .. v19}, Lcom/waze/reports/ReportForm$1;-><init>(Lcom/waze/reports/ReportForm;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v4, v1}, Lcom/waze/utils/EditTextUtils;->getKeyboardLockOnTouchListener(Landroid/content/Context;Landroid/widget/EditText;Lcom/waze/utils/EditTextUtils$OnTouchListenerDoneListener;)Landroid/view/View$OnTouchListener;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 157
    :cond_5
    const v17, 0x7f090033

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v17

    new-instance v18, Lcom/waze/reports/ReportForm$2;

    invoke-direct/range {v18 .. v19}, Lcom/waze/reports/ReportForm$2;-><init>(Lcom/waze/reports/ReportForm;)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v17, 0x7f090204

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 165
    .local v9, laterButton:Landroid/view/View;
    if-eqz v9, :cond_6

    .line 166
    new-instance v17, Lcom/waze/reports/ReportForm$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/waze/reports/ReportForm$3;-><init>(Lcom/waze/reports/ReportForm;)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    :cond_6
    const v17, 0x7f09036f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 174
    .local v13, sendButton:Landroid/view/View;
    if-eqz v13, :cond_7

    .line 175
    new-instance v17, Lcom/waze/reports/ReportForm$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/waze/reports/ReportForm$4;-><init>(Lcom/waze/reports/ReportForm;Landroid/widget/EditText;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/reports/ReportForm;->nativeManager:Lcom/waze/NativeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/waze/NativeManager;->ReportAllowVoiceRecordingsNTV()Z

    move-result v17

    if-eqz v17, :cond_e

    .line 216
    const v17, 0x7f090582

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_9

    .line 218
    invoke-static {}, Lcom/waze/NativeManager;->getManufacturer()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_8

    invoke-static {}, Lcom/waze/NativeManager;->getManufacturer()Ljava/lang/String;

    move-result-object v17

    const-string v18, "samsung"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 219
    invoke-static {}, Lcom/waze/NativeManager;->getModel()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_8

    invoke-static {}, Lcom/waze/NativeManager;->getModel()Ljava/lang/String;

    move-result-object v17

    const-string v18, "GT-I9100"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 220
    invoke-static {}, Lcom/waze/NativeManager;->getDevice()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_8

    invoke-static {}, Lcom/waze/NativeManager;->getDevice()Ljava/lang/String;

    move-result-object v17

    const-string v18, "GT-I9100"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 221
    const v17, 0x7f090582

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 223
    :cond_8
    const v17, 0x7f090582

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v17

    new-instance v18, Lcom/waze/reports/ReportForm$5;

    invoke-direct/range {v18 .. v19}, Lcom/waze/reports/ReportForm$5;-><init>(Lcom/waze/reports/ReportForm;)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    :cond_9
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/reports/ReportForm;->nativeManager:Lcom/waze/NativeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/waze/NativeManager;->ReportAllowImagesNTV()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 239
    const v17, 0x7f0901f7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 240
    .local v11, pictureButton:Landroid/view/View;
    if-eqz v11, :cond_a

    .line 241
    new-instance v17, Lcom/waze/reports/ReportForm$6;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/waze/reports/ReportForm$6;-><init>(Lcom/waze/reports/ReportForm;)V

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    :cond_a
    :goto_2
    sget-boolean v17, Lcom/waze/reports/ReportForm;->m_IsLaneActive:Z

    if-eqz v17, :cond_b

    .line 259
    const v17, 0x7f0901f4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 260
    .local v6, laneButton:Landroid/view/View;
    if-eqz v6, :cond_b

    .line 261
    new-instance v17, Lcom/waze/reports/ReportForm$7;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/waze/reports/ReportForm$7;-><init>(Lcom/waze/reports/ReportForm;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    .end local v6           #laneButton:Landroid/view/View;
    :cond_b
    const v17, 0x7f09056b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 276
    .local v5, groupsView:Landroid/view/View;
    if-eqz v5, :cond_c

    .line 277
    new-instance v17, Lcom/waze/reports/ReportForm$8;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/waze/reports/ReportForm$8;-><init>(Lcom/waze/reports/ReportForm;)V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    invoke-static {}, Lcom/waze/mywaze/MyWazeNativeManager;->getInstance()Lcom/waze/mywaze/MyWazeNativeManager;

    move-result-object v17

    new-instance v18, Lcom/waze/reports/ReportForm$9;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/waze/reports/ReportForm$9;-><init>(Lcom/waze/reports/ReportForm;Landroid/view/View;)V

    invoke-virtual/range {v17 .. v18}, Lcom/waze/mywaze/MyWazeNativeManager;->getActiveGroup(Lcom/waze/mywaze/MyWazeNativeManager$ActiveGroupListener;)V

    .line 301
    :cond_c
    return-void

    .line 139
    .end local v4           #descriptionView:Landroid/widget/EditText;
    .end local v5           #groupsView:Landroid/view/View;
    .end local v7           #laneText:Ljava/lang/String;
    .end local v8           #laneTextView:Landroid/widget/TextView;
    .end local v9           #laterButton:Landroid/view/View;
    .end local v11           #pictureButton:Landroid/view/View;
    .end local v13           #sendButton:Landroid/view/View;
    .end local v16           #shareDetailsText:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/reports/ReportForm;->nativeManager:Lcom/waze/NativeManager;

    move-object/from16 v17, v0

    sget-object v18, Lcom/waze/strings/DisplayStrings;->DS_DURATION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual/range {v17 .. v18}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v7

    .line 140
    .restart local v7       #laneText:Ljava/lang/String;
    const v17, 0x7f0901f6

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 141
    .restart local v8       #laneTextView:Landroid/widget/TextView;
    if-eqz v8, :cond_4

    .line 142
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 233
    .restart local v4       #descriptionView:Landroid/widget/EditText;
    .restart local v9       #laterButton:Landroid/view/View;
    .restart local v13       #sendButton:Landroid/view/View;
    .restart local v16       #shareDetailsText:Ljava/lang/String;
    :cond_e
    const v17, 0x7f090582

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_9

    .line 234
    const v17, 0x7f090582

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 251
    :cond_f
    const v17, 0x7f0901f7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 252
    .restart local v11       #pictureButton:Landroid/view/View;
    if-eqz v11, :cond_a

    .line 253
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 6
    .parameter "activity"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const v5, 0x7f09056a

    const/4 v3, -0x1

    const v4, 0x7f090569

    .line 337
    const v2, 0x8002

    if-ne p2, v2, :cond_3

    .line 338
    if-ne p3, v3, :cond_2

    .line 339
    iget-object v2, p0, Lcom/waze/reports/ReportForm;->capturedImageURI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v2}, Lcom/waze/reports/ReportForm;->getFilenameFromUri(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/waze/reports/ReportForm;->imageFilename:Ljava/lang/String;

    .line 340
    invoke-virtual {p0}, Lcom/waze/reports/ReportForm;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 341
    invoke-virtual {p0, v4}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f020210

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 345
    :goto_0
    iget-object v2, p0, Lcom/waze/reports/ReportForm;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_PICTURE_ADDED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, picText:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    .end local v1           #picText:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 343
    :cond_1
    invoke-virtual {p0, v4}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f02020f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 347
    :cond_2
    if-nez p3, :cond_0

    .line 348
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/waze/reports/ReportForm;->imageFilename:Ljava/lang/String;

    .line 349
    invoke-virtual {p0, v4}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f02021a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 350
    iget-object v2, p0, Lcom/waze/reports/ReportForm;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_TAKE_A_PIC:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 351
    .restart local v1       #picText:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 353
    .end local v1           #picText:Ljava/lang/String;
    :cond_3
    const v2, 0x8008

    if-ne p2, v2, :cond_0

    .line 354
    if-ne p3, v3, :cond_0

    .line 355
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "group"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/waze/mywaze/Group;

    .line 356
    .local v0, group:Lcom/waze/mywaze/Group;
    if-eqz v0, :cond_0

    .line 357
    invoke-direct {p0, v0}, Lcom/waze/reports/ReportForm;->setGroupData(Lcom/waze/mywaze/Group;)V

    goto :goto_1
.end method

.method public onOpenCallback()V
    .locals 0

    .prologue
    .line 431
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 426
    return-void
.end method

.method protected recordAudio()V
    .locals 9

    .prologue
    .line 325
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v6

    .line 326
    .local v6, activity:Landroid/app/Activity;
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "android.provider.MediaStore.extra.MAX_BYTES"

    const-wide/16 v1, 0x2710

    invoke-virtual {v8, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 329
    const v0, 0x8001

    :try_start_0
    invoke-virtual {v6, v8, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v7

    .line 331
    .local v7, e:Landroid/content/ActivityNotFoundException;
    invoke-static {}, Lcom/waze/MsgBox;->getInstance()Lcom/waze/MsgBox;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/reports/ReportForm;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_UHHOHE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 332
    iget-object v2, p0, Lcom/waze/reports/ReportForm;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_SOUND_RECORDER_NOT_FOUND:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    const-wide/16 v4, -0x1

    .line 331
    invoke-virtual/range {v0 .. v5}, Lcom/waze/MsgBox;->OpenMessageBoxTimeoutCb(Ljava/lang/String;Ljava/lang/String;IJ)V

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 364
    const v1, 0x7f090206

    invoke-virtual {p0, v1}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/timer/TimerView;

    .line 365
    .local v0, timerView:Lcom/waze/view/timer/TimerView;
    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {v0}, Lcom/waze/view/timer/TimerView;->start()V

    .line 367
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/view/timer/TimerView;->setVisibility(I)V

    .line 369
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 374
    const v1, 0x7f090206

    invoke-virtual {p0, v1}, Lcom/waze/reports/ReportForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/timer/TimerView;

    .line 375
    .local v0, timerView:Lcom/waze/view/timer/TimerView;
    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0}, Lcom/waze/view/timer/TimerView;->stop()V

    .line 378
    :cond_0
    return-void
.end method

.method protected takePicture()V
    .locals 5

    .prologue
    .line 316
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v0

    .line 317
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 318
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "title"

    const-string v4, "waze_pic.jpg"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/waze/reports/ReportForm;->capturedImageURI:Landroid/net/Uri;

    .line 320
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "output"

    iget-object v4, p0, Lcom/waze/reports/ReportForm;->capturedImageURI:Landroid/net/Uri;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 322
    const v3, 0x8002

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 323
    return-void
.end method

.method protected test()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/waze/reports/ReportForm;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/waze/reports/ReportForm;->inflater:Landroid/view/LayoutInflater;

    .line 68
    iget-object v0, p0, Lcom/waze/reports/ReportForm;->inflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/waze/reports/ReportForm;->reportResourcePortrait:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 69
    return-void
.end method
