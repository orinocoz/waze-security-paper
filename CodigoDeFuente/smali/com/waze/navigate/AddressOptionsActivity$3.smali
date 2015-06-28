.class Lcom/waze/navigate/AddressOptionsActivity$3;
.super Ljava/lang/Object;
.source "AddressOptionsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/navigate/AddressOptionsActivity;->refreshView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/navigate/AddressOptionsActivity;


# direct methods
.method constructor <init>(Lcom/waze/navigate/AddressOptionsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/navigate/AddressOptionsActivity$3;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/navigate/AddressOptionsActivity$3;)Lcom/waze/navigate/AddressOptionsActivity;
    .locals 1
    .parameter

    .prologue
    .line 273
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity$3;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity$3;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v0}, Lcom/waze/navigate/AddressOptionsActivity;->access$1(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v0

    iget v0, v0, Lcom/waze/navigate/AddressItem;->index:I

    if-lez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity$3;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v0}, Lcom/waze/navigate/AddressOptionsActivity;->access$0(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/AddressOptionsActivity$3;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v1}, Lcom/waze/navigate/AddressOptionsActivity;->access$1(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v1

    iget v1, v1, Lcom/waze/navigate/AddressItem;->index:I

    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsActivity$3;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsActivity;->access$1(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getMeetingId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/waze/navigate/DriveToNativeManager;->CalendarAddressVerifiedByIndex(ILjava/lang/String;)V

    .line 282
    :goto_0
    const-string v0, "CALENDAR_SAVE"

    const-string v1, "VAUE"

    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsActivity$3;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsActivity;->access$1(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getMeetingId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/waze/analytics/Analytics;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity$3;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->EventAddressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v0}, Lcom/waze/navigate/AddressOptionsActivity;->access$9(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/waze/navigate/AddressItem;->getisRecurring()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity$3;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/navigate/AddressOptionsActivity;->access$10(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/AddressOptionsActivity$3;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v1}, Lcom/waze/navigate/AddressOptionsActivity;->access$10(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_LOCATION_SAVED_ALL_RECURRING_EVENTS:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sign_up_big_v"

    invoke-virtual {v0, v1, v2}, Lcom/waze/NativeManager;->OpenProgressIconPopup(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/16 v7, 0x7d0

    .line 293
    .local v7, timer:I
    :goto_1
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    .line 294
    .local v6, hn:Landroid/os/Handler;
    new-instance v0, Lcom/waze/navigate/AddressOptionsActivity$3$1;

    invoke-direct {v0, p0}, Lcom/waze/navigate/AddressOptionsActivity$3$1;-><init>(Lcom/waze/navigate/AddressOptionsActivity$3;)V

    .line 301
    int-to-long v1, v7

    .line 294
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 303
    return-void

    .line 280
    .end local v6           #hn:Landroid/os/Handler;
    .end local v7           #timer:I
    :cond_0
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity$3;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->driveToNativeManager:Lcom/waze/navigate/DriveToNativeManager;
    invoke-static {v0}, Lcom/waze/navigate/AddressOptionsActivity;->access$0(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/navigate/DriveToNativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/AddressOptionsActivity$3;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v1}, Lcom/waze/navigate/AddressOptionsActivity;->access$1(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/waze/navigate/AddressItem;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/waze/navigate/AddressOptionsActivity$3;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v2}, Lcom/waze/navigate/AddressOptionsActivity;->access$1(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/waze/navigate/AddressItem;->getLocationX()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/waze/navigate/AddressOptionsActivity$3;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v3}, Lcom/waze/navigate/AddressOptionsActivity;->access$1(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/waze/navigate/AddressItem;->getLocationY()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/waze/navigate/AddressOptionsActivity$3;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v4}, Lcom/waze/navigate/AddressOptionsActivity;->access$1(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/waze/navigate/AddressItem;->getMeetingId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/waze/navigate/AddressOptionsActivity$3;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->addressItem:Lcom/waze/navigate/AddressItem;
    invoke-static {v5}, Lcom/waze/navigate/AddressOptionsActivity;->access$1(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/navigate/AddressItem;

    move-result-object v5

    iget-object v5, v5, Lcom/waze/navigate/AddressItem;->VanueID:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/waze/navigate/DriveToNativeManager;->CalendarAddressVerified(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/waze/navigate/AddressOptionsActivity$3;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v0}, Lcom/waze/navigate/AddressOptionsActivity;->access$10(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/NativeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/waze/navigate/AddressOptionsActivity$3;->this$0:Lcom/waze/navigate/AddressOptionsActivity;

    #getter for: Lcom/waze/navigate/AddressOptionsActivity;->nativeManager:Lcom/waze/NativeManager;
    invoke-static {v1}, Lcom/waze/navigate/AddressOptionsActivity;->access$10(Lcom/waze/navigate/AddressOptionsActivity;)Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v2, Lcom/waze/strings/DisplayStrings;->DS_LOCATION_SAVED:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v2}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sign_up_big_v"

    invoke-virtual {v0, v1, v2}, Lcom/waze/NativeManager;->OpenProgressIconPopup(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const/16 v7, 0x3e8

    .restart local v7       #timer:I
    goto :goto_1
.end method
