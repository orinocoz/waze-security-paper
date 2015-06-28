.class Lcom/waze/settings/SettingsLanguageActivity$2;
.super Ljava/lang/Object;
.source "SettingsLanguageActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/SettingsLanguageActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/waze/settings/SettingsLanguageActivity;

.field private final synthetic val$nativeManager:Lcom/waze/settings/SettingsNativeManager;


# direct methods
.method constructor <init>(Lcom/waze/settings/SettingsLanguageActivity;Lcom/waze/settings/SettingsNativeManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsLanguageActivity$2;->this$0:Lcom/waze/settings/SettingsLanguageActivity;

    iput-object p2, p0, Lcom/waze/settings/SettingsLanguageActivity$2;->val$nativeManager:Lcom/waze/settings/SettingsNativeManager;

    .line 33
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
    .line 36
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/waze/settings/SettingsLanguageActivity$2;->this$0:Lcom/waze/settings/SettingsLanguageActivity;

    #getter for: Lcom/waze/settings/SettingsLanguageActivity;->languages:[Lcom/waze/settings/SettingsValue;
    invoke-static {v0}, Lcom/waze/settings/SettingsLanguageActivity;->access$1(Lcom/waze/settings/SettingsLanguageActivity;)[Lcom/waze/settings/SettingsValue;

    move-result-object v0

    if-nez v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/waze/settings/SettingsLanguageActivity$2;->val$nativeManager:Lcom/waze/settings/SettingsNativeManager;

    iget-object v1, p0, Lcom/waze/settings/SettingsLanguageActivity$2;->this$0:Lcom/waze/settings/SettingsLanguageActivity;

    #getter for: Lcom/waze/settings/SettingsLanguageActivity;->languages:[Lcom/waze/settings/SettingsValue;
    invoke-static {v1}, Lcom/waze/settings/SettingsLanguageActivity;->access$1(Lcom/waze/settings/SettingsLanguageActivity;)[Lcom/waze/settings/SettingsValue;

    move-result-object v1

    aget-object v1, v1, p3

    iget-object v1, v1, Lcom/waze/settings/SettingsValue;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsNativeManager;->setLanguage(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/waze/settings/SettingsLanguageActivity$2;->this$0:Lcom/waze/settings/SettingsLanguageActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/waze/settings/SettingsLanguageActivity;->setResult(I)V

    .line 41
    iget-object v0, p0, Lcom/waze/settings/SettingsLanguageActivity$2;->this$0:Lcom/waze/settings/SettingsLanguageActivity;

    invoke-virtual {v0}, Lcom/waze/settings/SettingsLanguageActivity;->finish()V

    goto :goto_0
.end method
