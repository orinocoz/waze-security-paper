.class Lcom/waze/main/navigate/NavigationResult$15;
.super Ljava/lang/Object;
.source "NavigationResult.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
.method constructor <init>(Lcom/waze/main/navigate/NavigationResult;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/main/navigate/NavigationResult$15;->this$0:Lcom/waze/main/navigate/NavigationResult;

    .line 1059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/waze/main/navigate/NavigationResult$15;->this$0:Lcom/waze/main/navigate/NavigationResult;

    #calls: Lcom/waze/main/navigate/NavigationResult;->onClose()V
    invoke-static {v0}, Lcom/waze/main/navigate/NavigationResult;->access$20(Lcom/waze/main/navigate/NavigationResult;)V

    .line 1062
    return-void
.end method
