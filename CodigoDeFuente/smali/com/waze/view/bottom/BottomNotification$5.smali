.class Lcom/waze/view/bottom/BottomNotification$5;
.super Ljava/lang/Object;
.source "BottomNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/view/bottom/BottomNotification;->postMessage(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/view/bottom/BottomNotification;

.field private final synthetic val$message:Ljava/lang/String;

.field private final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/waze/view/bottom/BottomNotification;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/view/bottom/BottomNotification$5;->this$0:Lcom/waze/view/bottom/BottomNotification;

    iput-object p2, p0, Lcom/waze/view/bottom/BottomNotification$5;->val$message:Ljava/lang/String;

    iput p3, p0, Lcom/waze/view/bottom/BottomNotification$5;->val$timeout:I

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private disableOnClickListenerIfOfflineRouteMessage(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 256
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_BottomBar_OFFLINE_ROUTE:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, offlineRouteMessage:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/waze/view/bottom/BottomNotification$5;->this$0:Lcom/waze/view/bottom/BottomNotification;

    sget-object v2, Lcom/waze/view/bottom/BottomNotificationOnClickIntent;->NONE:Lcom/waze/view/bottom/BottomNotificationOnClickIntent;

    invoke-virtual {v1, v2}, Lcom/waze/view/bottom/BottomNotification;->setListener(Lcom/waze/view/bottom/BottomNotificationOnClickIntent;)V

    .line 261
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification$5;->val$message:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/waze/view/bottom/BottomNotification$5;->disableOnClickListenerIfOfflineRouteMessage(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/waze/view/bottom/BottomNotification$5;->this$0:Lcom/waze/view/bottom/BottomNotification;

    iget-object v1, p0, Lcom/waze/view/bottom/BottomNotification$5;->val$message:Ljava/lang/String;

    iget v2, p0, Lcom/waze/view/bottom/BottomNotification$5;->val$timeout:I

    invoke-virtual {v0, v1, v2}, Lcom/waze/view/bottom/BottomNotification;->setShortMessage(Ljava/lang/String;I)V

    .line 252
    return-void
.end method
