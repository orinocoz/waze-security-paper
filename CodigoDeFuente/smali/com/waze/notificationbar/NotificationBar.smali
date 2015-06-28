.class public Lcom/waze/notificationbar/NotificationBar;
.super Ljava/lang/Object;
.source "NotificationBar.java"


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private mBarEnabled:Z

.field private mType:I

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/notificationbar/NotificationBar;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 1
    .parameter "view"
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/notificationbar/NotificationBar;->mBarEnabled:Z

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/waze/notificationbar/NotificationBar;->mType:I

    .line 21
    iput-object p1, p0, Lcom/waze/notificationbar/NotificationBar;->mView:Landroid/view/View;

    .line 22
    sput-object p2, Lcom/waze/notificationbar/NotificationBar;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method

.method private animateIn()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/waze/notificationbar/NotificationBar;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    return-void
.end method

.method private animateOut()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/waze/notificationbar/NotificationBar;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    return-void
.end method

.method private hideNow()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/waze/notificationbar/NotificationBar;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    return-void
.end method

.method private setIcon(Ljava/lang/String;)V
    .locals 4
    .parameter "iconName"

    .prologue
    .line 75
    iget-object v2, p0, Lcom/waze/notificationbar/NotificationBar;->mView:Landroid/view/View;

    const v3, 0x7f090239

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 77
    .local v0, image:Landroid/widget/ImageView;
    if-eqz p1, :cond_0

    iget v2, p0, Lcom/waze/notificationbar/NotificationBar;->mType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 78
    sget-object v2, Lcom/waze/notificationbar/NotificationBar;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, p1}, Lcom/waze/notificationbar/NotificationBar;->getResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 79
    .local v1, imageId:I
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    .end local v1           #imageId:I
    :goto_0
    return-void

    .line 82
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setMessage(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    const v2, 0x7f0904bf

    .line 55
    if-eqz p1, :cond_0

    .line 56
    iget v0, p0, Lcom/waze/notificationbar/NotificationBar;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 58
    iget-object v0, p0, Lcom/waze/notificationbar/NotificationBar;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x5c

    const/16 v3, 0xb1

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/waze/notificationbar/NotificationBar;->mView:Landroid/view/View;

    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/waze/notificationbar/NotificationBar;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f02028a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public getResourceId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .parameter "context"
    .parameter "image"

    .prologue
    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "drawable/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    const-string v4, "_"

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 71
    .local v0, imageId:I
    return v0
.end method

.method public setIsEnabled(Z)V
    .locals 1
    .parameter "isEnabled"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/waze/notificationbar/NotificationBar;->mBarEnabled:Z

    if-ne p1, v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 45
    :cond_0
    iput-boolean p1, p0, Lcom/waze/notificationbar/NotificationBar;->mBarEnabled:Z

    .line 47
    if-eqz p1, :cond_1

    .line 48
    invoke-direct {p0}, Lcom/waze/notificationbar/NotificationBar;->animateIn()V

    goto :goto_0

    .line 50
    :cond_1
    invoke-direct {p0}, Lcom/waze/notificationbar/NotificationBar;->hideNow()V

    goto :goto_0
.end method

.method public showMessage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "str"
    .parameter "iconName"
    .parameter "nType"

    .prologue
    .line 88
    iput p3, p0, Lcom/waze/notificationbar/NotificationBar;->mType:I

    .line 89
    invoke-direct {p0, p1}, Lcom/waze/notificationbar/NotificationBar;->setMessage(Ljava/lang/String;)V

    .line 90
    invoke-direct {p0, p2}, Lcom/waze/notificationbar/NotificationBar;->setIcon(Ljava/lang/String;)V

    .line 92
    iget-boolean v0, p0, Lcom/waze/notificationbar/NotificationBar;->mBarEnabled:Z

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 95
    :cond_0
    if-nez p1, :cond_1

    .line 96
    invoke-direct {p0}, Lcom/waze/notificationbar/NotificationBar;->animateOut()V

    goto :goto_0

    .line 98
    :cond_1
    invoke-direct {p0}, Lcom/waze/notificationbar/NotificationBar;->animateIn()V

    goto :goto_0
.end method
