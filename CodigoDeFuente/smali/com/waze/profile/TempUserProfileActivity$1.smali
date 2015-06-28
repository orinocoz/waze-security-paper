.class Lcom/waze/profile/TempUserProfileActivity$1;
.super Ljava/lang/Object;
.source "TempUserProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/profile/TempUserProfileActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/profile/TempUserProfileActivity;


# direct methods
.method constructor <init>(Lcom/waze/profile/TempUserProfileActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/profile/TempUserProfileActivity$1;->this$0:Lcom/waze/profile/TempUserProfileActivity;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/waze/profile/TempUserProfileActivity$1;->this$0:Lcom/waze/profile/TempUserProfileActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/waze/profile/TempUserProfileActivity;->setResult(I)V

    .line 54
    iget-object v0, p0, Lcom/waze/profile/TempUserProfileActivity$1;->this$0:Lcom/waze/profile/TempUserProfileActivity;

    invoke-virtual {v0}, Lcom/waze/profile/TempUserProfileActivity;->finish()V

    .line 56
    return-void
.end method
