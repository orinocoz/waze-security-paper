.class Lcom/waze/share/UserOptionsActivity$2;
.super Ljava/lang/Object;
.source "UserOptionsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/UserOptionsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/share/UserOptionsActivity;


# direct methods
.method constructor <init>(Lcom/waze/share/UserOptionsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/UserOptionsActivity$2;->this$0:Lcom/waze/share/UserOptionsActivity;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/waze/share/UserOptionsActivity$2;->this$0:Lcom/waze/share/UserOptionsActivity;

    iget-object v1, p0, Lcom/waze/share/UserOptionsActivity$2;->this$0:Lcom/waze/share/UserOptionsActivity;

    #getter for: Lcom/waze/share/UserOptionsActivity;->mUserData:Lcom/waze/user/UserData;
    invoke-static {v1}, Lcom/waze/share/UserOptionsActivity;->access$1(Lcom/waze/share/UserOptionsActivity;)Lcom/waze/user/UserData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/waze/messages/UserMessage;->startPrivate(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/user/UserData;)V

    .line 81
    return-void
.end method
