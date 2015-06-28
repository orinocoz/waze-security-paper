.class Lcom/waze/settings/SettingsDataTransferActivity$2;
.super Ljava/lang/Object;
.source "SettingsDataTransferActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/SettingsDataTransferActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/settings/SettingsDataTransferActivity;


# direct methods
.method constructor <init>(Lcom/waze/settings/SettingsDataTransferActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsDataTransferActivity$2;->this$0:Lcom/waze/settings/SettingsDataTransferActivity;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/waze/settings/SettingsDataTransferActivity$2;->this$0:Lcom/waze/settings/SettingsDataTransferActivity;

    #calls: Lcom/waze/settings/SettingsDataTransferActivity;->onRefresh()V
    invoke-static {v0}, Lcom/waze/settings/SettingsDataTransferActivity;->access$0(Lcom/waze/settings/SettingsDataTransferActivity;)V

    .line 77
    return-void
.end method
