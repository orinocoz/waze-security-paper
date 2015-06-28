.class Lcom/waze/profile/MyProfileActivity$11;
.super Ljava/lang/Object;
.source "MyProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/profile/MyProfileActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/waze/profile/MyProfileActivity$11;->this$0:Lcom/waze/profile/MyProfileActivity;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/waze/profile/MyProfileActivity$11;->this$0:Lcom/waze/profile/MyProfileActivity;

    #calls: Lcom/waze/profile/MyProfileActivity;->changePhoneNumber()V
    invoke-static {v0}, Lcom/waze/profile/MyProfileActivity;->access$15(Lcom/waze/profile/MyProfileActivity;)V

    .line 333
    return-void
.end method
