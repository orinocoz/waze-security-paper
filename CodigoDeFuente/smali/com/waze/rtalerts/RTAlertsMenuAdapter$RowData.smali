.class public final Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowData;
.super Ljava/lang/Object;
.source "RTAlertsMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/rtalerts/RTAlertsMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RowData"
.end annotation


# instance fields
.field public mCounter:I

.field public mIconResId:I

.field public mId:I

.field public mLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "id"
    .parameter "icon_res"
    .parameter "label"
    .parameter "counter"

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput p1, p0, Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowData;->mId:I

    .line 135
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/waze/ResManager;->GetDrawableId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowData;->mIconResId:I

    .line 136
    iput-object p3, p0, Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowData;->mLabel:Ljava/lang/String;

    .line 137
    iput p4, p0, Lcom/waze/rtalerts/RTAlertsMenuAdapter$RowData;->mCounter:I

    .line 138
    return-void
.end method
