.class Lcom/waze/reports/RoadClosureReport$4;
.super Ljava/lang/Object;
.source "RoadClosureReport.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/RoadClosureReport;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/RoadClosureReport;


# direct methods
.method constructor <init>(Lcom/waze/reports/RoadClosureReport;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/RoadClosureReport$4;->this$0:Lcom/waze/reports/RoadClosureReport;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    .line 127
    iget-object v9, p0, Lcom/waze/reports/RoadClosureReport$4;->this$0:Lcom/waze/reports/RoadClosureReport;

    invoke-virtual {v9}, Lcom/waze/reports/RoadClosureReport;->stop()V

    .line 128
    iget-object v9, p0, Lcom/waze/reports/RoadClosureReport$4;->this$0:Lcom/waze/reports/RoadClosureReport;

    iget-object v9, v9, Lcom/waze/reports/RoadClosureReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v10, Lcom/waze/strings/DisplayStrings;->DS_DURATION:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v9, v10}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, dialogTitle:Ljava/lang/String;
    iget-object v9, p0, Lcom/waze/reports/RoadClosureReport$4;->this$0:Lcom/waze/reports/RoadClosureReport;

    iget-object v9, v9, Lcom/waze/reports/RoadClosureReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v10, Lcom/waze/strings/DisplayStrings;->DS_UNKNOWN:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v9, v10}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v8

    .line 130
    .local v8, unknown:Ljava/lang/String;
    iget-object v9, p0, Lcom/waze/reports/RoadClosureReport$4;->this$0:Lcom/waze/reports/RoadClosureReport;

    iget-object v9, v9, Lcom/waze/reports/RoadClosureReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v10, Lcom/waze/strings/DisplayStrings;->DS_LESS_THANN_AN_HOUR:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v9, v10}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, lessThenHour:Ljava/lang/String;
    iget-object v9, p0, Lcom/waze/reports/RoadClosureReport$4;->this$0:Lcom/waze/reports/RoadClosureReport;

    iget-object v9, v9, Lcom/waze/reports/RoadClosureReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v10, Lcom/waze/strings/DisplayStrings;->DS_SEVERAL_HOURS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v9, v10}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v7

    .line 132
    .local v7, severalHours:Ljava/lang/String;
    iget-object v9, p0, Lcom/waze/reports/RoadClosureReport$4;->this$0:Lcom/waze/reports/RoadClosureReport;

    iget-object v9, v9, Lcom/waze/reports/RoadClosureReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v10, Lcom/waze/strings/DisplayStrings;->DS_ALL_DAY:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v9, v10}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, allDay:Ljava/lang/String;
    iget-object v9, p0, Lcom/waze/reports/RoadClosureReport$4;->this$0:Lcom/waze/reports/RoadClosureReport;

    iget-object v9, v9, Lcom/waze/reports/RoadClosureReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v10, Lcom/waze/strings/DisplayStrings;->DS_SEVERAL_DAYS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v9, v10}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v6

    .line 134
    .local v6, severalDays:Ljava/lang/String;
    iget-object v9, p0, Lcom/waze/reports/RoadClosureReport$4;->this$0:Lcom/waze/reports/RoadClosureReport;

    iget-object v9, v9, Lcom/waze/reports/RoadClosureReport;->nativeManager:Lcom/waze/NativeManager;

    sget-object v10, Lcom/waze/strings/DisplayStrings;->DS_LONG_TERM:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v9, v10}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, longTerm:Ljava/lang/String;
    const/4 v9, 0x6

    new-array v5, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v5, v9

    const/4 v9, 0x1

    aput-object v2, v5, v9

    const/4 v9, 0x2

    aput-object v7, v5, v9

    const/4 v9, 0x3

    aput-object v0, v5, v9

    const/4 v9, 0x4

    aput-object v6, v5, v9

    const/4 v9, 0x5

    aput-object v3, v5, v9

    .line 136
    .local v5, options:[Ljava/lang/String;
    const/4 v9, 0x6

    new-array v4, v9, [I

    const/4 v9, 0x1

    const/4 v10, 0x1

    aput v10, v4, v9

    const/4 v9, 0x2

    const/4 v10, 0x2

    aput v10, v4, v9

    const/4 v9, 0x3

    const/4 v10, 0x3

    aput v10, v4, v9

    const/4 v9, 0x4

    const/4 v10, 0x4

    aput v10, v4, v9

    const/4 v9, 0x5

    const/4 v10, 0x5

    aput v10, v4, v9

    .line 137
    .local v4, optionValues:[I
    iget-object v9, p0, Lcom/waze/reports/RoadClosureReport$4;->this$0:Lcom/waze/reports/RoadClosureReport;

    #calls: Lcom/waze/reports/RoadClosureReport;->showSubmenu(Ljava/lang/String;[Ljava/lang/String;[I)V
    invoke-static {v9, v1, v5, v4}, Lcom/waze/reports/RoadClosureReport;->access$3(Lcom/waze/reports/RoadClosureReport;Ljava/lang/String;[Ljava/lang/String;[I)V

    .line 138
    return-void
.end method
