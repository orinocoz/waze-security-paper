.class public Lcom/waze/reports/OpeningHours;
.super Ljava/lang/Object;
.source "OpeningHours.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/waze/reports/OpeningHours$DayStringStatus;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/waze/reports/OpeningHours;",
            ">;"
        }
    .end annotation
.end field

#the value of this static final field might be set in the static constructor
.field public static final FIRST_DAY_IS_SUNDAY:Z = false

.field private static MAX_DAYS:I = 0x0

.field private static friday:Ljava/lang/String; = null

.field private static monday:Ljava/lang/String; = null

.field private static saturday:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L

.field private static sunday:Ljava/lang/String;

.field private static thursday:Ljava/lang/String;

.field private static tuesday:Ljava/lang/String;

.field private static wednesday:Ljava/lang/String;


# instance fields
.field public days:[I

.field public from:Ljava/lang/String;

.field public to:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 21
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 20
    :goto_0
    sput-boolean v0, Lcom/waze/reports/OpeningHours;->FIRST_DAY_IS_SUNDAY:Z

    .line 23
    const/4 v0, 0x7

    sput v0, Lcom/waze/reports/OpeningHours;->MAX_DAYS:I

    .line 58
    new-instance v0, Lcom/waze/reports/OpeningHours$1;

    invoke-direct {v0}, Lcom/waze/reports/OpeningHours$1;-><init>()V

    .line 57
    sput-object v0, Lcom/waze/reports/OpeningHours;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/reports/OpeningHours;->sunday:Ljava/lang/String;

    .line 74
    return-void

    .line 21
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget v0, Lcom/waze/reports/OpeningHours;->MAX_DAYS:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/waze/reports/OpeningHours;->days:[I

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget v0, Lcom/waze/reports/OpeningHours;->MAX_DAYS:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/waze/reports/OpeningHours;->days:[I

    .line 34
    iget-object v0, p0, Lcom/waze/reports/OpeningHours;->days:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/OpeningHours;->from:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/OpeningHours;->to:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/waze/reports/OpeningHours;)V
    .locals 2
    .parameter "orig"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iget-object v0, p1, Lcom/waze/reports/OpeningHours;->days:[I

    sget v1, Lcom/waze/reports/OpeningHours;->MAX_DAYS:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/OpeningHours;->days:[I

    .line 41
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/waze/reports/OpeningHours;->from:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/waze/reports/OpeningHours;->from:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/waze/reports/OpeningHours;->to:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/waze/reports/OpeningHours;->to:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private addDay(Ljava/lang/StringBuilder;ZLjava/lang/String;Lcom/waze/reports/OpeningHours$DayStringStatus;Ljava/lang/String;)V
    .locals 3
    .parameter "bob"
    .parameter "bThisDayOpen"
    .parameter "thisDayStr"
    .parameter "s"
    .parameter "separator"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 136
    if-eqz p2, :cond_3

    .line 137
    iget-boolean v0, p4, Lcom/waze/reports/OpeningHours$DayStringStatus;->prevOpen:Z

    if-eqz v0, :cond_1

    .line 138
    iget-boolean v0, p4, Lcom/waze/reports/OpeningHours$DayStringStatus;->wroteTo:Z

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p4, Lcom/waze/reports/OpeningHours$DayStringStatus;->toStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iput-boolean v2, p4, Lcom/waze/reports/OpeningHours$DayStringStatus;->wroteTo:Z

    .line 157
    :cond_0
    :goto_0
    iput-object p3, p4, Lcom/waze/reports/OpeningHours$DayStringStatus;->prevDayStr:Ljava/lang/String;

    .line 158
    return-void

    .line 143
    :cond_1
    iget-boolean v0, p4, Lcom/waze/reports/OpeningHours$DayStringStatus;->isFirst:Z

    if-nez v0, :cond_2

    .line 144
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_2
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iput-boolean v2, p4, Lcom/waze/reports/OpeningHours$DayStringStatus;->prevOpen:Z

    .line 148
    iput-boolean v1, p4, Lcom/waze/reports/OpeningHours$DayStringStatus;->isFirst:Z

    goto :goto_0

    .line 151
    :cond_3
    iget-boolean v0, p4, Lcom/waze/reports/OpeningHours$DayStringStatus;->wroteTo:Z

    if-eqz v0, :cond_4

    .line 152
    iget-object v0, p4, Lcom/waze/reports/OpeningHours$DayStringStatus;->prevDayStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_4
    iput-boolean v1, p4, Lcom/waze/reports/OpeningHours$DayStringStatus;->wroteTo:Z

    .line 155
    iput-boolean v1, p4, Lcom/waze/reports/OpeningHours$DayStringStatus;->prevOpen:Z

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public getDaysString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, ", "

    invoke-virtual {p0, v0}, Lcom/waze/reports/OpeningHours;->getDaysString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDaysString(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "separator"

    .prologue
    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v1, bob:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v9

    .line 92
    .local v9, nm:Lcom/waze/NativeManager;
    new-instance v4, Lcom/waze/reports/OpeningHours$DayStringStatus;

    invoke-direct {v4, p0}, Lcom/waze/reports/OpeningHours$DayStringStatus;-><init>(Lcom/waze/reports/OpeningHours;)V

    .line 93
    .local v4, s:Lcom/waze/reports/OpeningHours$DayStringStatus;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_TO:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v9, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/waze/reports/OpeningHours$DayStringStatus;->toStr:Ljava/lang/String;

    .line 95
    sget-object v0, Lcom/waze/reports/OpeningHours;->sunday:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 96
    new-instance v10, Lcom/waze/settings/SettingsNativeManager;

    invoke-direct {v10}, Lcom/waze/settings/SettingsNativeManager;-><init>()V

    .line 97
    .local v10, settingsNativeManager:Lcom/waze/settings/SettingsNativeManager;
    new-instance v8, Ljava/util/Locale;

    invoke-virtual {v10}, Lcom/waze/settings/SettingsNativeManager;->getLanguagesLocaleNTV()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 99
    .local v8, locale:Ljava/util/Locale;
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v0, "EEE"

    invoke-direct {v7, v0, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 100
    .local v7, formatLetterDay:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 101
    .local v6, c:Ljava/util/Calendar;
    const/4 v0, 0x7

    const/4 v2, 0x1

    invoke-virtual {v6, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 102
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/reports/OpeningHours;->sunday:Ljava/lang/String;

    .line 103
    const/4 v0, 0x7

    const/4 v2, 0x2

    invoke-virtual {v6, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 104
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/reports/OpeningHours;->monday:Ljava/lang/String;

    .line 105
    const/4 v0, 0x7

    const/4 v2, 0x3

    invoke-virtual {v6, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 106
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/reports/OpeningHours;->tuesday:Ljava/lang/String;

    .line 107
    const/4 v0, 0x7

    const/4 v2, 0x4

    invoke-virtual {v6, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 108
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/reports/OpeningHours;->wednesday:Ljava/lang/String;

    .line 109
    const/4 v0, 0x7

    const/4 v2, 0x5

    invoke-virtual {v6, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 110
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/reports/OpeningHours;->thursday:Ljava/lang/String;

    .line 111
    const/4 v0, 0x7

    const/4 v2, 0x6

    invoke-virtual {v6, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 112
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/reports/OpeningHours;->friday:Ljava/lang/String;

    .line 113
    const/4 v0, 0x7

    const/4 v2, 0x7

    invoke-virtual {v6, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 114
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/reports/OpeningHours;->saturday:Ljava/lang/String;

    .line 117
    .end local v6           #c:Ljava/util/Calendar;
    .end local v7           #formatLetterDay:Ljava/text/SimpleDateFormat;
    .end local v8           #locale:Ljava/util/Locale;
    .end local v10           #settingsNativeManager:Lcom/waze/settings/SettingsNativeManager;
    :cond_0
    sget-boolean v0, Lcom/waze/reports/OpeningHours;->FIRST_DAY_IS_SUNDAY:Z

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/waze/reports/OpeningHours;->days:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    :goto_0
    sget-object v3, Lcom/waze/reports/OpeningHours;->sunday:Ljava/lang/String;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/waze/reports/OpeningHours;->addDay(Ljava/lang/StringBuilder;ZLjava/lang/String;Lcom/waze/reports/OpeningHours$DayStringStatus;Ljava/lang/String;)V

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/waze/reports/OpeningHours;->days:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    :goto_1
    sget-object v3, Lcom/waze/reports/OpeningHours;->monday:Ljava/lang/String;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/waze/reports/OpeningHours;->addDay(Ljava/lang/StringBuilder;ZLjava/lang/String;Lcom/waze/reports/OpeningHours$DayStringStatus;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/waze/reports/OpeningHours;->days:[I

    const/4 v2, 0x2

    aget v0, v0, v2

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    :goto_2
    sget-object v3, Lcom/waze/reports/OpeningHours;->tuesday:Ljava/lang/String;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/waze/reports/OpeningHours;->addDay(Ljava/lang/StringBuilder;ZLjava/lang/String;Lcom/waze/reports/OpeningHours$DayStringStatus;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/waze/reports/OpeningHours;->days:[I

    const/4 v2, 0x3

    aget v0, v0, v2

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    :goto_3
    sget-object v3, Lcom/waze/reports/OpeningHours;->wednesday:Ljava/lang/String;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/waze/reports/OpeningHours;->addDay(Ljava/lang/StringBuilder;ZLjava/lang/String;Lcom/waze/reports/OpeningHours$DayStringStatus;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/waze/reports/OpeningHours;->days:[I

    const/4 v2, 0x4

    aget v0, v0, v2

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    :goto_4
    sget-object v3, Lcom/waze/reports/OpeningHours;->thursday:Ljava/lang/String;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/waze/reports/OpeningHours;->addDay(Ljava/lang/StringBuilder;ZLjava/lang/String;Lcom/waze/reports/OpeningHours$DayStringStatus;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/waze/reports/OpeningHours;->days:[I

    const/4 v2, 0x5

    aget v0, v0, v2

    if-eqz v0, :cond_8

    const/4 v2, 0x1

    :goto_5
    sget-object v3, Lcom/waze/reports/OpeningHours;->friday:Ljava/lang/String;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/waze/reports/OpeningHours;->addDay(Ljava/lang/StringBuilder;ZLjava/lang/String;Lcom/waze/reports/OpeningHours$DayStringStatus;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/waze/reports/OpeningHours;->days:[I

    const/4 v2, 0x6

    aget v0, v0, v2

    if-eqz v0, :cond_9

    const/4 v2, 0x1

    :goto_6
    sget-object v3, Lcom/waze/reports/OpeningHours;->saturday:Ljava/lang/String;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/waze/reports/OpeningHours;->addDay(Ljava/lang/StringBuilder;ZLjava/lang/String;Lcom/waze/reports/OpeningHours$DayStringStatus;Ljava/lang/String;)V

    .line 126
    sget-boolean v0, Lcom/waze/reports/OpeningHours;->FIRST_DAY_IS_SUNDAY:Z

    if-nez v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/waze/reports/OpeningHours;->days:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v2, 0x1

    :goto_7
    sget-object v3, Lcom/waze/reports/OpeningHours;->sunday:Ljava/lang/String;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/waze/reports/OpeningHours;->addDay(Ljava/lang/StringBuilder;ZLjava/lang/String;Lcom/waze/reports/OpeningHours$DayStringStatus;Ljava/lang/String;)V

    .line 130
    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/waze/reports/OpeningHours;->addDay(Ljava/lang/StringBuilder;ZLjava/lang/String;Lcom/waze/reports/OpeningHours$DayStringStatus;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 118
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 120
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 121
    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .line 122
    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    .line 123
    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    .line 124
    :cond_8
    const/4 v2, 0x0

    goto :goto_5

    .line 125
    :cond_9
    const/4 v2, 0x0

    goto :goto_6

    .line 127
    :cond_a
    const/4 v2, 0x0

    goto :goto_7
.end method

.method public getHoursString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/waze/reports/OpeningHours;->from:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/waze/reports/OpeningHours;->from:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/waze/reports/OpeningHours;->to:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/waze/reports/OpeningHours;->to:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    :cond_1
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_24_HOURS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/waze/reports/OpeningHours;->from:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/waze/reports/OpeningHours;->from:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "0:00"

    iput-object v0, p0, Lcom/waze/reports/OpeningHours;->from:Ljava/lang/String;

    .line 165
    :cond_4
    iget-object v0, p0, Lcom/waze/reports/OpeningHours;->to:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/waze/reports/OpeningHours;->to:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const-string v0, "24:00"

    iput-object v0, p0, Lcom/waze/reports/OpeningHours;->to:Ljava/lang/String;

    .line 166
    :cond_6
    iget-object v0, p0, Lcom/waze/reports/OpeningHours;->from:Ljava/lang/String;

    iget-object v1, p0, Lcom/waze/reports/OpeningHours;->to:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 167
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    sget-object v1, Lcom/waze/strings/DisplayStrings;->DS_24_HOURS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v0, v1}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_7
    const-string v0, "%s - %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/waze/reports/OpeningHours;->from:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/waze/reports/OpeningHours;->to:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/waze/reports/OpeningHours;->days:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 53
    iget-object v0, p0, Lcom/waze/reports/OpeningHours;->from:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/waze/reports/OpeningHours;->to:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    return-void
.end method
