.class public Lcom/waze/TestActivity;
.super Landroid/app/Activity;
.source "TestActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v0, 0x7f030118

    invoke-virtual {p0, v0}, Lcom/waze/TestActivity;->setContentView(I)V

    .line 17
    const v0, 0x7f090720

    invoke-virtual {p0, v0}, Lcom/waze/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/button/SwipeableButton;

    new-instance v1, Lcom/waze/TestActivity$1;

    invoke-direct {v1, p0}, Lcom/waze/TestActivity$1;-><init>(Lcom/waze/TestActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/view/button/SwipeableButton;->setOnClickListener(Lcom/waze/view/button/SwipeableButton$SwipeableButtonListener;)V

    .line 29
    const v0, 0x7f090721

    invoke-virtual {p0, v0}, Lcom/waze/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/button/SwipeableButton;

    new-instance v1, Lcom/waze/TestActivity$2;

    invoke-direct {v1, p0}, Lcom/waze/TestActivity$2;-><init>(Lcom/waze/TestActivity;)V

    invoke-virtual {v0, v1}, Lcom/waze/view/button/SwipeableButton;->setOnClickListener(Lcom/waze/view/button/SwipeableButton$SwipeableButtonListener;)V

    .line 39
    return-void
.end method
