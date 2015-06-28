.class Lcom/waze/share/UserDetailsActivity$10;
.super Ljava/lang/Object;
.source "UserDetailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/share/UserDetailsActivity;->showErrorPopup(Lcom/waze/strings/DisplayStrings;)V
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
    iput-object p1, p0, Lcom/waze/share/UserDetailsActivity$10;->this$0:Lcom/waze/share/UserDetailsActivity;

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/waze/share/UserDetailsActivity$10;->this$0:Lcom/waze/share/UserDetailsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/share/UserDetailsActivity;->setResult(I)V

    .line 453
    iget-object v0, p0, Lcom/waze/share/UserDetailsActivity$10;->this$0:Lcom/waze/share/UserDetailsActivity;

    invoke-virtual {v0}, Lcom/waze/share/UserDetailsActivity;->finish()V

    .line 454
    return-void
.end method
