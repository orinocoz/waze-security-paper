.class public Lcom/waze/share/PickUpActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "PickUpActivity.java"


# instance fields
.field private isNavigating:Z

.field protected locationData:Lcom/waze/main/navigate/LocationData;

.field private mBody:Ljava/lang/String;

.field private mSubject:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private nativeManager:Lcom/waze/NativeManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/waze/share/PickUpActivity;->isNavigating:Z

    .line 28
    iput-object v1, p0, Lcom/waze/share/PickUpActivity;->mSubject:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/waze/share/PickUpActivity;->mBody:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/waze/share/PickUpActivity;->mUrl:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/share/PickUpActivity;->nativeManager:Lcom/waze/NativeManager;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/waze/share/PickUpActivity;)Lcom/waze/NativeManager;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/waze/share/PickUpActivity;->nativeManager:Lcom/waze/NativeManager;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const v3, 0x7f090681

    .line 40
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f0300fc

    invoke-virtual {p0, v0}, Lcom/waze/share/PickUpActivity;->setContentView(I)V

    .line 42
    const v0, 0x7f090073

    invoke-virtual {p0, v0}, Lcom/waze/share/PickUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleBar;

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_PICKUP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, p0, v1}, Lcom/waze/view/title/TitleBar;->init(Landroid/app/Activity;Lcom/waze/strings/DisplayStrings;)V

    .line 44
    const-string v0, "PICK_UP_SCREEN"

    invoke-static {v0}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;)V

    .line 46
    const v0, 0x7f09067f

    invoke-virtual {p0, v0}, Lcom/waze/share/PickUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/share/PickUpActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_NEED_TO_PICK_SOMEONE_UP:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    const v0, 0x7f090680

    invoke-virtual {p0, v0}, Lcom/waze/share/PickUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/share/PickUpActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_FORGET_ABOUT_ADDRESSES_AND_DIRECTIONS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    const v0, 0x7f090684

    invoke-virtual {p0, v0}, Lcom/waze/share/PickUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/waze/share/PickUpActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_INDICATES_YOUR_RIDE_IS_BEING_VIEWED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {p0, v3}, Lcom/waze/share/PickUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/waze/share/PickUpActivity;->nativeManager:Lcom/waze/NativeManager;

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_SEND_PICKUP_REQUEST:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {p0, v3}, Lcom/waze/share/PickUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/waze/share/PickUpActivity$1;

    invoke-direct {v1, p0}, Lcom/waze/share/PickUpActivity$1;-><init>(Lcom/waze/share/PickUpActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method
