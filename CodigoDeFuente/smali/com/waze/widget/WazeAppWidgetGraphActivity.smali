.class public Lcom/waze/widget/WazeAppWidgetGraphActivity;
.super Landroid/app/Activity;
.source "WazeAppWidgetGraphActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/widget/WazeAppWidgetGraphActivity$OnCloseListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v1, 0x7f03001e

    invoke-virtual {p0, v1}, Lcom/waze/widget/WazeAppWidgetGraphActivity;->setContentView(I)V

    .line 40
    const v1, 0x7f0901ac

    invoke-virtual {p0, v1}, Lcom/waze/widget/WazeAppWidgetGraphActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 41
    .local v0, btnClose:Landroid/widget/ImageButton;
    new-instance v1, Lcom/waze/widget/WazeAppWidgetGraphActivity$OnCloseListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/waze/widget/WazeAppWidgetGraphActivity$OnCloseListener;-><init>(Lcom/waze/widget/WazeAppWidgetGraphActivity;Lcom/waze/widget/WazeAppWidgetGraphActivity$OnCloseListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method
