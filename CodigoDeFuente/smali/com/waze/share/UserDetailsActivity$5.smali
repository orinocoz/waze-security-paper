.class Lcom/waze/share/UserDetailsActivity$5;
.super Ljava/lang/Object;
.source "UserDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/UserDetailsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/share/UserDetailsActivity;


# direct methods
.method constructor <init>(Lcom/waze/share/UserDetailsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/UserDetailsActivity$5;->this$0:Lcom/waze/share/UserDetailsActivity;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 289
    iget-object v1, p0, Lcom/waze/share/UserDetailsActivity$5;->this$0:Lcom/waze/share/UserDetailsActivity;

    iget-object v0, p0, Lcom/waze/share/UserDetailsActivity$5;->this$0:Lcom/waze/share/UserDetailsActivity;

    #getter for: Lcom/waze/share/UserDetailsActivity;->mUser:Lcom/waze/user/PersonBase;
    invoke-static {v0}, Lcom/waze/share/UserDetailsActivity;->access$0(Lcom/waze/share/UserDetailsActivity;)Lcom/waze/user/PersonBase;

    move-result-object v0

    check-cast v0, Lcom/waze/user/UserData;

    invoke-static {v1, v0}, Lcom/waze/messages/UserMessage;->startPrivate(Lcom/waze/ifs/ui/ActivityBase;Lcom/waze/user/UserData;)V

    .line 290
    return-void
.end method
