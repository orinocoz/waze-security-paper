.class Lcom/waze/PhoneList$2;
.super Ljava/lang/Object;
.source "PhoneList.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/PhoneList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/PhoneList;


# direct methods
.method constructor <init>(Lcom/waze/PhoneList;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/PhoneList$2;->this$0:Lcom/waze/PhoneList;

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter "s"

    .prologue
    .line 333
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, text:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/waze/PhoneList$2;->this$0:Lcom/waze/PhoneList;

    const/16 v2, 0x1e

    iget-object v3, p0, Lcom/waze/PhoneList$2;->this$0:Lcom/waze/PhoneList;

    const/4 v4, 0x0

    invoke-static {v1, v0, v2, v3, v4}, Lcom/waze/share/ShareFbQueries;->getFriendsList(Lcom/waze/ifs/ui/ActivityBase;Ljava/lang/String;ILcom/waze/share/ShareFbQueries$IFriendsListCallback;Z)V

    .line 339
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
    .line 330
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 327
    return-void
.end method
