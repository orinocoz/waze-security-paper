.class Lcom/waze/settings/SettingsNativeManager$8;
.super Lcom/waze/ifs/async/RunnableUICallback;
.source "SettingsNativeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/SettingsNativeManager;->setNavigationGuidanceType(Ljava/lang/String;Ljava/lang/String;Lcom/waze/settings/SettingsNativeManager$SettingsExistsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private exists:Z

.field final synthetic this$0:Lcom/waze/settings/SettingsNativeManager;

.field private final synthetic val$display:Ljava/lang/String;

.field private final synthetic val$listener:Lcom/waze/settings/SettingsNativeManager$SettingsExistsListener;

.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/settings/SettingsNativeManager;Ljava/lang/String;Ljava/lang/String;Lcom/waze/settings/SettingsNativeManager$SettingsExistsListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsNativeManager$8;->this$0:Lcom/waze/settings/SettingsNativeManager;

    iput-object p2, p0, Lcom/waze/settings/SettingsNativeManager$8;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/waze/settings/SettingsNativeManager$8;->val$display:Ljava/lang/String;

    iput-object p4, p0, Lcom/waze/settings/SettingsNativeManager$8;->val$listener:Lcom/waze/settings/SettingsNativeManager$SettingsExistsListener;

    .line 148
    invoke-direct {p0}, Lcom/waze/ifs/async/RunnableUICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/waze/settings/SettingsNativeManager$8;->val$listener:Lcom/waze/settings/SettingsNativeManager$SettingsExistsListener;

    iget-boolean v1, p0, Lcom/waze/settings/SettingsNativeManager$8;->exists:Z

    invoke-interface {v0, v1}, Lcom/waze/settings/SettingsNativeManager$SettingsExistsListener;->onComplete(Z)V

    .line 160
    return-void
.end method

.method public event()V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/waze/settings/SettingsNativeManager$8;->this$0:Lcom/waze/settings/SettingsNativeManager;

    iget-object v1, p0, Lcom/waze/settings/SettingsNativeManager$8;->val$name:Ljava/lang/String;

    iget-object v2, p0, Lcom/waze/settings/SettingsNativeManager$8;->val$display:Ljava/lang/String;

    #calls: Lcom/waze/settings/SettingsNativeManager;->setNavigationGuidanceTypeNTV(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/waze/settings/SettingsNativeManager;->access$7(Lcom/waze/settings/SettingsNativeManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/waze/settings/SettingsNativeManager$8;->exists:Z

    .line 155
    return-void
.end method
