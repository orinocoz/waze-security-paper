.class public Lcom/waze/phone/SmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsReceiver.java"


# static fields
.field static mInstace:Lcom/waze/phone/SmsReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/phone/SmsReceiver;->mInstace:Lcom/waze/phone/SmsReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static Register(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 64
    sget-object v1, Lcom/waze/phone/SmsReceiver;->mInstace:Lcom/waze/phone/SmsReceiver;

    if-nez v1, :cond_0

    .line 65
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    .local v0, n:Landroid/content/IntentFilter;
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 69
    new-instance v1, Lcom/waze/phone/SmsReceiver;

    invoke-direct {v1}, Lcom/waze/phone/SmsReceiver;-><init>()V

    sput-object v1, Lcom/waze/phone/SmsReceiver;->mInstace:Lcom/waze/phone/SmsReceiver;

    .line 71
    sget-object v1, Lcom/waze/phone/SmsReceiver;->mInstace:Lcom/waze/phone/SmsReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 73
    .end local v0           #n:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public static UnRegister(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 76
    sget-object v0, Lcom/waze/phone/SmsReceiver;->mInstace:Lcom/waze/phone/SmsReceiver;

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/waze/phone/SmsReceiver;->mInstace:Lcom/waze/phone/SmsReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 78
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/phone/SmsReceiver;->mInstace:Lcom/waze/phone/SmsReceiver;

    .line 80
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 25
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 27
    .local v1, extras:Landroid/os/Bundle;
    const-string v9, "pdus"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    .line 28
    .local v6, pdus:[Ljava/lang/Object;
    array-length v10, v6

    const/4 v9, 0x0

    :goto_0
    if-lt v9, v10, :cond_0

    .line 61
    return-void

    .line 28
    :cond_0
    aget-object v5, v6, v9

    .line 30
    .local v5, pdu:Ljava/lang/Object;
    check-cast v5, [B

    .end local v5           #pdu:Ljava/lang/Object;
    invoke-static {v5}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v3

    .line 32
    .local v3, msg:Landroid/telephony/SmsMessage;
    const-string v11, "WAZE"

    const-string v12, "SMS message"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    .line 34
    .local v4, origin:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, body:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, "(WAZEAPP)"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 41
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v11

    .line 42
    const-string v12, "READ_SMS"

    .line 43
    const-string v13, "VAUE"

    .line 44
    const-string v14, "0"

    const/4 v15, 0x1

    .line 41
    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 46
    const/4 v8, 0x0

    .line 47
    .local v8, sPin:Ljava/lang/String;
    const-string v11, "\\w+([0-9]+)\\w+([0-9]+)"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 48
    .local v7, ps:Ljava/util/regex/Pattern;
    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 49
    .local v2, m:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    .line 50
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v11

    if-lez v11, :cond_1

    .line 52
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v8

    .line 54
    :cond_1
    if-eqz v8, :cond_2

    .line 56
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/waze/NativeManager;->AuthPin(Ljava/lang/String;)V

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/waze/phone/SmsReceiver;->abortBroadcast()V

    .line 28
    .end local v2           #m:Ljava/util/regex/Matcher;
    .end local v7           #ps:Ljava/util/regex/Pattern;
    .end local v8           #sPin:Ljava/lang/String;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method
