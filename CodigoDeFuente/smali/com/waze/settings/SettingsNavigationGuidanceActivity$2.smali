.class Lcom/waze/settings/SettingsNavigationGuidanceActivity$2;
.super Ljava/lang/Object;
.source "SettingsNavigationGuidanceActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/SettingsNavigationGuidanceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/settings/SettingsNavigationGuidanceActivity;

.field private final synthetic val$nativeManager:Lcom/waze/settings/SettingsNativeManager;


# direct methods
.method constructor <init>(Lcom/waze/settings/SettingsNavigationGuidanceActivity;Lcom/waze/settings/SettingsNativeManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsNavigationGuidanceActivity$2;->this$0:Lcom/waze/settings/SettingsNavigationGuidanceActivity;

    iput-object p2, p0, Lcom/waze/settings/SettingsNavigationGuidanceActivity$2;->val$nativeManager:Lcom/waze/settings/SettingsNativeManager;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/waze/settings/SettingsNavigationGuidanceActivity$2;->this$0:Lcom/waze/settings/SettingsNavigationGuidanceActivity;

    #getter for: Lcom/waze/settings/SettingsNavigationGuidanceActivity;->languages:[Lcom/waze/voice/VoiceData;
    invoke-static {v0}, Lcom/waze/settings/SettingsNavigationGuidanceActivity;->access$1(Lcom/waze/settings/SettingsNavigationGuidanceActivity;)[Lcom/waze/voice/VoiceData;

    move-result-object v0

    if-nez v0, :cond_0

    .line 43
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/waze/settings/SettingsNavigationGuidanceActivity$2;->val$nativeManager:Lcom/waze/settings/SettingsNativeManager;

    invoke-virtual {v0, p3}, Lcom/waze/settings/SettingsNativeManager;->setVoice(I)V

    .line 41
    iget-object v0, p0, Lcom/waze/settings/SettingsNavigationGuidanceActivity$2;->this$0:Lcom/waze/settings/SettingsNavigationGuidanceActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsNavigationGuidanceActivity;->setResult(I)V

    .line 42
    iget-object v0, p0, Lcom/waze/settings/SettingsNavigationGuidanceActivity$2;->this$0:Lcom/waze/settings/SettingsNavigationGuidanceActivity;

    invoke-virtual {v0}, Lcom/waze/settings/SettingsNavigationGuidanceActivity;->finish()V

    goto :goto_0
.end method
