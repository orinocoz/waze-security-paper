.class Lcom/waze/reports/ReportMenu$10;
.super Ljava/lang/Object;
.source "ReportMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/ReportMenu;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/ReportMenu;


# direct methods
.method constructor <init>(Lcom/waze/reports/ReportMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/ReportMenu$10;->this$0:Lcom/waze/reports/ReportMenu;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 264
    const-string v2, "PLACES_REPORT_MENU_PLACE_CLICKED"

    invoke-static {v2, v3, v3}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-static {}, Lcom/waze/NativeLocListener;->getInstance()Lcom/waze/NativeLocListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/NativeLocListener;->getLastLocation()Landroid/location/Location;

    move-result-object v1

    .line 268
    .local v1, loc:Landroid/location/Location;
    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 272
    :cond_0
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v2

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_UHHOHE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 274
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v3

    .line 276
    sget-object v4, Lcom/waze/strings/DisplayStrings;->DS_SORRY__THERESS_NO_GPS_RECEPTION_IN_THIS_LOCATION__MAKE_SURE_YOU_ARE_OUTDOORS:Lcom/waze/strings/DisplayStrings;

    .line 275
    invoke-virtual {v3, v4}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v3

    .line 271
    invoke-static {v2, v3, v6}, Lcom/waze/MsgBox;->openMessageBox(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 289
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v2, p0, Lcom/waze/reports/ReportMenu$10;->this$0:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v2, v6}, Lcom/waze/reports/ReportMenu;->hideBottomNotification(Z)V

    .line 284
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/waze/reports/ReportMenu$10;->this$0:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v2}, Lcom/waze/reports/ReportMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/waze/reports/AddPlaceFlowActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 285
    .local v0, addPlaceIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 286
    invoke-static {}, Lcom/waze/AppService;->getMainActivity()Lcom/waze/MainActivity;

    move-result-object v2

    invoke-virtual {v2, v0, v6}, Lcom/waze/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 288
    :cond_2
    iget-object v2, p0, Lcom/waze/reports/ReportMenu$10;->this$0:Lcom/waze/reports/ReportMenu;

    invoke-virtual {v2}, Lcom/waze/reports/ReportMenu;->dismiss()V

    goto :goto_0
.end method
