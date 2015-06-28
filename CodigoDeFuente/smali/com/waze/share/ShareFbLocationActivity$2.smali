.class Lcom/waze/share/ShareFbLocationActivity$2;
.super Ljava/lang/Object;
.source "ShareFbLocationActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/share/ShareFbLocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/share/ShareFbLocationActivity;


# direct methods
.method constructor <init>(Lcom/waze/share/ShareFbLocationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/ShareFbLocationActivity$2;->this$0:Lcom/waze/share/ShareFbLocationActivity;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    const/4 v2, 0x0

    .line 151
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, text:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/waze/share/ShareFbLocationActivity$2;->this$0:Lcom/waze/share/ShareFbLocationActivity;

    #calls: Lcom/waze/share/ShareFbLocationActivity;->fetchLocations(Ljava/lang/String;ZZ)V
    invoke-static {v1, v0, v2, v2}, Lcom/waze/share/ShareFbLocationActivity;->access$2(Lcom/waze/share/ShareFbLocationActivity;Ljava/lang/String;ZZ)V

    .line 157
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
    .line 148
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 145
    return-void
.end method
