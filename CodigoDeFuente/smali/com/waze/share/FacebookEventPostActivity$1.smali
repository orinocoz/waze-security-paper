.class Lcom/waze/share/FacebookEventPostActivity$1;
.super Ljava/lang/Object;
.source "FacebookEventPostActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/share/FacebookEventPostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/share/FacebookEventPostActivity;


# direct methods
.method constructor <init>(Lcom/waze/share/FacebookEventPostActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/share/FacebookEventPostActivity$1;->this$0:Lcom/waze/share/FacebookEventPostActivity;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/waze/share/FacebookEventPostActivity$1;->this$0:Lcom/waze/share/FacebookEventPostActivity;

    #calls: Lcom/waze/share/FacebookEventPostActivity;->setTripText()V
    invoke-static {v0}, Lcom/waze/share/FacebookEventPostActivity;->access$0(Lcom/waze/share/FacebookEventPostActivity;)V

    .line 310
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 306
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 303
    return-void
.end method
