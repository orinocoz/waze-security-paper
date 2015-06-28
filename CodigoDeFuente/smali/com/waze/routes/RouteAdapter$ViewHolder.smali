.class Lcom/waze/routes/RouteAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "RouteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/routes/RouteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field public description:Landroid/widget/TextView;

.field public distanceUnits:Landroid/widget/TextView;

.field public distanceValue:Landroid/widget/TextView;

.field public goText:Landroid/widget/TextView;

.field public index:Landroid/widget/TextView;

.field public preferred:Landroid/widget/ImageView;

.field public timeHoursUnits:Landroid/widget/TextView;

.field public timeHoursValue:Landroid/widget/TextView;

.field public timeMinutesUnits:Landroid/widget/TextView;

.field public timeMinutesValue:Landroid/widget/TextView;

.field public toll:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
