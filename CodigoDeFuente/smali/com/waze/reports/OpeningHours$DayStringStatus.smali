.class Lcom/waze/reports/OpeningHours$DayStringStatus;
.super Ljava/lang/Object;
.source "OpeningHours.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/reports/OpeningHours;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DayStringStatus"
.end annotation


# instance fields
.field isFirst:Z

.field prevDayStr:Ljava/lang/String;

.field prevOpen:Z

.field final synthetic this$0:Lcom/waze/reports/OpeningHours;

.field toStr:Ljava/lang/String;

.field wroteTo:Z


# direct methods
.method constructor <init>(Lcom/waze/reports/OpeningHours;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 76
    iput-object p1, p0, Lcom/waze/reports/OpeningHours$DayStringStatus;->this$0:Lcom/waze/reports/OpeningHours;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean v0, p0, Lcom/waze/reports/OpeningHours$DayStringStatus;->prevOpen:Z

    .line 78
    iput-boolean v0, p0, Lcom/waze/reports/OpeningHours$DayStringStatus;->wroteTo:Z

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/waze/reports/OpeningHours$DayStringStatus;->isFirst:Z

    .line 80
    iput-object v1, p0, Lcom/waze/reports/OpeningHours$DayStringStatus;->toStr:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/waze/reports/OpeningHours$DayStringStatus;->prevDayStr:Ljava/lang/String;

    return-void
.end method
