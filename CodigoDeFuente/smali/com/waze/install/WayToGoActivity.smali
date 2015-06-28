.class public final Lcom/waze/install/WayToGoActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "WayToGoActivity.java"


# instance fields
.field private nativeManager:Lcom/waze/NativeManager;

.field private nm:Lcom/waze/install/InstallNativeManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptClicked(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 35
    const-string v0, "WAZE"

    const-string v1, "accept pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcom/waze/install/WayToGoActivity;->nm:Lcom/waze/install/InstallNativeManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waze/install/InstallNativeManager;->termsOfUseResponse(I)V

    .line 37
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/waze/install/WayToGoActivity;->setResult(I)V

    .line 38
    invoke-virtual {p0}, Lcom/waze/install/WayToGoActivity;->finish()V

    .line 39
    return-void
.end method

.method public declineClicked(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 42
    const-string v0, "WAZE"

    const-string v1, "decline pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/waze/install/WayToGoActivity;->nm:Lcom/waze/install/InstallNativeManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/install/InstallNativeManager;->termsOfUseResponse(I)V

    .line 44
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/waze/install/WayToGoActivity;->setResult(I)V

    .line 45
    invoke-virtual {p0}, Lcom/waze/install/WayToGoActivity;->finish()V

    .line 46
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/waze/install/WayToGoActivity;->requestWindowFeature(I)Z

    .line 28
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/install/WayToGoActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 29
    const v0, 0x7f090283

    invoke-virtual {p0, v0}, Lcom/waze/install/WayToGoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/install/WayToGoActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_HI_THEREE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    new-instance v0, Lcom/waze/install/InstallNativeManager;

    invoke-direct {v0}, Lcom/waze/install/InstallNativeManager;-><init>()V

    iput-object v0, p0, Lcom/waze/install/WayToGoActivity;->nm:Lcom/waze/install/InstallNativeManager;

    .line 32
    return-void
.end method
