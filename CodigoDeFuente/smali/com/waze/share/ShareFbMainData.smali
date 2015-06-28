.class public final Lcom/waze/share/ShareFbMainData;
.super Ljava/lang/Object;
.source "ShareFbMainData.java"


# instance fields
.field protected add_location:Ljava/lang/String;

.field protected eta:Ljava/lang/String;

.field protected hint:Ljava/lang/String;

.field protected isNavigating:Z

.field protected location:Ljava/lang/String;

.field protected metricUnits:Z

.field protected nickname:Ljava/lang/String;

.field protected postMsgBoxFailureText:Ljava/lang/String;

.field protected postMsgBoxFailureTitle:Ljava/lang/String;

.field protected postMsgBoxSuccessText:Ljava/lang/String;

.field protected postMsgBoxSuccessTitle:Ljava/lang/String;

.field protected post_to_fb:Ljava/lang/String;

.field protected title:Ljava/lang/String;

.field protected with:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/share/ShareFbMainData;->metricUnits:Z

    .line 15
    return-void
.end method
