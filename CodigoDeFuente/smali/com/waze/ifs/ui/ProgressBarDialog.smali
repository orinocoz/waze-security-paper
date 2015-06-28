.class public Lcom/waze/ifs/ui/ProgressBarDialog;
.super Landroid/app/Dialog;
.source "ProgressBarDialog.java"


# instance fields
.field mAnimation:Lcom/waze/view/map/ProgressAnimation;

.field private mContext:Landroid/content/Context;

.field mImage:Landroid/widget/ImageView;

.field private mImageName:Ljava/lang/String;

.field mShowing:Z

.field private mText:Ljava/lang/String;

.field mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 38
    const v0, 0x7f060057

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 147
    iput-object v1, p0, Lcom/waze/ifs/ui/ProgressBarDialog;->mText:Ljava/lang/String;

    .line 150
    iput-object v1, p0, Lcom/waze/ifs/ui/ProgressBarDialog;->mImageName:Ljava/lang/String;

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/ifs/ui/ProgressBarDialog;->mShowing:Z

    .line 39
    invoke-direct {p0, p1, v1, v1}, Lcom/waze/ifs/ui/ProgressBarDialog;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "text"
    .parameter "ImageName"

    .prologue
    const/4 v1, 0x0

    .line 32
    const v0, 0x7f060057

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 147
    iput-object v1, p0, Lcom/waze/ifs/ui/ProgressBarDialog;->mText:Ljava/lang/String;

    .line 150
    iput-object v1, p0, Lcom/waze/ifs/ui/ProgressBarDialog;->mImageName:Ljava/lang/String;

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/ifs/ui/ProgressBarDialog;->mShowing:Z

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ProgressBarDialog;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method private _dismiss()V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lcom/waze/ifs/ui/ProgressBarDialog$1;

    invoke-direct {v0, p0}, Lcom/waze/ifs/ui/ProgressBarDialog$1;-><init>(Lcom/waze/ifs/ui/ProgressBarDialog;)V

    .line 93
    .local v0, r:Ljava/lang/Runnable;
    invoke-static {}, Lcom/waze/WazeApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/waze/ifs/ui/ProgressBarDialog;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/waze/ifs/ui/ProgressBarDialog;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/waze/ifs/ui/ActivityBase;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/waze/ifs/ui/ProgressBarDialog;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/waze/ifs/ui/ActivityBase;

    invoke-virtual {v1, v0}, Lcom/waze/ifs/ui/ActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/waze/ifs/ui/ProgressBarDialog;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/waze/ifs/ui/ProgressBarDialog;->mImageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/waze/ifs/ui/ProgressBarDialog;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/waze/ifs/ui/ProgressBarDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/waze/ifs/ui/ProgressBarDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "text"
    .parameter "ImageName"

    .prologue
    const/4 v1, 0x0

    .line 106
    if-eqz p2, :cond_0

    .line 108
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/ifs/ui/ProgressBarDialog;->mText:Ljava/lang/String;

    .line 115
    :goto_0
    const v0, 0x7f0300bd

    invoke-virtual {p0, v0}, Lcom/waze/ifs/ui/ProgressBarDialog;->setContentView(I)V

    .line 117
    const v0, 0x7f09055e

    invoke-virtual {p0, v0}, Lcom/waze/ifs/ui/ProgressBarDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/waze/ifs/ui/ProgressBarDialog;->mTextView:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f09055c

    invoke-virtual {p0, v0}, Lcom/waze/ifs/ui/ProgressBarDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/map/ProgressAnimation;

    iput-object v0, p0, Lcom/waze/ifs/ui/ProgressBarDialog;->mAnimation:Lcom/waze/view/map/ProgressAnimation;

    .line 119
    const v0, 0x7f09055d

    invoke-virtual {p0, v0}, Lcom/waze/ifs/ui/ProgressBarDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/waze/ifs/ui/ProgressBarDialog;->mImage:Landroid/widget/ImageView;

    .line 121
    if-eqz p3, :cond_1

    .line 123
    iput-object p3, p0, Lcom/waze/ifs/ui/ProgressBarDialog;->mImageName:Ljava/lang/String;

    .line 130
    :goto_1
    iget-object v0, p0, Lcom/waze/ifs/ui/ProgressBarDialog;->mText:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/waze/ifs/ui/ProgressBarDialog;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/ifs/ui/ProgressBarDialog;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :goto_2
    iput-object p1, p0, Lcom/waze/ifs/ui/ProgressBarDialog;->mContext:Landroid/content/Context;

    .line 143
    invoke-virtual {p0}, Lcom/waze/ifs/ui/ProgressBarDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 144
    return-void

    .line 112
    :cond_0
    iput-object v1, p0, Lcom/waze/ifs/ui/ProgressBarDialog;->mText:Ljava/lang/String;

    goto :goto_0

    .line 127
    :cond_1
    iput-object v1, p0, Lcom/waze/ifs/ui/ProgressBarDialog;->mImageName:Ljava/lang/String;

    goto :goto_1

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/waze/ifs/ui/ProgressBarDialog;->mImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/waze/ifs/ui/ProgressBarDialog;->mAnimation:Lcom/waze/view/map/ProgressAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/view/map/ProgressAnimation;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/waze/ifs/ui/ProgressBarDialog;->mAnimation:Lcom/waze/view/map/ProgressAnimation;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/waze/view/map/ProgressAnimation;->setGravity(I)V

    goto :goto_2
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/waze/ifs/ui/ProgressBarDialog;->_dismiss()V

    .line 65
    return-void
.end method

.method public dismiss()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/waze/ifs/ui/ProgressBarDialog;->_dismiss()V

    .line 69
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 45
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 46
    iget-object v1, p0, Lcom/waze/ifs/ui/ProgressBarDialog;->mImageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/waze/ifs/ui/ProgressBarDialog;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    iget-object v1, p0, Lcom/waze/ifs/ui/ProgressBarDialog;->mAnimation:Lcom/waze/view/map/ProgressAnimation;

    invoke-virtual {v1, v3}, Lcom/waze/view/map/ProgressAnimation;->setVisibility(I)V

    .line 50
    iget-object v1, p0, Lcom/waze/ifs/ui/ProgressBarDialog;->mImageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/waze/ResManager;->GetDrawableId(Ljava/lang/String;)I

    move-result v0

    .line 51
    .local v0, ImageId:I
    iget-object v1, p0, Lcom/waze/ifs/ui/ProgressBarDialog;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    .end local v0           #ImageId:I
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/waze/ifs/ui/ProgressBarDialog;->mShowing:Z

    .line 60
    return-void

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/waze/ifs/ui/ProgressBarDialog;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    iget-object v1, p0, Lcom/waze/ifs/ui/ProgressBarDialog;->mAnimation:Lcom/waze/view/map/ProgressAnimation;

    invoke-virtual {v1, v2}, Lcom/waze/view/map/ProgressAnimation;->setVisibility(I)V

    .line 57
    iget-object v1, p0, Lcom/waze/ifs/ui/ProgressBarDialog;->mAnimation:Lcom/waze/view/map/ProgressAnimation;

    invoke-virtual {v1}, Lcom/waze/view/map/ProgressAnimation;->start()V

    goto :goto_0
.end method
