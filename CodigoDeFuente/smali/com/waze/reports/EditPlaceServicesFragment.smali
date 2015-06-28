.class public Lcom/waze/reports/EditPlaceServicesFragment;
.super Landroid/app/Fragment;
.source "EditPlaceServicesFragment.java"


# static fields
.field public static final SERVICES:Ljava/lang/String; = "services"

.field private static mAllServices:Lcom/waze/NativeManager$VenueServices;

.field private static mServiceIconById:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mServiceNameById:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLinesContainer:Landroid/view/ViewGroup;

.field private mNm:Lcom/waze/NativeManager;

.field private mSetServiceIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    sput-object v0, Lcom/waze/reports/EditPlaceServicesFragment;->mAllServices:Lcom/waze/NativeManager$VenueServices;

    .line 31
    sput-object v0, Lcom/waze/reports/EditPlaceServicesFragment;->mServiceNameById:Ljava/util/HashMap;

    .line 32
    sput-object v0, Lcom/waze/reports/EditPlaceServicesFragment;->mServiceIconById:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/NativeManager$VenueServices;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    sput-object p0, Lcom/waze/reports/EditPlaceServicesFragment;->mAllServices:Lcom/waze/NativeManager$VenueServices;

    return-void
.end method

.method static synthetic access$1(Lcom/waze/reports/EditPlaceServicesFragment;)Ljava/util/HashSet;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/waze/reports/EditPlaceServicesFragment;->mSetServiceIds:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$2()Lcom/waze/NativeManager$VenueServices;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/waze/reports/EditPlaceServicesFragment;->mAllServices:Lcom/waze/NativeManager$VenueServices;

    return-object v0
.end method

