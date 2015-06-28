.class Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;
.super Ljava/lang/Object;
.source "RTAlertsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/rtalerts/RTAlertsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemHolder"
.end annotation


# instance fields
.field alertBy:Landroid/widget/TextView;

.field alertDesc:Landroid/widget/TextView;

.field alertLoc:Landroid/widget/TextView;

.field alertType:Landroid/widget/TextView;

.field comments:Landroid/widget/TextView;

.field container:Landroid/view/View;

.field distance:Landroid/widget/TextView;

.field distanceNote:Landroid/widget/TextView;

.field distanceUnit:Landroid/widget/TextView;

.field groupContainer:Landroid/view/View;

.field groupDesc:Landroid/widget/TextView;

.field groupIcon:Landroid/widget/ImageView;

.field icon:Landroid/widget/ImageView;

.field thanks:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/waze/rtalerts/RTAlertsListAdapter$ItemHolder;-><init>()V

    return-void
.end method
