.class Lcom/waze/settings/SettingsAdvancedActivity$2;
.super Ljava/lang/Object;
.source "SettingsAdvancedActivity.java"

# interfaces
.implements Lcom/waze/settings/SwitchCheckedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/settings/SettingsAdvancedActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/settings/SettingsAdvancedActivity;

.field private final synthetic val$nm:Lcom/waze/NativeManager;


# direct methods
.method constructor <init>(Lcom/waze/settings/SettingsAdvancedActivity;Lcom/waze/NativeManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/settings/SettingsAdvancedActivity$2;->this$0:Lcom/waze/settings/SettingsAdvancedActivity;

    iput-object p2, p0, Lcom/waze/settings/SettingsAdvancedActivity$2;->val$nm:Lcom/waze/NativeManager;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCallback(Z)V
    .locals 1
    .parameter "bIsChecked"

    .prologue
    .line 120
    if-eqz p1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/waze/settings/SettingsAdvancedActivity$2;->val$nm:Lcom/waze/NativeManager;

    invoke-virtual {v0}, Lcom/waze/NativeManager;->CalendaRequestAccessNTV()V

    .line 123
    invoke-static {}, Lcom/waze/navigate/DriveToNativeManager;->getInstance()Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/navigate/DriveToNativeManager;->fetchCalendarEvents()I

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/waze/settings/SettingsAdvancedActivity$2;->val$nm:Lcom/waze/NativeManager;

    invoke-virtual {v0}, Lcom/waze/NativeManager;->CalendaDenyAccessNTV()V

    goto :goto_0
.end method
