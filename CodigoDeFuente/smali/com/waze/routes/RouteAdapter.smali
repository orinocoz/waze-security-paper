.class public Lcom/waze/routes/RouteAdapter;
.super Landroid/widget/BaseAdapter;
.source "RouteAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/routes/RouteAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TRAFFIC_EVENT_ANIMATION_DURATION:I = 0x1f4


# instance fields
.field private context:Landroid/content/Context;

.field private events:[Lcom/waze/main/navigate/EventOnRoute;

.field private handler:Landroid/os/Handler;

.field private inflater:Landroid/view/LayoutInflater;

.field private majorEvents:[Lcom/waze/main/navigate/MajorEventOnRoute;

.field private nativeManager:Lcom/waze/NativeManager;

.field private routes:[Lcom/waze/routes/AlternativeRoute;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/waze/routes/RouteAdapter;->handler:Landroid/os/Handler;

    .line 35
    iput-object p1, p0, Lcom/waze/routes/RouteAdapter;->context:Landroid/content/Context;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/routes/RouteAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 37
    invoke-static {}, Lcom/waze/AppService;->getNativeManager()Lcom/waze/NativeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/routes/RouteAdapter;->nativeManager:Lcom/waze/NativeManager;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/waze/routes/RouteAdapter;Landroid/view/View;Lcom/waze/routes/AlternativeRoute;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Lcom/waze/routes/RouteAdapter;->populateEventsOnRoute(Landroid/view/View;Lcom/waze/routes/AlternativeRoute;)V

    return-void
.end method

.method private getRouteView(ILandroid/view/View;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"

    .prologue
    .line 81
    if-eqz p2, :cond_0

    const v8, 0x7f09059a

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_1

    .line 82
    :cond_0
    iget-object v8, p0, Lcom/waze/routes/RouteAdapter;->inflater:Landroid/view/LayoutInflater;

    const v9, 0x7f0300cf

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 84
    new-instance v1, Lcom/waze/routes/RouteAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/waze/routes/RouteAdapter$ViewHolder;-><init>()V

    .line 85
    .local v1, holder:Lcom/waze/routes/RouteAdapter$ViewHolder;
    const v8, 0x7f09059a

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v1, Lcom/waze/routes/RouteAdapter$ViewHolder;->index:Landroid/widget/TextView;

    .line 86
    const v8, 0x7f09059d

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v1, Lcom/waze/routes/RouteAdapter$ViewHolder;->description:Landroid/widget/TextView;

    .line 87
    const v8, 0x7f09059e

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v1, Lcom/waze/routes/RouteAdapter$ViewHolder;->toll:Landroid/widget/TextView;

    .line 88
    const v8, 0x7f090492

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v1, Lcom/waze/routes/RouteAdapter$ViewHolder;->distanceValue:Landroid/widget/TextView;

    .line 89
    const v8, 0x7f090493

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v1, Lcom/waze/routes/RouteAdapter$ViewHolder;->distanceUnits:Landroid/widget/TextView;

    .line 90
    const v8, 0x7f0905a0

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v1, Lcom/waze/routes/RouteAdapter$ViewHolder;->timeHoursValue:Landroid/widget/TextView;

    .line 91
    const v8, 0x7f0905a1

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v1, Lcom/waze/routes/RouteAdapter$ViewHolder;->timeHoursUnits:Landroid/widget/TextView;

    .line 92
    const v8, 0x7f0905a2

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v1, Lcom/waze/routes/RouteAdapter$ViewHolder;->timeMinutesValue:Landroid/widget/TextView;

    .line 93
    const v8, 0x7f0905a3

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v1, Lcom/waze/routes/RouteAdapter$ViewHolder;->timeMinutesUnits:Landroid/widget/TextView;

    .line 94
    const v8, 0x7f09059f

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v1, Lcom/waze/routes/RouteAdapter$ViewHolder;->goText:Landroid/widget/TextView;

    .line 95
    const v8, 0x7f09059b

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v1, Lcom/waze/routes/RouteAdapter$ViewHolder;->preferred:Landroid/widget/ImageView;

    .line 96
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 100
    :goto_0
    move-object v5, p2

    .line 101
    .local v5, myView:Landroid/view/View;
    iget-object v8, v1, Lcom/waze/routes/RouteAdapter$ViewHolder;->index:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v10, p1, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v8, v1, Lcom/waze/routes/RouteAdapter$ViewHolder;->goText:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/waze/routes/RouteAdapter;->nativeManager:Lcom/waze/NativeManager;

    sget-object v10, Lcom/waze/strings/DisplayStrings;->DS_GO:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v9, v10}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v8, p0, Lcom/waze/routes/RouteAdapter;->nativeManager:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_VIA:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v7

    .line 104
    .local v7, viaText:Ljava/lang/String;
    iget-object v8, p0, Lcom/waze/routes/RouteAdapter;->routes:[Lcom/waze/routes/AlternativeRoute;

    aget-object v6, v8, p1

    .line 105
    .local v6, route:Lcom/waze/routes/AlternativeRoute;
    iget-object v8, p0, Lcom/waze/routes/RouteAdapter;->nativeManager:Lcom/waze/NativeManager;

    iget-object v9, v6, Lcom/waze/routes/AlternativeRoute;->description:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, descriptionText:Ljava/lang/String;
    iget-object v8, v1, Lcom/waze/routes/RouteAdapter$ViewHolder;->description:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget v8, v6, Lcom/waze/routes/AlternativeRoute;->distanceRound:I

    const/16 v9, 0x64

    if-ge v8, v9, :cond_2

    .line 108
    iget-object v8, v1, Lcom/waze/routes/RouteAdapter$ViewHolder;->distanceValue:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v6, Lcom/waze/routes/AlternativeRoute;->distanceRound:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v6, Lcom/waze/routes/AlternativeRoute;->distanceTenths:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :goto_1
    iget-object v8, v1, Lcom/waze/routes/RouteAdapter$ViewHolder;->toll:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/waze/routes/RouteAdapter;->nativeManager:Lcom/waze/NativeManager;

    sget-object v10, Lcom/waze/strings/DisplayStrings;->DS_TOLL:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v9, v10}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v8, v1, Lcom/waze/routes/RouteAdapter$ViewHolder;->distanceUnits:Landroid/widget/TextView;

    iget-object v9, v6, Lcom/waze/routes/AlternativeRoute;->distanceUnits:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget v8, v6, Lcom/waze/routes/AlternativeRoute;->time:I

    div-int/lit8 v3, v8, 0x3c

    .line 115
    .local v3, minutes:I
    iget-object v8, p0, Lcom/waze/routes/RouteAdapter;->nativeManager:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_MIN_:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, minutesStr:Ljava/lang/String;
    iget-object v8, v1, Lcom/waze/routes/RouteAdapter$ViewHolder;->timeMinutesUnits:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v8, p0, Lcom/waze/routes/RouteAdapter;->nativeManager:Lcom/waze/NativeManager;

    sget-object v9, Lcom/waze/strings/DisplayStrings;->DS_H:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v8, v9}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, hoursStr:Ljava/lang/String;
    iget-object v8, v1, Lcom/waze/routes/RouteAdapter$ViewHolder;->timeHoursUnits:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    const/16 v8, 0x3c

    if-le v3, v8, :cond_3

    .line 120
    iget-object v8, v1, Lcom/waze/routes/RouteAdapter$ViewHolder;->timeMinutesValue:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 v10, v3, 0x3c

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v8, v1, Lcom/waze/routes/RouteAdapter$ViewHolder;->timeHoursValue:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v10, v3, 0x3c

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v8, v1, Lcom/waze/routes/RouteAdapter$ViewHolder;->timeHoursUnits:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v8, v1, Lcom/waze/routes/RouteAdapter$ViewHolder;->timeHoursValue:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    :goto_2
    iget-boolean v8, v6, Lcom/waze/routes/AlternativeRoute;->preferred:Z

    if-eqz v8, :cond_4

    .line 130
    iget-object v8, v1, Lcom/waze/routes/RouteAdapter$ViewHolder;->preferred:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    :goto_3
    iget-boolean v8, v6, Lcom/waze/routes/AlternativeRoute;->toll:Z

    if-eqz v8, :cond_5

    .line 135
    iget-object v8, v1, Lcom/waze/routes/RouteAdapter$ViewHolder;->toll:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    :goto_4
    invoke-direct {p0, v5, v6}, Lcom/waze/routes/RouteAdapter;->populateMajorEventsOnRoute(Landroid/view/View;Lcom/waze/routes/AlternativeRoute;)V

    .line 140
    iget-object v8, p0, Lcom/waze/routes/RouteAdapter;->handler:Landroid/os/Handler;

    new-instance v9, Lcom/waze/routes/RouteAdapter$1;

    invoke-direct {v9, p0, v5, v6}, Lcom/waze/routes/RouteAdapter$1;-><init>(Lcom/waze/routes/RouteAdapter;Landroid/view/View;Lcom/waze/routes/AlternativeRoute;)V

    .line 145
    const-wide/16 v10, 0x1f4

    .line 140
    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    return-object p2

    .line 98
    .end local v0           #descriptionText:Ljava/lang/String;
    .end local v1           #holder:Lcom/waze/routes/RouteAdapter$ViewHolder;
    .end local v2           #hoursStr:Ljava/lang/String;
    .end local v3           #minutes:I
    .end local v4           #minutesStr:Ljava/lang/String;
    .end local v5           #myView:Landroid/view/View;
    .end local v6           #route:Lcom/waze/routes/AlternativeRoute;
    .end local v7           #viaText:Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/waze/routes/RouteAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/waze/routes/RouteAdapter$ViewHolder;
    goto/16 :goto_0

    .line 110
    .restart local v0       #descriptionText:Ljava/lang/String;
    .restart local v5       #myView:Landroid/view/View;
    .restart local v6       #route:Lcom/waze/routes/AlternativeRoute;
    .restart local v7       #viaText:Ljava/lang/String;
    :cond_2
    iget-object v8, v1, Lcom/waze/routes/RouteAdapter$ViewHolder;->distanceValue:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v6, Lcom/waze/routes/AlternativeRoute;->distanceRound:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 125
    .restart local v2       #hoursStr:Ljava/lang/String;
    .restart local v3       #minutes:I
    .restart local v4       #minutesStr:Ljava/lang/String;
    :cond_3
    iget-object v8, v1, Lcom/waze/routes/RouteAdapter$ViewHolder;->timeMinutesValue:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v8, v1, Lcom/waze/routes/RouteAdapter$ViewHolder;->timeHoursUnits:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    iget-object v8, v1, Lcom/waze/routes/RouteAdapter$ViewHolder;->timeHoursValue:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 132
    :cond_4
    iget-object v8, v1, Lcom/waze/routes/RouteAdapter$ViewHolder;->preferred:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 137
    :cond_5
    iget-object v8, v1, Lcom/waze/routes/RouteAdapter$ViewHolder;->toll:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method

.method private getStaticView(Landroid/view/View;)Landroid/view/View;
    .locals 6
    .parameter "convertView"

    .prologue
    const v5, 0x7f0905b0

    .line 67
    if-eqz p1, :cond_0

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/waze/routes/RouteAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300d0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 70
    :cond_1
    iget-object v2, p0, Lcom/waze/routes/RouteAdapter;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_YOUR_PREFERRED_ROUTE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, preferredTitle:Ljava/lang/String;
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v2, p0, Lcom/waze/routes/RouteAdapter;->nativeManager:Lcom/waze/NativeManager;

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_TIPC_TEACH_WAZE_YOUR_PREFERRED_ROUTES_BY_SIMPLY_DRIVING_THEM_SEVERAL_TIMES_:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v2, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, preferredText:Ljava/lang/String;
    const v2, 0x7f0905b1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-object p1
.end method

.method private populateEventsOnRoute(Landroid/view/View;Lcom/waze/routes/AlternativeRoute;)V
    .locals 21
    .parameter "convertView"
    .parameter "route"

    .prologue
    .line 149
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/waze/routes/RouteAdapter;->events:[Lcom/waze/main/navigate/EventOnRoute;

    if-nez v14, :cond_1

    .line 207
    :cond_0
    return-void

    .line 152
    :cond_1
    const v14, 0x7f0905a5

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 153
    .local v11, trafficEventsLayout:Landroid/widget/RelativeLayout;
    const v14, 0x7f0905a6

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 154
    .local v8, otherEventsLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {v11}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v13

    .line 155
    .local v13, width:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/waze/routes/RouteAdapter;->events:[Lcom/waze/main/navigate/EventOnRoute;

    array-length v0, v15

    move/from16 v16, v0

    const/4 v14, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v14, v0, :cond_0

    aget-object v4, v15, v14

    .line 157
    .local v4, event:Lcom/waze/main/navigate/EventOnRoute;
    if-nez v4, :cond_3

    .line 155
    :cond_2
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 161
    :cond_3
    iget v0, v4, Lcom/waze/main/navigate/EventOnRoute;->alertRouteId:I

    move/from16 v17, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/waze/routes/AlternativeRoute;->id:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 164
    iget v0, v4, Lcom/waze/main/navigate/EventOnRoute;->alertType:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 165
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v4, Lcom/waze/main/navigate/EventOnRoute;->end:I

    move/from16 v17, v0

    iget v0, v4, Lcom/waze/main/navigate/EventOnRoute;->start:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    mul-int v17, v17, v13

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4059

    div-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v7, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 166
    .local v7, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v12, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/routes/RouteAdapter;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 167
    .local v12, trafficImage:Landroid/widget/ImageView;
    iget v0, v4, Lcom/waze/main/navigate/EventOnRoute;->start:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4059

    div-double v17, v17, v19

    int-to-double v0, v13

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 168
    sget-object v17, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 169
    iget v0, v4, Lcom/waze/main/navigate/EventOnRoute;->severity:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 170
    const v17, 0x7f02041b

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    :cond_4
    :goto_2
    invoke-virtual {v12, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 178
    const/16 v17, 0x1f4

    move/from16 v0, v17

    invoke-static {v12, v0}, Lcom/waze/view/anim/AnimationUtils;->stretchViewHorizontally(Landroid/view/View;I)V

    goto/16 :goto_1

    .line 171
    :cond_5
    iget v0, v4, Lcom/waze/main/navigate/EventOnRoute;->severity:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 172
    const v17, 0x7f02041a

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 173
    :cond_6
    iget v0, v4, Lcom/waze/main/navigate/EventOnRoute;->severity:I

    move/from16 v17, v0

    if-nez v17, :cond_4

    .line 174
    const v17, 0x7f020419

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 181
    .end local v7           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12           #trafficImage:Landroid/widget/ImageView;
    :cond_7
    iget v0, v4, Lcom/waze/main/navigate/EventOnRoute;->alertType:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 182
    const v5, 0x7f02002b

    .line 194
    .local v5, icon:I
    :goto_3
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v7, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 195
    .restart local v7       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v0, v4, Lcom/waze/main/navigate/EventOnRoute;->start:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v9, v0

    .line 196
    .local v9, start:D
    const-wide v17, 0x4055400000000000L

    cmpl-double v17, v9, v17

    if-lez v17, :cond_8

    .line 197
    const-wide v9, 0x4055400000000000L

    .line 199
    :cond_8
    new-instance v6, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/waze/routes/RouteAdapter;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 200
    .local v6, image:Landroid/widget/ImageView;
    const-wide/high16 v17, 0x4059

    div-double v17, v9, v17

    int-to-double v0, v13

    move-wide/from16 v19, v0

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 201
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 202
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    invoke-virtual {v8, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 204
    invoke-static {v6}, Lcom/waze/view/anim/AnimationUtils;->overshootCustomPopView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 183
    .end local v5           #icon:I
    .end local v6           #image:Landroid/widget/ImageView;
    .end local v7           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v9           #start:D
    :cond_9
    iget v0, v4, Lcom/waze/main/navigate/EventOnRoute;->alertType:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 184
    const v5, 0x7f020026

    .line 185
    .restart local v5       #icon:I
    goto :goto_3

    .end local v5           #icon:I
    :cond_a
    iget v0, v4, Lcom/waze/main/navigate/EventOnRoute;->alertType:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 186
    const v5, 0x7f020029

    .line 187
    .restart local v5       #icon:I
    goto :goto_3

    .end local v5           #icon:I
    :cond_b
    iget v0, v4, Lcom/waze/main/navigate/EventOnRoute;->alertType:I

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 188
    const v5, 0x7f020028

    .line 189
    .restart local v5       #icon:I
    goto/16 :goto_3

    .end local v5           #icon:I
    :cond_c
    iget v0, v4, Lcom/waze/main/navigate/EventOnRoute;->alertType:I

    move/from16 v17, v0

    const/16 v18, 0xc

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 190
    const v5, 0x7f020333

    .line 191
    .restart local v5       #icon:I
    goto/16 :goto_3

    .line 192
    .end local v5           #icon:I
    :cond_d
    const v5, 0x7f02002a

    .restart local v5       #icon:I
    goto/16 :goto_3
.end method

.method private populateMajorEventsOnRoute(Landroid/view/View;Lcom/waze/routes/AlternativeRoute;)V
    .locals 9
    .parameter "convertView"
    .parameter "route"

    .prologue
    const/16 v8, 0x8

    const/4 v3, 0x0

    .line 209
    const v2, 0x7f0905a7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 210
    .local v1, majorView:Landroid/view/View;
    iget-object v2, p0, Lcom/waze/routes/RouteAdapter;->majorEvents:[Lcom/waze/main/navigate/MajorEventOnRoute;

    if-nez v2, :cond_0

    .line 211
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 233
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v4, p0, Lcom/waze/routes/RouteAdapter;->majorEvents:[Lcom/waze/main/navigate/MajorEventOnRoute;

    array-length v5, v4

    move v2, v3

    :goto_1
    if-lt v2, v5, :cond_1

    .line 232
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 214
    :cond_1
    aget-object v0, v4, v2

    .line 215
    .local v0, event:Lcom/waze/main/navigate/MajorEventOnRoute;
    iget v6, v0, Lcom/waze/main/navigate/MajorEventOnRoute;->alertRouteId:I

    iget v7, p2, Lcom/waze/routes/AlternativeRoute;->id:I

    if-eq v6, v7, :cond_3

    .line 214
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 218
    :cond_3
    iget v6, v0, Lcom/waze/main/navigate/MajorEventOnRoute;->alertType:I

    const/16 v7, 0xc

    if-ne v6, v7, :cond_2

    .line 223
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 224
    const v2, 0x7f0905a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/waze/main/navigate/MajorEventOnRoute;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    const v2, 0x7f0905aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/waze/main/navigate/MajorEventOnRoute;->time:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    const v2, 0x7f0905ab

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/waze/main/navigate/MajorEventOnRoute;->reported:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    const v2, 0x7f0905ae

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/waze/main/navigate/MajorEventOnRoute;->dueto:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    const v2, 0x7f0905ac

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/waze/main/navigate/MajorEventOnRoute;->thanked:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    const v2, 0x7f0905ad

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/waze/main/navigate/MajorEventOnRoute;->duration:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/waze/routes/RouteAdapter;->routes:[Lcom/waze/routes/AlternativeRoute;

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 55
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/waze/routes/RouteAdapter;->routes:[Lcom/waze/routes/AlternativeRoute;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 249
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 253
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/waze/routes/RouteAdapter;->routes:[Lcom/waze/routes/AlternativeRoute;

    array-length v0, v0

    if-ne p1, v0, :cond_0

    .line 61
    invoke-direct {p0, p2}, Lcom/waze/routes/RouteAdapter;->getStaticView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/waze/routes/RouteAdapter;->getRouteView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public setEvents([Lcom/waze/main/navigate/EventOnRoute;)V
    .locals 0
    .parameter "events"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/waze/routes/RouteAdapter;->events:[Lcom/waze/main/navigate/EventOnRoute;

    .line 41
    return-void
.end method

.method public setMajorEvents([Lcom/waze/main/navigate/MajorEventOnRoute;)V
    .locals 0
    .parameter "events"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/waze/routes/RouteAdapter;->majorEvents:[Lcom/waze/main/navigate/MajorEventOnRoute;

    .line 45
    return-void
.end method

.method public setRoutes([Lcom/waze/routes/AlternativeRoute;)V
    .locals 0
    .parameter "routes"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/waze/routes/RouteAdapter;->routes:[Lcom/waze/routes/AlternativeRoute;

    .line 49
    return-void
.end method
