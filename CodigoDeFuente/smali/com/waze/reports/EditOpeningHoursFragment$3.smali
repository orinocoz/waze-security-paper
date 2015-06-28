.class Lcom/waze/reports/EditOpeningHoursFragment$3;
.super Ljava/lang/Object;
.source "EditOpeningHoursFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/waze/reports/EditOpeningHoursFragment;->setUpFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/waze/reports/EditOpeningHoursFragment;


# direct methods
.method constructor <init>(Lcom/waze/reports/EditOpeningHoursFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/waze/reports/EditOpeningHoursFragment$3;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/waze/reports/EditOpeningHoursFragment$3;)Lcom/waze/reports/EditOpeningHoursFragment;
    .locals 1
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/waze/reports/EditOpeningHoursFragment$3;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/16 v6, 0x3a

    .line 197
    move-object v10, p1

    check-cast v10, Landroid/widget/EditText;

    .line 198
    .local v10, toSet:Landroid/widget/EditText;
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    .line 199
    .local v9, curTime:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v9, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v9, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 200
    .local v4, hour:I
    invoke-virtual {v9, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v9, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 203
    .local v5, minute:I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v1, v3, :cond_0

    .line 204
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/waze/reports/EditOpeningHoursFragment$3;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    invoke-virtual {v1}, Lcom/waze/reports/EditOpeningHoursFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x103000b

    invoke-direct {v2, v1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 209
    .local v2, wrapper:Landroid/view/ContextThemeWrapper;
    :goto_0
    const-string v8, "Set time"

    .line 210
    .local v8, title:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v3, 0x7f090279

    if-ne v1, v3, :cond_1

    .line 211
    iget-object v1, p0, Lcom/waze/reports/EditOpeningHoursFragment$3;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mNm:Lcom/waze/NativeManager;
    invoke-static {v1}, Lcom/waze/reports/EditOpeningHoursFragment;->access$2(Lcom/waze/reports/EditOpeningHoursFragment;)Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_OPENING_TIME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v8

    .line 218
    :goto_1
    new-instance v0, Lcom/waze/reports/EditOpeningHoursFragment$DurationTimePickDialog;

    iget-object v1, p0, Lcom/waze/reports/EditOpeningHoursFragment$3;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    new-instance v3, Lcom/waze/reports/EditOpeningHoursFragment$3$1;

    invoke-direct {v3, p0, v10}, Lcom/waze/reports/EditOpeningHoursFragment$3$1;-><init>(Lcom/waze/reports/EditOpeningHoursFragment$3;Landroid/widget/EditText;)V

    .line 224
    const/4 v6, 0x1

    const/4 v7, 0x5

    .line 218
    invoke-direct/range {v0 .. v8}, Lcom/waze/reports/EditOpeningHoursFragment$DurationTimePickDialog;-><init>(Lcom/waze/reports/EditOpeningHoursFragment;Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZILjava/lang/String;)V

    .line 225
    .local v0, pick:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 226
    new-instance v1, Lcom/waze/reports/EditOpeningHoursFragment$3$2;

    invoke-direct {v1, p0}, Lcom/waze/reports/EditOpeningHoursFragment$3$2;-><init>(Lcom/waze/reports/EditOpeningHoursFragment$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 233
    return-void

    .line 206
    .end local v0           #pick:Landroid/app/Dialog;
    .end local v2           #wrapper:Landroid/view/ContextThemeWrapper;
    .end local v8           #title:Ljava/lang/String;
    :cond_0
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/waze/reports/EditOpeningHoursFragment$3;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    invoke-virtual {v1}, Lcom/waze/reports/EditOpeningHoursFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x103006f

    invoke-direct {v2, v1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .restart local v2       #wrapper:Landroid/view/ContextThemeWrapper;
    goto :goto_0

    .line 212
    .restart local v8       #title:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v3, 0x7f09027b

    if-ne v1, v3, :cond_2

    .line 213
    iget-object v1, p0, Lcom/waze/reports/EditOpeningHoursFragment$3;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mNm:Lcom/waze/NativeManager;
    invoke-static {v1}, Lcom/waze/reports/EditOpeningHoursFragment;->access$2(Lcom/waze/reports/EditOpeningHoursFragment;)Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_CLOSING_TIME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v8

    .line 214
    goto :goto_1

    .line 215
    :cond_2
    iget-object v1, p0, Lcom/waze/reports/EditOpeningHoursFragment$3;->this$0:Lcom/waze/reports/EditOpeningHoursFragment;

    #getter for: Lcom/waze/reports/EditOpeningHoursFragment;->mNm:Lcom/waze/NativeManager;
    invoke-static {v1}, Lcom/waze/reports/EditOpeningHoursFragment;->access$2(Lcom/waze/reports/EditOpeningHoursFragment;)Lcom/waze/NativeManager;

    move-result-object v1

    sget-object v3, Lcom/waze/strings/DisplayStrings;->DS_TIME:Lcom/waze/strings/DisplayStrings;

    invoke-virtual {v1, v3}, Lcom/waze/NativeManager;->getLanguageString(Lcom/waze/strings/DisplayStrings;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method
