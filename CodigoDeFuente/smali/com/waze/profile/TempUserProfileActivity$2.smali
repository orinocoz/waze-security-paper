.class Lcom/waze/profile/TempUserProfileActivity$2;
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
    iput-object p1, p0, Lcom/waze/profile/TempUserProfileActivity$2;->this$0:Lcom/waze/profile/TempUserProfileActivity;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/waze/profile/TempUserProfileActivity$2;->this$0:Lcom/waze/profile/TempUserProfileActivity;

    #calls: Lcom/waze/profile/TempUserProfileActivity;->changePhoneNumber()V
    invoke-static {v0}, Lcom/waze/profile/TempUserProfileActivity;->access$0(Lcom/waze/profile/TempUserProfileActivity;)V

    .line 79
    return-void
.end method
