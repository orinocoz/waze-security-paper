.class public Lcom/waze/reports/EditOpeningHoursFragment;
.super Landroid/app/Fragment;
.source "EditOpeningHoursFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/reports/EditOpeningHoursFragment$DurationTimePickDialog;
    }
.end annotation


# static fields
.field public static final OPENING_HOURS:Ljava/lang/String; = "opening_hours"

.field private static final TAG:Ljava/lang/String;

.field private static friday:Ljava/lang/String;

.field private static monday:Ljava/lang/String;

.field private static saturday:Ljava/lang/String;

.field private static sunday:Ljava/lang/String;

.field private static thursday:Ljava/lang/String;

.field private static tuesday:Ljava/lang/String;

.field private static wednesday:Ljava/lang/String;


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mAddButton:Landroid/widget/Button;

.field private mAllDayCheck:Lcom/waze/settings/SettingsSwitchView;

.field private mArrOpeningHours:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/reports/OpeningHours;",
            ">;"
        }
    .end annotation
.end field

.field private mDayButtonIds:[I

.field private mDayButtonPressed:[Z

.field private mDayLetter:[Ljava/lang/String;

.field private mEditTextFrom:Landroid/widget/EditText;

.field private mEditTextTo:Landroid/widget/EditText;

.field private mLinesContainer:Landroid/view/ViewGroup;

.field private mNm:Lcom/waze/NativeManager;

.field private mOpeningHours:Lcom/waze/settings/SettingsTitleText;

.field private r:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/waze/reports/EditOpeningHoursFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/reports/EditOpeningHoursFragment;->TAG:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/reports/EditOpeningHoursFragment;->sunday:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 42
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 47
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 49
    iput-object v0, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonIds:[I

    .line 51
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonPressed:[Z

    .line 42
    return-void

    .line 47
    :array_0
    .array-data 0x4
        0x72t 0x2t 0x9t 0x7ft
        0x73t 0x2t 0x9t 0x7ft
        0x74t 0x2t 0x9t 0x7ft
        0x75t 0x2t 0x9t 0x7ft
        0x76t 0x2t 0x9t 0x7ft
        0x77t 0x2t 0x9t 0x7ft
        0x78t 0x2t 0x9t 0x7ft
    .end array-data
.end method

.method static synthetic access$0(Lcom/waze/reports/EditOpeningHoursFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mArrOpeningHours:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/reports/EditOpeningHoursFragment;)[Z
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonPressed:[Z

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/reports/EditOpeningHoursFragment;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mNm:Lcom/waze/NativeManager;

    return-object v0
.end method

.method static synthetic access$3(Lcom/waze/reports/EditOpeningHoursFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mEditTextTo:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$4(Lcom/waze/reports/EditOpeningHoursFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mEditTextFrom:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$5(Lcom/waze/reports/EditOpeningHoursFragment;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mLinesContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$6(Lcom/waze/reports/EditOpeningHoursFragment;)Lcom/waze/settings/SettingsTitleText;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mOpeningHours:Lcom/waze/settings/SettingsTitleText;

    return-object v0
.end method

.method private setUpFragment()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 154
    iget-object v7, p0, Lcom/waze/reports/EditOpeningHoursFragment;->r:Landroid/view/View;

    const v8, 0x7f090058

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/waze/view/title/TitleButtonBar;

    .line 155
    .local v5, titleButtonBar:Lcom/waze/view/title/TitleButtonBar;
    invoke-virtual {p0}, Lcom/waze/reports/EditOpeningHoursFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mNm:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_EDIT_PLACE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v8

    .line 156
    const v9, 0x7f02010b

    .line 155
    invoke-virtual {v5, v7, v8, v10, v9}, Lcom/waze/view/title/TitleButtonBar;->init(Landroid/app/Activity;Ljava/lang/String;II)V

    .line 157
    new-instance v7, Lcom/waze/reports/EditOpeningHoursFragment$1;

    invoke-direct {v7, p0}, Lcom/waze/reports/EditOpeningHoursFragment$1;-><init>(Lcom/waze/reports/EditOpeningHoursFragment;)V

    invoke-virtual {v5, v7}, Lcom/waze/view/title/TitleButtonBar;->setButtonTwoListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v7, p0, Lcom/waze/reports/EditOpeningHoursFragment;->r:Landroid/view/View;

    const v8, 0x7f09026f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/waze/settings/SettingsTitleText;

    iput-object v7, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mOpeningHours:Lcom/waze/settings/SettingsTitleText;

    .line 165
    iget-object v7, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mOpeningHours:Lcom/waze/settings/SettingsTitleText;

    iget-object v8, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mNm:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_OPENING_HOURS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 167
    iget-object v7, p0, Lcom/waze/reports/EditOpeningHoursFragment;->r:Landroid/view/View;

    const v8, 0x7f090271

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/waze/settings/SettingsTitleText;

    iget-object v8, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mNm:Lcom/waze/NativeManager;

    .line 168
    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_ADD_HOURS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v8

    .line 167
    invoke-virtual {v7, v8}, Lcom/waze/settings/SettingsTitleText;->setText(Ljava/lang/String;)V

    .line 170
    new-instance v4, Lcom/waze/reports/EditOpeningHoursFragment$2;

    invoke-direct {v4, p0}, Lcom/waze/reports/EditOpeningHoursFragment$2;-><init>(Lcom/waze/reports/EditOpeningHoursFragment;)V

    .line 184
    .local v4, onTouchListener:Landroid/view/View$OnTouchListener;
    const/4 v0, 0x0

    .local v0, d:I
    :goto_0
    const/4 v7, 0x7

    if-lt v0, v7, :cond_0

    .line 192
    new-instance v3, Lcom/waze/reports/EditOpeningHoursFragment$3;

    invoke-direct {v3, p0}, Lcom/waze/reports/EditOpeningHoursFragment$3;-><init>(Lcom/waze/reports/EditOpeningHoursFragment;)V

    .line 236
    .local v3, onTimeClickListener:Landroid/view/View$OnClickListener;
    iget-object v7, p0, Lcom/waze/reports/EditOpeningHoursFragment;->r:Landroid/view/View;

    const v8, 0x7f090279

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mEditTextFrom:Landroid/widget/EditText;

    .line 237
    iget-object v7, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mEditTextFrom:Landroid/widget/EditText;

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v7, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mEditTextFrom:Landroid/widget/EditText;

    const-string v8, "10:00"

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v7, p0, Lcom/waze/reports/EditOpeningHoursFragment;->r:Landroid/view/View;

    const v8, 0x7f09027b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mEditTextTo:Landroid/widget/EditText;

    .line 240
    iget-object v7, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mEditTextTo:Landroid/widget/EditText;

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v7, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mEditTextTo:Landroid/widget/EditText;

    const-string v8, "19:00"

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v7, p0, Lcom/waze/reports/EditOpeningHoursFragment;->r:Landroid/view/View;

    const v8, 0x7f09027a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/waze/view/text/WazeTextView;

    .line 244
    .local v6, wtv:Lcom/waze/view/text/WazeTextView;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mNm:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_TO:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v7, p0, Lcom/waze/reports/EditOpeningHoursFragment;->r:Landroid/view/View;

    const v8, 0x7f09027c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/waze/settings/SettingsSwitchView;

    iput-object v7, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mAllDayCheck:Lcom/waze/settings/SettingsSwitchView;

    .line 247
    iget-object v7, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mAllDayCheck:Lcom/waze/settings/SettingsSwitchView;

    iget-object v8, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mNm:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_OPEN_24_HOURS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/waze/settings/SettingsSwitchView;->setText(Ljava/lang/String;)V

    .line 248
    iget-object v7, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mAllDayCheck:Lcom/waze/settings/SettingsSwitchView;

    invoke-virtual {v7, v10}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    .line 249
    iget-object v7, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mAllDayCheck:Lcom/waze/settings/SettingsSwitchView;

    new-instance v8, Lcom/waze/reports/EditOpeningHoursFragment$4;

    invoke-direct {v8, p0}, Lcom/waze/reports/EditOpeningHoursFragment$4;-><init>(Lcom/waze/reports/EditOpeningHoursFragment;)V

    invoke-virtual {v7, v8}, Lcom/waze/settings/SettingsSwitchView;->setOnChecked(Lcom/waze/settings/SwitchCheckedCallback;)V

    .line 262
    iget-object v7, p0, Lcom/waze/reports/EditOpeningHoursFragment;->r:Landroid/view/View;

    const v8, 0x7f09027d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mAddButton:Landroid/widget/Button;

    .line 263
    iget-object v7, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mAddButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mNm:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_ADD:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v7, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mAddButton:Landroid/widget/Button;

    new-instance v8, Lcom/waze/reports/EditOpeningHoursFragment$5;

    invoke-direct {v8, p0}, Lcom/waze/reports/EditOpeningHoursFragment$5;-><init>(Lcom/waze/reports/EditOpeningHoursFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget-object v7, p0, Lcom/waze/reports/EditOpeningHoursFragment;->r:Landroid/view/View;

    const v8, 0x7f090270

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mLinesContainer:Landroid/view/ViewGroup;

    .line 302
    invoke-virtual {p0}, Lcom/waze/reports/EditOpeningHoursFragment;->setAddButtonEnabledState()V

    .line 303
    return-void

    .line 185
    .end local v3           #onTimeClickListener:Landroid/view/View$OnClickListener;
    .end local v6           #wtv:Lcom/waze/view/text/WazeTextView;
    :cond_0
    iget-object v7, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonIds:[I

    aget v2, v7, v0

    .line 186
    .local v2, id:I
    iget-object v7, p0, Lcom/waze/reports/EditOpeningHoursFragment;->r:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 187
    .local v1, dayButton:Landroid/widget/Button;
    iget-object v7, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mDayLetter:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 189
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method protected addLine(Lcom/waze/reports/OpeningHours;)V
    .locals 8
    .parameter "oh"

    .prologue
    const/4 v7, 0x0

    .line 320
    iget-object v4, p0, Lcom/waze/reports/EditOpeningHoursFragment;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f03009d

    iget-object v6, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mLinesContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 321
    .local v2, newLine:Landroid/view/View;
    const v4, 0x7f0904cd

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/text/WazeTextView;

    .line 322
    .local v0, days:Lcom/waze/view/text/WazeTextView;
    invoke-virtual {p1}, Lcom/waze/reports/OpeningHours;->getDaysString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    const v4, 0x7f0904ce

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/waze/view/text/WazeTextView;

    .line 324
    .local v1, hours:Lcom/waze/view/text/WazeTextView;
    invoke-virtual {p1}, Lcom/waze/reports/OpeningHours;->getHoursString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/waze/view/text/WazeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    const v4, 0x7f0904cf

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/waze/reports/EditOpeningHoursFragment$6;

    invoke-direct {v5, p0, v2, p1}, Lcom/waze/reports/EditOpeningHoursFragment$6;-><init>(Lcom/waze/reports/EditOpeningHoursFragment;Landroid/view/View;Lcom/waze/reports/OpeningHours;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    invoke-virtual {v2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 338
    iget-object v4, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mLinesContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 339
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 340
    .local v3, p:Landroid/view/ViewGroup$LayoutParams;
    const/high16 v4, 0x4280

    invoke-virtual {p0}, Lcom/waze/reports/EditOpeningHoursFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 342
    iget-object v4, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mOpeningHours:Lcom/waze/settings/SettingsTitleText;

    invoke-virtual {v4, v7}, Lcom/waze/settings/SettingsTitleText;->setVisibility(I)V

    .line 343
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 76
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v6

    iput-object v6, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mNm:Lcom/waze/NativeManager;

    .line 78
    if-eqz p3, :cond_0

    .line 79
    const/4 v1, 0x0

    .local v1, d:I
    :goto_0
    const/4 v6, 0x7

    if-lt v1, v6, :cond_4

    .line 83
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/waze/reports/EditOpeningHoursFragment;->TAG:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".mArrOpeningHours"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mArrOpeningHours:Ljava/util/ArrayList;

    .line 86
    .end local v1           #d:I
    :cond_0
    sget-object v6, Lcom/waze/reports/EditOpeningHoursFragment;->sunday:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 87
    new-instance v5, Lcom/waze/settings/SettingsNativeManager;

    invoke-direct {v5}, Lcom/waze/settings/SettingsNativeManager;-><init>()V

    .line 88
    .local v5, settingsNativeManager:Lcom/waze/settings/SettingsNativeManager;
    new-instance v3, Ljava/util/Locale;

    invoke-virtual {v5}, Lcom/waze/settings/SettingsNativeManager;->getLanguagesLocaleNTV()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 90
    .local v3, locale:Ljava/util/Locale;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "EEEEE"

    invoke-direct {v2, v6, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 91
    .local v2, formatLetterDay:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 92
    .local v0, c:Ljava/util/Calendar;
    const/4 v6, 0x7

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 93
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/waze/reports/EditOpeningHoursFragment;->sunday:Ljava/lang/String;

    .line 94
    const/4 v6, 0x7

    const/4 v7, 0x2

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 95
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/waze/reports/EditOpeningHoursFragment;->monday:Ljava/lang/String;

    .line 96
    const/4 v6, 0x7

    const/4 v7, 0x3

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 97
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/waze/reports/EditOpeningHoursFragment;->tuesday:Ljava/lang/String;

    .line 98
    const/4 v6, 0x7

    const/4 v7, 0x4

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 99
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/waze/reports/EditOpeningHoursFragment;->wednesday:Ljava/lang/String;

    .line 100
    const/4 v6, 0x7

    const/4 v7, 0x5

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 101
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/waze/reports/EditOpeningHoursFragment;->thursday:Ljava/lang/String;

    .line 102
    const/4 v6, 0x7

    const/4 v7, 0x6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 103
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/waze/reports/EditOpeningHoursFragment;->friday:Ljava/lang/String;

    .line 104
    const/4 v6, 0x7

    const/4 v7, 0x7

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 105
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/waze/reports/EditOpeningHoursFragment;->saturday:Ljava/lang/String;

    .line 108
    .end local v0           #c:Ljava/util/Calendar;
    .end local v2           #formatLetterDay:Ljava/text/SimpleDateFormat;
    .end local v3           #locale:Ljava/util/Locale;
    .end local v5           #settingsNativeManager:Lcom/waze/settings/SettingsNativeManager;
    :cond_1
    sget-boolean v6, Lcom/waze/reports/OpeningHours;->FIRST_DAY_IS_SUNDAY:Z

    if-eqz v6, :cond_5

    .line 109
    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    sget-object v8, Lcom/waze/reports/EditOpeningHoursFragment;->sunday:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Lcom/waze/reports/EditOpeningHoursFragment;->monday:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Lcom/waze/reports/EditOpeningHoursFragment;->tuesday:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    sget-object v8, Lcom/waze/reports/EditOpeningHoursFragment;->wednesday:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    sget-object v8, Lcom/waze/reports/EditOpeningHoursFragment;->thursday:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x5

    sget-object v8, Lcom/waze/reports/EditOpeningHoursFragment;->friday:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x6

    sget-object v8, Lcom/waze/reports/EditOpeningHoursFragment;->saturday:Ljava/lang/String;

    aput-object v8, v6, v7

    iput-object v6, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mDayLetter:[Ljava/lang/String;

    .line 114
    :goto_1
    iput-object p1, p0, Lcom/waze/reports/EditOpeningHoursFragment;->inflater:Landroid/view/LayoutInflater;

    .line 115
    const v6, 0x7f030048

    const/4 v7, 0x0

    invoke-virtual {p1, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/waze/reports/EditOpeningHoursFragment;->r:Landroid/view/View;

    .line 117
    invoke-direct {p0}, Lcom/waze/reports/EditOpeningHoursFragment;->setUpFragment()V

    .line 119
    iget-object v6, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mArrOpeningHours:Ljava/util/ArrayList;

    if-nez v6, :cond_2

    .line 120
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mArrOpeningHours:Ljava/util/ArrayList;

    .line 123
    :cond_2
    iget-object v6, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mArrOpeningHours:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_6

    .line 127
    iget-object v6, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mArrOpeningHours:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 129
    iget-object v6, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mOpeningHours:Lcom/waze/settings/SettingsTitleText;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/waze/settings/SettingsTitleText;->setVisibility(I)V

    .line 131
    if-nez p3, :cond_3

    .line 132
    const/4 v1, 0x0

    .restart local v1       #d:I
    :goto_3
    const/4 v6, 0x5

    if-lt v1, v6, :cond_7

    .line 138
    .end local v1           #d:I
    :cond_3
    invoke-virtual {p0}, Lcom/waze/reports/EditOpeningHoursFragment;->refreashPressedState()V

    .line 139
    invoke-virtual {p0}, Lcom/waze/reports/EditOpeningHoursFragment;->setAddButtonEnabledState()V

    .line 141
    iget-object v6, p0, Lcom/waze/reports/EditOpeningHoursFragment;->r:Landroid/view/View;

    return-object v6

    .line 80
    .restart local v1       #d:I
    :cond_4
    iget-object v6, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonPressed:[Z

    .line 81
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/waze/reports/EditOpeningHoursFragment;->TAG:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".mDayButtonPressed."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p3, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 80
    aput-boolean v7, v6, v1

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 111
    .end local v1           #d:I
    :cond_5
    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    sget-object v8, Lcom/waze/reports/EditOpeningHoursFragment;->monday:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Lcom/waze/reports/EditOpeningHoursFragment;->tuesday:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Lcom/waze/reports/EditOpeningHoursFragment;->wednesday:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    sget-object v8, Lcom/waze/reports/EditOpeningHoursFragment;->thursday:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    sget-object v8, Lcom/waze/reports/EditOpeningHoursFragment;->friday:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x5

    sget-object v8, Lcom/waze/reports/EditOpeningHoursFragment;->saturday:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x6

    sget-object v8, Lcom/waze/reports/EditOpeningHoursFragment;->sunday:Ljava/lang/String;

    aput-object v8, v6, v7

    iput-object v6, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mDayLetter:[Ljava/lang/String;

    goto/16 :goto_1

    .line 123
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/waze/reports/OpeningHours;

    .line 124
    .local v4, oh:Lcom/waze/reports/OpeningHours;
    invoke-virtual {p0, v4}, Lcom/waze/reports/EditOpeningHoursFragment;->addLine(Lcom/waze/reports/OpeningHours;)V

    goto :goto_2

    .line 133
    .end local v4           #oh:Lcom/waze/reports/OpeningHours;
    .restart local v1       #d:I
    :cond_7
    iget-object v6, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonPressed:[Z

    const/4 v7, 0x1

    aput-boolean v7, v6, v1

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 147
    const/4 v0, 0x0

    .local v0, d:I
    :goto_0
    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/waze/reports/EditOpeningHoursFragment;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".mArrOpeningHours"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mArrOpeningHours:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 151
    return-void

    .line 148
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/waze/reports/EditOpeningHoursFragment;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".mDayButtonPressed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonPressed:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public refreashPressedState()V
    .locals 4

    .prologue
    .line 312
    const/4 v0, 0x0

    .local v0, d:I
    :goto_0
    const/4 v3, 0x7

    if-lt v0, v3, :cond_0

    .line 317
    return-void

    .line 313
    :cond_0
    iget-object v3, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonIds:[I

    aget v2, v3, v0

    .line 314
    .local v2, id:I
    iget-object v3, p0, Lcom/waze/reports/EditOpeningHoursFragment;->r:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 315
    .local v1, dayButton:Landroid/widget/Button;
    iget-object v3, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonPressed:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setPressed(Z)V

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method setAddButtonEnabledState()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 306
    iget-object v2, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mAddButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonPressed:[Z

    aget-boolean v3, v3, v0

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonPressed:[Z

    aget-boolean v3, v3, v1

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonPressed:[Z

    const/4 v4, 0x2

    aget-boolean v3, v3, v4

    if-nez v3, :cond_0

    .line 307
    iget-object v3, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonPressed:[Z

    const/4 v4, 0x3

    aget-boolean v3, v3, v4

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonPressed:[Z

    const/4 v4, 0x4

    aget-boolean v3, v3, v4

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonPressed:[Z

    const/4 v4, 0x5

    aget-boolean v3, v3, v4

    if-nez v3, :cond_0

    .line 308
    iget-object v3, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mDayButtonPressed:[Z

    const/4 v4, 0x6

    aget-boolean v3, v3, v4

    if-nez v3, :cond_0

    .line 306
    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 309
    return-void

    :cond_0
    move v0, v1

    .line 308
    goto :goto_0
.end method

.method public setOpeningHours(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/waze/reports/OpeningHours;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, arrOpHrs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/waze/reports/OpeningHours;>;"
    iput-object p1, p0, Lcom/waze/reports/EditOpeningHoursFragment;->mArrOpeningHours:Ljava/util/ArrayList;

    .line 71
    return-void
.end method
