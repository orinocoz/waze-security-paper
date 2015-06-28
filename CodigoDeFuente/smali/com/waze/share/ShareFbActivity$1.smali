.class Lcom/waze/share/ShareFbActivity$1;
.super Ljava/lang/Object;
.source "ShareFbActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/share/ShareFbActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/share/ShareFbActivity;


# direct methods
.method constructor <init>(Lcom/waze/share/ShareFbActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/ShareFbActivity$1;->this$0:Lcom/waze/share/ShareFbActivity;

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/waze/share/ShareFbActivity$1;->this$0:Lcom/waze/share/ShareFbActivity;

    #calls: Lcom/waze/share/ShareFbActivity;->setTripText()V
    invoke-static {v0}, Lcom/waze/share/ShareFbActivity;->access$0(Lcom/waze/share/ShareFbActivity;)V

    .line 349
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 345
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 342
    return-void
.end method
