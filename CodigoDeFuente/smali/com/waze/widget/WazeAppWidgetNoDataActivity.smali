.class public Lcom/waze/widget/WazeAppWidgetNoDataActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "WazeAppWidgetNoDataActivity.java"


# instance fields
.field private mBtnClose:Landroid/widget/LinearLayout;

.field private mBtnEnter:Landroid/widget/LinearLayout;

.field private mBtnTextClose:Landroid/widget/TextView;

.field private mBtnTextEnter:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;

.field private mTxtInfo1:Landroid/widget/TextView;

.field private mTxtInfo2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    return-void
.end method

.method private initLayout()V
    .locals 1

    .prologue
    .line 83
    const v0, 0x7f0901b6

    invoke-virtual {p0, v0}, Lcom/waze/widget/WazeAppWidgetNoDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/widget/WazeAppWidgetNoDataActivity;->mBtnTextClose:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f0901b5

    invoke-virtual {p0, v0}, Lcom/waze/widget/WazeAppWidgetNoDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/waze/widget/WazeAppWidgetNoDataActivity;->mBtnClose:Landroid/widget/LinearLayout;

    .line 85
    const v0, 0x7f0901b4

    invoke-virtual {p0, v0}, Lcom/waze/widget/WazeAppWidgetNoDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/widget/WazeAppWidgetNoDataActivity;->mBtnTextEnter:Landroid/widget/TextView;

    .line 86
    const v0, 0x7f0901b3

    invoke-virtual {p0, v0}, Lcom/waze/widget/WazeAppWidgetNoDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/waze/widget/WazeAppWidgetNoDataActivity;->mBtnEnter:Landroid/widget/LinearLayout;

    .line 87
    const v0, 0x7f0901ae

    invoke-virtual {p0, v0}, Lcom/waze/widget/WazeAppWidgetNoDataActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/widget/WazeAppWidgetNoDataActivity;->mTitleText:Landroid/widget/TextView;

    .line 88
    return-void
.end method

.method private setOnCLickListeners()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/waze/widget/WazeAppWidgetNoDataActivity;->mBtnClose:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/waze/widget/WazeAppWidgetNoDataActivity$1;

    invoke-direct {v1, p0}, Lcom/waze/widget/WazeAppWidgetNoDataActivity$1;-><init>(Lcom/waze/widget/WazeAppWidgetNoDataActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/waze/widget/WazeAppWidgetNoDataActivity;->mBtnEnter:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/waze/widget/WazeAppWidgetNoDataActivity$2;

    invoke-direct {v1, p0}, Lcom/waze/widget/WazeAppWidgetNoDataActivity$2;-><init>(Lcom/waze/widget/WazeAppWidgetNoDataActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 45
    const-string v0, "WazeAppWidgetNoDataActivity.onCreate"

    invoke-static {v0}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 47
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/waze/widget/WazeAppWidgetNoDataActivity;->setContentView(I)V

    .line 49
    invoke-direct {p0}, Lcom/waze/widget/WazeAppWidgetNoDataActivity;->initLayout()V

    .line 50
    invoke-direct {p0}, Lcom/waze/widget/WazeAppWidgetNoDataActivity;->setOnCLickListeners()V

    .line 52
    return-void
.end method
