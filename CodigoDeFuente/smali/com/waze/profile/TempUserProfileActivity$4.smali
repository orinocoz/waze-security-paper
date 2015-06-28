.class Lcom/waze/profile/TempUserProfileActivity$4;
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
    iput-object p1, p0, Lcom/waze/profile/TempUserProfileActivity$4;->this$0:Lcom/waze/profile/TempUserProfileActivity;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 102
    invoke-static {}, Lcom/waze/NativeManager;->getInstance()Lcom/waze/NativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/NativeManager;->DeleteAccount()V

    .line 103
    invoke-static {}, Lcom/waze/phone/AddressBook;->DeleteAccount()V

    .line 104
    return-void
.end method
