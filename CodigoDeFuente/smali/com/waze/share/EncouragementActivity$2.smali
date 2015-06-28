.class Lcom/waze/share/EncouragementActivity$2;
.super Ljava/lang/Object;
.source "EncouragementActivity.java"

# interfaces
.implements Lcom/waze/mywaze/MyWazeNativeManager$FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/EncouragementActivity;->onFacebook()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/share/EncouragementActivity;


# direct methods
.method constructor <init>(Lcom/waze/share/EncouragementActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/EncouragementActivity$2;->this$0:Lcom/waze/share/EncouragementActivity;

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/share/EncouragementActivity$2;)Lcom/waze/share/EncouragementActivity;
    .locals 1
    .parameter

    .prologue
    .line 261
    iget-object v0, p0, Lcom/waze/share/EncouragementActivity$2;->this$0:Lcom/waze/share/EncouragementActivity;

    return-object v0
.end method


# virtual methods
.method public onFacebookSettings(Lcom/waze/mywaze/MyWazeNativeManager$FacebookSettings;)V
    .locals 4
    .parameter "settings"

    .prologue
    const/4 v3, 0x0

    .line 265
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    const-string v1, "DRIVE_WITH_FRIENDS_POPUP_FB_CONNECT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/waze/NativeManager;->SignUplogAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 266
    const-string v0, "FACEBOOK_CONNECT_CLICK"

    const-string v1, "VAUE"

    const-string v2, "ENC_SCREEN"

    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-static {}, Lcom/waze/social/facebook/FacebookWrapper;->getInstance()Lcom/waze/social/facebook/FacebookWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/share/EncouragementActivity$2;->this$0:Lcom/waze/share/EncouragementActivity;

    new-instance v2, Lcom/waze/share/EncouragementActivity$2$1;

    invoke-direct {v2, p0}, Lcom/waze/share/EncouragementActivity$2$1;-><init>(Lcom/waze/share/EncouragementActivity$2;)V

    .line 277
    const/4 v3, 0x1

    .line 268
    invoke-virtual {v0, v1, v2, v3}, Lcom/waze/social/facebook/FacebookWrapper;->authorize(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/social/facebook/FacebookWrapper$IOnAuthorizeCompletedListener;Z)V

    .line 278
    return-void
.end method
