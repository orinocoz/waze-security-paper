.class public Lcom/waze/widget/DestinationSelector;
.super Ljava/lang/Object;
.source "DestinationSelector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDestination(Landroid/location/Location;)Lcom/waze/widget/Destination;
    .locals 11
    .parameter "currentLocation"

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x447a

    .line 20
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 21
    .local v0, calendar:Ljava/util/Calendar;
    new-instance v1, Lcom/waze/widget/Destination;

    sget-object v8, Lcom/waze/widget/DestinationType;->NONE:Lcom/waze/widget/DestinationType;

    invoke-direct {v1, v8, v10, v10}, Lcom/waze/widget/Destination;-><init>(Lcom/waze/widget/DestinationType;Ljava/lang/String;Landroid/location/Location;)V

    .line 22
    .local v1, dest:Lcom/waze/widget/Destination;
    const-string v6, ""

    .line 23
    .local v6, nameHome:Ljava/lang/String;
    const-string v7, ""

    .line 24
    .local v7, nameWork:Ljava/lang/String;
    if-nez p0, :cond_1

    .line 25
    const-string v8, "currentLocation is null"

    invoke-static {v8}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 111
    :cond_0
    :goto_0
    return-object v1

    .line 29
    :cond_1
    const-string v8, "Home"

    invoke-static {v8}, Lcom/waze/config/WazeLang;->getLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 30
    invoke-static {v6}, Lcom/waze/config/WazeHistory;->getEntry(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    .line 31
    .local v4, locationHome:Landroid/location/Location;
    if-nez v4, :cond_2

    .line 32
    const-string v8, "home"

    invoke-static {v8}, Lcom/waze/config/WazeLang;->getLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 33
    invoke-static {v6}, Lcom/waze/config/WazeHistory;->getEntry(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    .line 35
    :cond_2
    if-nez v4, :cond_3

    .line 36
    const-string v6, "Home"

    .line 37
    invoke-static {v6}, Lcom/waze/config/WazeHistory;->getEntry(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    .line 39
    :cond_3
    if-nez v4, :cond_4

    .line 40
    const-string v6, "home"

    .line 41
    invoke-static {v6}, Lcom/waze/config/WazeHistory;->getEntry(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    .line 45
    :cond_4
    const-string v8, "Work"

    invoke-static {v8}, Lcom/waze/config/WazeLang;->getLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 46
    invoke-static {v7}, Lcom/waze/config/WazeHistory;->getEntry(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    .line 47
    .local v5, locationWork:Landroid/location/Location;
    if-nez v5, :cond_5

    .line 48
    const-string v8, "work"

    invoke-static {v8}, Lcom/waze/config/WazeLang;->getLang(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 49
    invoke-static {v7}, Lcom/waze/config/WazeHistory;->getEntry(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    .line 51
    :cond_5
    if-nez v5, :cond_6

    .line 52
    const-string v7, "Work"

    .line 53
    invoke-static {v7}, Lcom/waze/config/WazeHistory;->getEntry(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    .line 55
    :cond_6
    if-nez v5, :cond_7

    .line 56
    const-string v7, "work"

    .line 57
    invoke-static {v7}, Lcom/waze/config/WazeHistory;->getEntry(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    .line 60
    :cond_7
    if-nez v4, :cond_8

    if-nez v5, :cond_8

    .line 61
    const-string v8, "No Home & Work"

    invoke-static {v8}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 62
    sget-object v8, Lcom/waze/widget/DestinationType;->NA:Lcom/waze/widget/DestinationType;

    invoke-virtual {v1, v8}, Lcom/waze/widget/Destination;->setType(Lcom/waze/widget/DestinationType;)V

    goto :goto_0

    .line 66
    :cond_8
    const/16 v8, 0x9

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-nez v8, :cond_c

    .line 68
    if-eqz v5, :cond_b

    .line 69
    invoke-virtual {v5, p0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v3

    .line 70
    .local v3, distanceWork:F
    cmpl-float v8, v3, v9

    if-lez v8, :cond_9

    .line 71
    const-string v8, "getDestination - selecting Work"

    invoke-static {v8}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 72
    sget-object v8, Lcom/waze/widget/DestinationType;->WORK:Lcom/waze/widget/DestinationType;

    invoke-virtual {v1, v8}, Lcom/waze/widget/Destination;->setType(Lcom/waze/widget/DestinationType;)V

    .line 73
    invoke-virtual {v1, v5}, Lcom/waze/widget/Destination;->setLocation(Landroid/location/Location;)V

    .line 74
    invoke-virtual {v1, v7}, Lcom/waze/widget/Destination;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_9
    if-eqz v4, :cond_a

    .line 76
    const-string v8, "Too Close to work selecting home"

    invoke-static {v8}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 77
    sget-object v8, Lcom/waze/widget/DestinationType;->HOME:Lcom/waze/widget/DestinationType;

    invoke-virtual {v1, v8}, Lcom/waze/widget/Destination;->setType(Lcom/waze/widget/DestinationType;)V

    .line 78
    invoke-virtual {v1, v4}, Lcom/waze/widget/Destination;->setLocation(Landroid/location/Location;)V

    .line 79
    invoke-virtual {v1, v6}, Lcom/waze/widget/Destination;->setName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 81
    :cond_a
    if-nez v4, :cond_0

    .line 82
    const-string v8, "No Home"

    invoke-static {v8}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 83
    sget-object v8, Lcom/waze/widget/DestinationType;->NA:Lcom/waze/widget/DestinationType;

    invoke-virtual {v1, v8}, Lcom/waze/widget/Destination;->setType(Lcom/waze/widget/DestinationType;)V

    goto/16 :goto_0

    .line 87
    .end local v3           #distanceWork:F
    :cond_b
    const-string v8, "No Work"

    invoke-static {v8}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 88
    sget-object v8, Lcom/waze/widget/DestinationType;->NA:Lcom/waze/widget/DestinationType;

    invoke-virtual {v1, v8}, Lcom/waze/widget/Destination;->setType(Lcom/waze/widget/DestinationType;)V

    goto/16 :goto_0

    .line 93
    :cond_c
    if-eqz v4, :cond_e

    .line 94
    invoke-virtual {v4, p0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v2

    .line 95
    .local v2, distanceHome:F
    cmpl-float v8, v2, v9

    if-lez v8, :cond_d

    .line 96
    sget-object v8, Lcom/waze/widget/DestinationType;->HOME:Lcom/waze/widget/DestinationType;

    invoke-virtual {v1, v8}, Lcom/waze/widget/Destination;->setType(Lcom/waze/widget/DestinationType;)V

    .line 97
    invoke-virtual {v1, v4}, Lcom/waze/widget/Destination;->setLocation(Landroid/location/Location;)V

    .line 98
    invoke-virtual {v1, v6}, Lcom/waze/widget/Destination;->setName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 99
    :cond_d
    if-eqz v5, :cond_0

    .line 100
    sget-object v8, Lcom/waze/widget/DestinationType;->WORK:Lcom/waze/widget/DestinationType;

    invoke-virtual {v1, v8}, Lcom/waze/widget/Destination;->setType(Lcom/waze/widget/DestinationType;)V

    .line 101
    invoke-virtual {v1, v5}, Lcom/waze/widget/Destination;->setLocation(Landroid/location/Location;)V

    .line 102
    invoke-virtual {v1, v7}, Lcom/waze/widget/Destination;->setName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 106
    .end local v2           #distanceHome:F
    :cond_e
    const-string v8, "No Home"

    invoke-static {v8}, Lcom/waze/widget/WazeAppWidgetLog;->d(Ljava/lang/String;)V

    .line 107
    sget-object v8, Lcom/waze/widget/DestinationType;->NA:Lcom/waze/widget/DestinationType;

    invoke-virtual {v1, v8}, Lcom/waze/widget/Destination;->setType(Lcom/waze/widget/DestinationType;)V

    goto/16 :goto_0
.end method
