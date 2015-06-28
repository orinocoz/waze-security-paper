.class public Lcom/waze/samples/JniSampleActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "JniSampleActivity.java"

# interfaces
.implements Lcom/waze/samples/JniSampleActivityNativeManager$ITimeUpdater;


# static fields
.field private static mActivityNativeManager:Lcom/waze/samples/JniSampleActivityNativeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/samples/JniSampleActivity;->mActivityNativeManager:Lcom/waze/samples/JniSampleActivityNativeManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/waze/samples/JniSampleActivityNativeManager;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/waze/samples/JniSampleActivity;->mActivityNativeManager:Lcom/waze/samples/JniSampleActivityNativeManager;

    return-object v0
.end method

.method public static getActivityNativeManager()Lcom/waze/samples/JniSampleActivityNativeManager;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/waze/samples/JniSampleActivity;->mActivityNativeManager:Lcom/waze/samples/JniSampleActivityNativeManager;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-static {}, Lcom/waze/samples/JniSampleActivityNativeManager;->getInstance()Lcom/waze/samples/JniSampleActivityNativeManager;

    move-result-object v1

    sput-object v1, Lcom/waze/samples/JniSampleActivity;->mActivityNativeManager:Lcom/waze/samples/JniSampleActivityNativeManager;

    .line 31
    const v1, 0x7f03006f

    invoke-virtual {p0, v1}, Lcom/waze/samples/JniSampleActivity;->setContentView(I)V

    .line 36
    const v1, 0x7f09035c

    invoke-virtual {p0, v1}, Lcom/waze/samples/JniSampleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 38
    .local v0, runButton:Landroid/widget/Button;
    new-instance v1, Lcom/waze/samples/JniSampleActivity$1;

    invoke-direct {v1, p0}, Lcom/waze/samples/JniSampleActivity$1;-><init>(Lcom/waze/samples/JniSampleActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Lcom/waze/ifs/ui/ActivityBase;->onDestroy()V

    .line 49
    return-void
.end method

.method public updateTime(III)V
    .locals 4
    .parameter "hour"
    .parameter "min"
    .parameter "sec"

    .prologue
    .line 57
    const v3, 0x7f09035e

    invoke-virtual {p0, v3}, Lcom/waze/samples/JniSampleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 58
    .local v0, hourView:Landroid/widget/TextView;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const v3, 0x7f09035f

    invoke-virtual {p0, v3}, Lcom/waze/samples/JniSampleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 60
    .local v1, minView:Landroid/widget/TextView;
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const v3, 0x7f090360

    invoke-virtual {p0, v3}, Lcom/waze/samples/JniSampleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 62
    .local v2, secView:Landroid/widget/TextView;
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method
