.class Lcom/waze/share/ShareFbWithActivity$2;
.super Ljava/lang/Object;
.source "ShareFbWithActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/share/ShareFbWithActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/share/ShareFbWithActivity;


# direct methods
.method constructor <init>(Lcom/waze/share/ShareFbWithActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/ShareFbWithActivity$2;->this$0:Lcom/waze/share/ShareFbWithActivity;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter "s"

    .prologue
    .line 156
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, text:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/waze/share/ShareFbWithActivity$2;->this$0:Lcom/waze/share/ShareFbWithActivity;

    const/16 v2, 0x1e

    iget-object v3, p0, Lcom/waze/share/ShareFbWithActivity$2;->this$0:Lcom/waze/share/ShareFbWithActivity;

    const/4 v4, 0x0

    invoke-static {v1, v0, v2, v3, v4}, Lcom/waze/share/ShareFbQueries;->getFriendsList(Lcom/waze/ifs/ui/ActivityBase;Ljava/lang/String;ILcom/waze/share/ShareFbQueries$IFriendsListCallback;Z)V

    .line 162
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 153
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 150
    return-void
.end method
