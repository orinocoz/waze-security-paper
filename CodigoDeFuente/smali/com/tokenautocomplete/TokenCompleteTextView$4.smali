.class Lcom/tokenautocomplete/TokenCompleteTextView$4;
.super Ljava/lang/Object;
.source "TokenCompleteTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tokenautocomplete/TokenCompleteTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tokenautocomplete/TokenCompleteTextView;


# direct methods
.method constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$4;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 1074
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$4;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    iget-object v1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$4;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    invoke-virtual {v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->isFocused()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tokenautocomplete/TokenCompleteTextView;->handleFocus(Z)V

    .line 1079
    return-void
.end method