.method public static getServiceById(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    .line 53
    sget-object v1, Lcom/waze/reports/EditPlaceServicesFragment;->mServiceNameById:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 54
    sget-object v1, Lcom/waze/reports/EditPlaceServicesFragment;->mAllServices:Lcom/waze/NativeManager$VenueServices;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 62
    :goto_0
    return-object v1

    .line 56
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/waze/reports/EditPlaceServicesFragment;->mServiceNameById:Ljava/util/HashMap;

    .line 57
    invoke-static {}, Lcom/waze/reports/EditPlaceServicesFragment;->getServices()Lcom/waze/NativeManager$VenueServices;

    .line 58
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/waze/reports/EditPlaceServicesFragment;->mAllServices:Lcom/waze/NativeManager$VenueServices;

    iget v1, v1, Lcom/waze/NativeManager$VenueServices;->count:I

    if-lt v0, v1, :cond_2

    .line 62
    .end local v0           #i:I
    :cond_1
    sget-object v1, Lcom/waze/reports/EditPlaceServicesFragment;->mServiceNameById:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 59
    .restart local v0       #i:I
    :cond_2
    sget-object v1, Lcom/waze/reports/EditPlaceServicesFragment;->mServiceNameById:Ljava/util/HashMap;

    sget-object v2, Lcom/waze/reports/EditPlaceServicesFragment;->mAllServices:Lcom/waze/NativeManager$VenueServices;

    iget-object v2, v2, Lcom/waze/NativeManager$VenueServices;->ids:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/waze/reports/EditPlaceServicesFragment;->mAllServices:Lcom/waze/NativeManager$VenueServices;

    iget-object v3, v3, Lcom/waze/NativeManager$VenueServices;->names:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getServiceIconById(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    .line 66
    sget-object v1, Lcom/waze/reports/EditPlaceServicesFragment;->mServiceIconById:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 67
    sget-object v1, Lcom/waze/reports/EditPlaceServicesFragment;->mAllServices:Lcom/waze/NativeManager$VenueServices;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 75
    :goto_0
    return-object v1

    .line 69
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/waze/reports/EditPlaceServicesFragment;->mServiceIconById:Ljava/util/HashMap;

    .line 70
    invoke-static {}, Lcom/waze/reports/EditPlaceServicesFragment;->getServices()Lcom/waze/NativeManager$VenueServices;

    .line 71
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/waze/reports/EditPlaceServicesFragment;->mAllServices:Lcom/waze/NativeManager$VenueServices;

    iget v1, v1, Lcom/waze/NativeManager$VenueServices;->count:I

    if-lt v0, v1, :cond_2

    .line 75
    .end local v0           #i:I
    :cond_1
    sget-object v1, Lcom/waze/reports/EditPlaceServicesFragment;->mServiceIconById:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 72
    .restart local v0       #i:I
    :cond_2
    sget-object v1, Lcom/waze/reports/EditPlaceServicesFragment;->mServiceIconById:Ljava/util/HashMap;

    sget-object v2, Lcom/waze/reports/EditPlaceServicesFragment;->mAllServices:Lcom/waze/NativeManager$VenueServices;

    iget-object v2, v2, Lcom/waze/NativeManager$VenueServices;->ids:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/waze/reports/EditPlaceServicesFragment;->mAllServices:Lcom/waze/NativeManager$VenueServices;

    iget-object v3, v3, Lcom/waze/NativeManager$VenueServices;->icons:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getServices()Lcom/waze/NativeManager$VenueServices;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/waze/reports/EditPlaceServicesFragment;->mAllServices:Lcom/waze/NativeManager$VenueServices;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/waze/reports/EditPlaceServicesFragment$1;

    invoke-direct {v0}, Lcom/waze/reports/EditPlaceServicesFragment$1;-><init>()V

    invoke-static {v0}, Lcom/waze/NativeManager;->Post(Ljava/lang/Runnable;)V

    .line 49
    :cond_0
    sget-object v0, Lcom/waze/reports/EditPlaceServicesFragment;->mAllServices:Lcom/waze/NativeManager$VenueServices;

    return-object v0
.end method

.method public static getServicesString(Lcom/waze/reports/VenueData;)Ljava/lang/String;
    .locals 1
    .parameter "vd"

    .prologue
    .line 197
    const-string v0, "\n"

    invoke-static {p0, v0}, Lcom/waze/reports/EditPlaceServicesFragment;->getServicesString(Lcom/waze/reports/VenueData;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServicesString(Lcom/waze/reports/VenueData;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "vd"
    .parameter "separator"

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .local v0, bob:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/waze/reports/VenueData;->numServices:I

    if-lt v1, v3, :cond_1

    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 193
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 185
    :cond_1
    iget-object v3, p0, Lcom/waze/reports/VenueData;->services:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/waze/reports/EditPlaceServicesFragment;->getServiceById(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, serv:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setUpFragment()V
    .locals 5

    .prologue
    .line 120
    iget-object v1, p0, Lcom/waze/reports/EditPlaceServicesFragment;->r:Landroid/view/View;

    const v2, 0x7f090058

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/waze/view/title/TitleButtonBar;

    .line 121
    .local v0, titleButtonBar:Lcom/waze/view/title/TitleButtonBar;
    invoke-virtual {p0}, Lcom/waze/reports/EditPlaceServicesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/reports/EditPlaceServicesFragment;->mNm:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_SERVICES:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 122
    const v4, 0x7f02010b

    .line 121
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/waze/view/title/TitleButtonBar;->init(Landroid/app/Activity;Ljava/lang/String;II)V

    .line 123
    new-instance v1, Lcom/waze/reports/EditPlaceServicesFragment$2;

    invoke-direct {v1, p0}, Lcom/waze/reports/EditPlaceServicesFragment$2;-><init>(Lcom/waze/reports/EditPlaceServicesFragment;)V

    invoke-virtual {v0, v1}, Lcom/waze/view/title/TitleButtonBar;->setButtonTwoListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v1, p0, Lcom/waze/reports/EditPlaceServicesFragment;->r:Landroid/view/View;

    const v2, 0x7f09027e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/waze/reports/EditPlaceServicesFragment;->mLinesContainer:Landroid/view/ViewGroup;

    .line 137
    return-void
.end method

.method public static sortServiceIdsArray([Ljava/lang/String;I)I
    .locals 4
    .parameter "serviceIds"
    .parameter "size"

    .prologue
    .line 140
    sget-object v3, Lcom/waze/reports/EditPlaceServicesFragment;->mAllServices:Lcom/waze/NativeManager$VenueServices;

    if-nez v3, :cond_1

    array-length v1, p0

    .line 154
    :cond_0
    return v1

    .line 142
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(I)V

    .line 143
    .local v2, serviceSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p1, :cond_3

    .line 147
    const/4 v1, 0x0

    .line 148
    .local v1, j:I
    const/4 v0, 0x0

    :goto_1
    sget-object v3, Lcom/waze/reports/EditPlaceServicesFragment;->mAllServices:Lcom/waze/NativeManager$VenueServices;

    iget v3, v3, Lcom/waze/NativeManager$VenueServices;->count:I

    if-ge v0, v3, :cond_0

    .line 149
    sget-object v3, Lcom/waze/reports/EditPlaceServicesFragment;->mAllServices:Lcom/waze/NativeManager$VenueServices;

    iget-object v3, v3, Lcom/waze/NativeManager$VenueServices;->ids:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 150
    sget-object v3, Lcom/waze/reports/EditPlaceServicesFragment;->mAllServices:Lcom/waze/NativeManager$VenueServices;

    iget-object v3, v3, Lcom/waze/NativeManager$VenueServices;->ids:[Ljava/lang/String;

    aget-object v3, v3, v0

    aput-object v3, p0, v1

    .line 151
    add-int/lit8 v1, v1, 0x1

    .line 148
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 144
    .end local v1           #j:I
    :cond_3
    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected addLine(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .parameter "service"
    .parameter "id"
    .parameter "isOn"

    .prologue
    const/4 v4, 0x0

    .line 158
    new-instance v1, Lcom/waze/settings/SettingsSwitchView;

    invoke-virtual {p0}, Lcom/waze/reports/EditPlaceServicesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/waze/settings/SettingsSwitchView;-><init>(Landroid/content/Context;)V

    .line 160
    .local v1, sv:Lcom/waze/settings/SettingsSwitchView;
    invoke-virtual {v1, p1}, Lcom/waze/settings/SettingsSwitchView;->setText(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v1, p3}, Lcom/waze/settings/SettingsSwitchView;->setValue(Z)V

    .line 163
    new-instance v2, Lcom/waze/reports/EditPlaceServicesFragment$3;

    invoke-direct {v2, p0, p2}, Lcom/waze/reports/EditPlaceServicesFragment$3;-><init>(Lcom/waze/reports/EditPlaceServicesFragment;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/waze/settings/SettingsSwitchView;->setOnChecked(Lcom/waze/settings/SwitchCheckedCallback;)V

    .line 175
    iget-object v2, p0, Lcom/waze/reports/EditPlaceServicesFragment;->mLinesContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 176
    invoke-virtual {v1}, Lcom/waze/settings/SettingsSwitchView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 177
    .local v0, p:Landroid/view/ViewGroup$LayoutParams;
    const/high16 v2, 0x4280

    invoke-virtual {p0}, Lcom/waze/reports/EditPlaceServicesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 178
    const v2, 0x7f020224

    invoke-virtual {v1, v2}, Lcom/waze/settings/SettingsSwitchView;->setBackgroundResource(I)V

    .line 179
    invoke-virtual {v1, v4, v4, v4, v4}, Lcom/waze/settings/SettingsSwitchView;->setPadding(IIII)V

    .line 180
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    if-eqz p1, :cond_0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mSetServiceIds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Ljava/util/HashSet;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    const-string v2, ".mSetServiceIds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 90
    iput-object v0, p0, Lcom/waze/reports/EditPlaceServicesFragment;->mSetServiceIds:Ljava/util/HashSet;

    .line 95
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 99
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 100
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    iput-object v2, p0, Lcom/waze/reports/EditPlaceServicesFragment;->mNm:Lcom/waze/NativeManager;

    .line 101
    invoke-static {}, Lcom/waze/reports/EditPlaceServicesFragment;->getServices()Lcom/waze/NativeManager$VenueServices;

    .line 103
    const v2, 0x7f030049

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/waze/reports/EditPlaceServicesFragment;->r:Landroid/view/View;

    .line 105
    invoke-direct {p0}, Lcom/waze/reports/EditPlaceServicesFragment;->setUpFragment()V

    .line 107
    iget-object v2, p0, Lcom/waze/reports/EditPlaceServicesFragment;->mSetServiceIds:Ljava/util/HashSet;

    if-nez v2, :cond_0

    .line 108
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/waze/reports/EditPlaceServicesFragment;->mSetServiceIds:Ljava/util/HashSet;

    .line 111
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/waze/reports/EditPlaceServicesFragment;->mAllServices:Lcom/waze/NativeManager$VenueServices;

    iget v2, v2, Lcom/waze/NativeManager$VenueServices;->count:I

    if-lt v0, v2, :cond_1

    .line 116
    iget-object v2, p0, Lcom/waze/reports/EditPlaceServicesFragment;->r:Landroid/view/View;

    return-object v2

    .line 112
    :cond_1
    iget-object v2, p0, Lcom/waze/reports/EditPlaceServicesFragment;->mSetServiceIds:Ljava/util/HashSet;

    sget-object v3, Lcom/waze/reports/EditPlaceServicesFragment;->mAllServices:Lcom/waze/NativeManager$VenueServices;

    iget-object v3, v3, Lcom/waze/NativeManager$VenueServices;->ids:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 113
    .local v1, isOn:Z
    sget-object v2, Lcom/waze/reports/EditPlaceServicesFragment;->mAllServices:Lcom/waze/NativeManager$VenueServices;

    iget-object v2, v2, Lcom/waze/NativeManager$VenueServices;->names:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/waze/reports/EditPlaceServicesFragment;->mAllServices:Lcom/waze/NativeManager$VenueServices;

    iget-object v3, v3, Lcom/waze/NativeManager$VenueServices;->ids:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v2, v3, v1}, Lcom/waze/reports/EditPlaceServicesFragment;->addLine(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".mSetServiceIds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/waze/reports/EditPlaceServicesFragment;->mSetServiceIds:Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 81
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 83
    return-void
.end method

.method public setServiceIds(Ljava/util/HashSet;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/waze/reports/EditPlaceServicesFragment;->mSetServiceIds:Ljava/util/HashSet;

    .line 36
    return-void
.end method
