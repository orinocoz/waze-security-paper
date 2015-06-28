.class public Lcom/waze/authenticator/AccountGeneral;
.super Ljava/lang/Object;
.source "AccountGeneral.java"


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "Waze"

.field public static final ACCOUNT_TOKEN:Ljava/lang/String; = null

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.waze"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/waze/authenticator/AccountGeneral;->ACCOUNT_TOKEN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
