.class Lcom/waze/profile/MyProfileActivity$15;
.super Ljava/lang/Object;
.source "MyProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/profile/MyProfileActivity;->showErrorPopup(Lcom/waze/strings/DisplayStrings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/profile/MyProfileActivity;


# direct methods
.method constructor <init>(Lcom/waze/profile/MyProfileActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/profile/MyProfileActivity$15;->this$0:Lcom/waze/profile/MyProfileActivity;

    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 556
    iget-object v0, p0, Lcom/waze/profile/MyProfileActivity$15;->this$0:Lcom/waze/profile/MyProfileActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/waze/profile/MyProfileActivity;->setResult(I)V

    .line 557
    iget-object v0, p0, Lcom/waze/profile/MyProfileActivity$15;->this$0:Lcom/waze/profile/MyProfileActivity;

    invoke-virtual {v0}, Lcom/waze/profile/MyProfileActivity;->finish()V

    .line 558
    return-void
.end method
