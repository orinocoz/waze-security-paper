.class Lcom/waze/settings/SettingsNativeManager$9;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "SettingsNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/SettingsNativeManager;->getPreferredGasType(Lcom/waze/settings/SettingsNativeManager$SettingsValuesListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field gasTypes:[Lcom/waze/settings/SettingsValue;

.field final synthetic this$0:Lcom/waze/settings/SettingsNativeManager;

.field private final synthetic val$listener:Lcom/waze/settings/SettingsNativeManager$SettingsValuesListener;


# direct methods
.method constructor <init>(Lcom/waze/settings/SettingsNativeManager;Lcom/waze/settings/SettingsNativeManager$SettingsValuesListener;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsNativeManager$9;->this$0:Lcom/waze/settings/SettingsNativeManager;

    iput-object p2, p0, Lcom/waze/settings/SettingsNativeManager$9;->val$listener:Lcom/waze/settings/SettingsNativeManager$SettingsValuesListener;

    .line 166
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/waze/settings/SettingsNativeManager$9;->gasTypes:[Lcom/waze/settings/SettingsValue;

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/waze/settings/SettingsNativeManager$9;->val$listener:Lcom/waze/settings/SettingsNativeManager$SettingsValuesListener;

    iget-object v1, p0, Lcom/waze/settings/SettingsNativeManager$9;->gasTypes:[Lcom/waze/settings/SettingsValue;

    invoke-interface {v0, v1}, Lcom/waze/settings/SettingsNativeManager$SettingsValuesListener;->onComplete([Lcom/waze/settings/SettingsValue;)V

    .line 177
    return-void
.end method

.method public event()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/waze/settings/SettingsNativeManager$9;->this$0:Lcom/waze/settings/SettingsNativeManager;

    #calls: Lcom/waze/settings/SettingsNativeManager;->getGasTypesNTV()[Lcom/waze/settings/SettingsValue;
    invoke-static {v0}, Lcom/waze/settings/SettingsNativeManager;->access$8(Lcom/waze/settings/SettingsNativeManager;)[Lcom/waze/settings/SettingsValue;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/settings/SettingsNativeManager$9;->gasTypes:[Lcom/waze/settings/SettingsValue;

    .line 172
    return-void
.end method
