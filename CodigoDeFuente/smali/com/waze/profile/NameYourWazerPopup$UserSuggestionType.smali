.class public Lcom/waze/profile/NameYourWazerPopup$UserSuggestionType;
.super Ljava/lang/Object;
.source "NameYourWazerPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/profile/NameYourWazerPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserSuggestionType"
.end annotation


# static fields
.field public static final suggestion_ok:I = 0x0

.field public static final suggestion_status_already_taken:I = 0x4

.field public static final suggestion_status_forbidden:I = 0x5

.field public static final suggestion_status_invalid_characters:I = 0x3

.field public static final suggestion_status_too_long:I = 0x2

.field public static final suggestion_status_too_short:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/waze/profile/NameYourWazerPopup;


# direct methods
.method public constructor <init>(Lcom/waze/profile/NameYourWazerPopup;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/waze/profile/NameYourWazerPopup$UserSuggestionType;->this$0:Lcom/waze/profile/NameYourWazerPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
