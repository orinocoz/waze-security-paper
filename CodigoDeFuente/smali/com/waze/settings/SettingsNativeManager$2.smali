.class Lcom/waze/settings/SettingsNativeManager$2;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "SettingsNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/SettingsNativeManager;->getVoices(Lcom/waze/settings/SettingsNativeManager$SettingsVoiceDataValuesListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field languages:[Lcom/waze/voice/VoiceData;

.field final synthetic this$0:Lcom/waze/settings/SettingsNativeManager;

.field private final synthetic val$listener:Lcom/waze/settings/SettingsNativeManager$SettingsVoiceDataValuesListener;


# direct methods
.method constructor <init>(Lcom/waze/settings/SettingsNativeManager;Lcom/waze/settings/SettingsNativeManager$SettingsVoiceDataValuesListener;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsNativeManager$2;->this$0:Lcom/waze/settings/SettingsNativeManager;

    iput-object p2, p0, Lcom/waze/settings/SettingsNativeManager$2;->val$listener:Lcom/waze/settings/SettingsNativeManager$SettingsVoiceDataValuesListener;

    .line 55
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/settings/SettingsNativeManager$2;->languages:[Lcom/waze/voice/VoiceData;

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/waze/settings/SettingsNativeManager$2;->val$listener:Lcom/waze/settings/SettingsNativeManager$SettingsVoiceDataValuesListener;

    iget-object v1, p0, Lcom/waze/settings/SettingsNativeManager$2;->languages:[Lcom/waze/voice/VoiceData;

    invoke-interface {v0, v1}, Lcom/waze/settings/SettingsNativeManager$SettingsVoiceDataValuesListener;->onComplete([Lcom/waze/voice/VoiceData;)V

    .line 66
    return-void
.end method

.method public event()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/waze/settings/SettingsNativeManager$2;->this$0:Lcom/waze/settings/SettingsNativeManager;

    #calls: Lcom/waze/settings/SettingsNativeManager;->getVoicesNTV()[Lcom/waze/voice/VoiceData;
    invoke-static {v0}, Lcom/waze/settings/SettingsNativeManager;->access$1(Lcom/waze/settings/SettingsNativeManager;)[Lcom/waze/voice/VoiceData;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/settings/SettingsNativeManager$2;->languages:[Lcom/waze/voice/VoiceData;

    .line 61
    return-void
.end method
