.class Lcom/waze/main/navigate/NavigationResult$14;
.super Landroid/app/Dialog;
.source "NavigationResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/main/navigate/NavigationResult;->show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/waze/user/FriendUserData;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/main/navigate/NavigationResult;


# direct methods
.method constructor <init>(Lcom/waze/main/navigate/NavigationResult;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/main/navigate/NavigationResult$14;->this$0:Lcom/waze/main/navigate/NavigationResult;

    .line 1052
    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult$14;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #calls: Lcom/waze/main/navigate/NavigationResult;->onClose()V
    invoke-static {v0}, Lcom/waze/main/navigate/NavigationResult;->access$20(Lcom/waze/main/navigate/NavigationResult;)V

    .line 1056
    return-void
.end method
