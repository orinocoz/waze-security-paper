.class public final Lcom/waze/install/LocationFailedActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "LocationFailedActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    .line 49
    if-ne p2, v0, :cond_0

    .line 51
    invoke-virtual {p0, v0}, Lcom/waze/install/LocationFailedActivity;->setResult(I)V

    .line 52
    invoke-virtual {p0}, Lcom/waze/install/LocationFailedActivity;->finish()V

    .line 55
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/waze/ifs/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 56
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const v3, 0x7f09037f

    .line 26
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/waze/install/LocationFailedActivity;->requestWindowFeature(I)Z

    .line 29
    const v1, 0x7f030079

    invoke-virtual {p0, v1}, Lcom/waze/install/LocationFailedActivity;->setContentView(I)V

    .line 30
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    .line 31
    .local v0, nativeManager:Lcom/waze/NativeManager;
    const v1, 0x7f09037e

    invoke-virtual {p0, v1}, Lcom/waze/install/LocationFailedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_LOCATION_FAILED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    invoke-virtual {p0, v3}, Lcom/waze/install/LocationFailedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SELECT_COUNTRY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 33
    const v1, 0x7f09037d

    invoke-virtual {p0, v1}, Lcom/waze/install/LocationFailedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v2, "moods/sad.bin"

    invoke-static {v2}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    const v1, 0x7f09037c

    invoke-virtual {p0, v1}, Lcom/waze/install/LocationFailedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const-string v2, "welcome.bin"

    invoke-static {v2}, Lcom/waze/ResManager;->GetSkinDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    invoke-virtual {p0, v3}, Lcom/waze/install/LocationFailedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/waze/install/LocationFailedActivity$1;

    invoke-direct {v2, p0}, Lcom/waze/install/LocationFailedActivity$1;-><init>(Lcom/waze/install/LocationFailedActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method
