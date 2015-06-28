.class Lcom/waze/settings/SettingsNativeManager$4;
.super Ljava/lang/Object;
.source "SettingsNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/SettingsNativeManager;->setVoice(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/settings/SettingsNativeManager;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/waze/settings/SettingsNativeManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsNativeManager$4;->this$0:Lcom/waze/settings/SettingsNativeManager;

    iput p2, p0, Lcom/waze/settings/SettingsNativeManager$4;->val$position:I

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/waze/settings/SettingsNativeManager$4;->this$0:Lcom/waze/settings/SettingsNativeManager;

    iget v1, p0, Lcom/waze/settings/SettingsNativeManager$4;->val$position:I

    #calls: Lcom/waze/settings/SettingsNativeManager;->setVoiceNTV(I)V
    invoke-static {v0, v1}, Lcom/waze/settings/SettingsNativeManager;->access$3(Lcom/waze/settings/SettingsNativeManager;I)V

    .line 85
    return-void
.end method
