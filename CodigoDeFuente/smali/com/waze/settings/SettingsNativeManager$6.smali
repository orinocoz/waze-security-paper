.class Lcom/waze/settings/SettingsNativeManager$6;
.super Ljava/lang/Object;
.source "SettingsNativeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/SettingsNativeManager;->setNavigationGuidance(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/settings/SettingsNativeManager;

.field private final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/waze/settings/SettingsNativeManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsNativeManager$6;->this$0:Lcom/waze/settings/SettingsNativeManager;

    iput-object p2, p0, Lcom/waze/settings/SettingsNativeManager$6;->val$value:Ljava/lang/String;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/waze/settings/SettingsNativeManager$6;->this$0:Lcom/waze/settings/SettingsNativeManager;

    iget-object v1, p0, Lcom/waze/settings/SettingsNativeManager$6;->val$value:Ljava/lang/String;

    #calls: Lcom/waze/settings/SettingsNativeManager;->setNavigationGuidanceNTV(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/waze/settings/SettingsNativeManager;->access$5(Lcom/waze/settings/SettingsNativeManager;Ljava/lang/String;)V

    .line 126
    return-void
.end method
