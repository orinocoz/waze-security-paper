.class public Lcom/waze/reports/EditPlaceFragment$PaternValidator;
.super Ljava/lang/Object;
.source "EditPlaceFragment.java"

# interfaces
.implements Lcom/waze/reports/EditPlaceFragment$TextValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/waze/reports/EditPlaceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PaternValidator"
.end annotation


# instance fields
.field final _emptyOk:Z

.field final _pattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .parameter "pattern"
    .parameter "emptyOk"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x2

    invoke-static {p1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/waze/reports/EditPlaceFragment$PaternValidator;->_pattern:Ljava/util/regex/Pattern;

    .line 79
    iput-boolean p2, p0, Lcom/waze/reports/EditPlaceFragment$PaternValidator;->_emptyOk:Z

    .line 80
    return-void
.end method


# virtual methods
.method public isTextValid(Ljava/lang/String;)Z
    .locals 2
    .parameter "s"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/waze/reports/EditPlaceFragment$PaternValidator;->_emptyOk:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 84
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/waze/reports/EditPlaceFragment$PaternValidator;->_pattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method
