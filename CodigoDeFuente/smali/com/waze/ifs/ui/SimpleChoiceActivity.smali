.class public Lcom/waze/ifs/ui/SimpleChoiceActivity;
.super Lcom/waze/ifs/ui/ActivityBase;
.source "SimpleChoiceActivity.java"

# interfaces
.implements Lcom/waze/reports/SimpleChoiceFragment$ISimplyChoose;


# static fields
.field public static final ARG_ALLOW_COMMENT:Ljava/lang/String;

.field public static final ARG_CHOICES:Ljava/lang/String;

.field public static final ARG_FWD_INTENT:Ljava/lang/String;

.field public static final ARG_HINT_DS:Ljava/lang/String;

.field public static final ARG_INPUT_TYPE:Ljava/lang/String;

.field public static final ARG_SINGLE_LINE:Ljava/lang/String;

.field public static final ARG_SUBTITLE_DS:Ljava/lang/String;

.field public static final ARG_TITLE_DS:Ljava/lang/String;

.field public static final RET_CHOICE:Ljava/lang/String;

.field public static final RET_COMMENT:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFwdIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    const-class v0, Lcom/waze/ifs/ui/SimpleChoiceActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/SimpleChoiceActivity;->TAG:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/SimpleChoiceActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".arg.title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/SimpleChoiceActivity;->ARG_TITLE_DS:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/SimpleChoiceActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".arg.subtitle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/SimpleChoiceActivity;->ARG_SUBTITLE_DS:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/SimpleChoiceActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".arg.hint"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/SimpleChoiceActivity;->ARG_HINT_DS:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/SimpleChoiceActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".arg.choices"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/SimpleChoiceActivity;->ARG_CHOICES:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/SimpleChoiceActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".arg.single_line"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/SimpleChoiceActivity;->ARG_SINGLE_LINE:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/SimpleChoiceActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".arg.allow_comment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/SimpleChoiceActivity;->ARG_ALLOW_COMMENT:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/SimpleChoiceActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".arg.input_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/SimpleChoiceActivity;->ARG_INPUT_TYPE:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/SimpleChoiceActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".arg.fwd_intent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/SimpleChoiceActivity;->ARG_FWD_INTENT:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/SimpleChoiceActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".ret.choice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/SimpleChoiceActivity;->RET_CHOICE:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/waze/ifs/ui/SimpleChoiceActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".ret.comment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/waze/ifs/ui/SimpleChoiceActivity;->RET_COMMENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/waze/ifs/ui/ActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method public choiceMade(Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;Ljava/lang/String;)V
    .locals 3
    .parameter "choice"
    .parameter "comment"

    .prologue
    const/4 v2, -0x1

    .line 71
    iget-object v1, p0, Lcom/waze/ifs/ui/SimpleChoiceActivity;->mFwdIntent:Landroid/content/Intent;

    if-nez v1, :cond_0

    .line 72
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 77
    .local v0, intent:Landroid/content/Intent;
    :goto_0
    const-class v1, Lcom/waze/ifs/ui/SimpleChoiceActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 79
    sget-object v1, Lcom/waze/ifs/ui/SimpleChoiceActivity;->RET_CHOICE:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 80
    sget-object v1, Lcom/waze/ifs/ui/SimpleChoiceActivity;->RET_COMMENT:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    iget-object v1, p0, Lcom/waze/ifs/ui/SimpleChoiceActivity;->mFwdIntent:Landroid/content/Intent;

    if-nez v1, :cond_1

    .line 83
    invoke-virtual {p0, v2, v0}, Lcom/waze/ifs/ui/SimpleChoiceActivity;->setResult(ILandroid/content/Intent;)V

    .line 84
    invoke-virtual {p0}, Lcom/waze/ifs/ui/SimpleChoiceActivity;->finish()V

    .line 89
    :goto_1
    return-void

    .line 74
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v0, p0, Lcom/waze/ifs/ui/SimpleChoiceActivity;->mFwdIntent:Landroid/content/Intent;

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p0, v2}, Lcom/waze/ifs/ui/SimpleChoiceActivity;->setResult(I)V

    .line 87
    iget-object v1, p0, Lcom/waze/ifs/ui/SimpleChoiceActivity;->mFwdIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/waze/ifs/ui/SimpleChoiceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    .line 32
    invoke-super {p0, p1}, Lcom/waze/ifs/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v7, 0x7f03005a

    invoke-virtual {p0, v7}, Lcom/waze/ifs/ui/SimpleChoiceActivity;->setContentView(I)V

    .line 35
    new-instance v4, Lcom/waze/reports/SimpleChoiceFragment;

    invoke-direct {v4}, Lcom/waze/reports/SimpleChoiceFragment;-><init>()V

    .line 37
    .local v4, fragment:Lcom/waze/reports/SimpleChoiceFragment;
    invoke-virtual {p0}, Lcom/waze/ifs/ui/SimpleChoiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 39
    .local v6, intent:Landroid/content/Intent;
    sget-object v7, Lcom/waze/ifs/ui/SimpleChoiceActivity;->ARG_TITLE_DS:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 40
    .local v3, dsTmp:I
    invoke-static {}, Lcom/waze/strings/DisplayStrings;->values()[Lcom/waze/strings/DisplayStrings;

    move-result-object v7

    aget-object v2, v7, v3

    .line 41
    .local v2, ds:Lcom/waze/strings/DisplayStrings;
    invoke-virtual {v4, v2}, Lcom/waze/reports/SimpleChoiceFragment;->setTitle(Lcom/waze/strings/DisplayStrings;)V

    .line 43
    sget-object v7, Lcom/waze/ifs/ui/SimpleChoiceActivity;->ARG_SUBTITLE_DS:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 44
    invoke-static {}, Lcom/waze/strings/DisplayStrings;->values()[Lcom/waze/strings/DisplayStrings;

    move-result-object v7

    aget-object v2, v7, v3

    .line 45
    invoke-virtual {v4, v2}, Lcom/waze/reports/SimpleChoiceFragment;->setSubtitle(Lcom/waze/strings/DisplayStrings;)V

    .line 47
    sget-object v7, Lcom/waze/ifs/ui/SimpleChoiceActivity;->ARG_HINT_DS:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 48
    invoke-static {}, Lcom/waze/strings/DisplayStrings;->values()[Lcom/waze/strings/DisplayStrings;

    move-result-object v7

    aget-object v2, v7, v3

    .line 49
    invoke-virtual {v4, v2}, Lcom/waze/reports/SimpleChoiceFragment;->setHint(Lcom/waze/strings/DisplayStrings;)V

    .line 51
    sget-object v7, Lcom/waze/ifs/ui/SimpleChoiceActivity;->ARG_SINGLE_LINE:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/waze/reports/SimpleChoiceFragment;->setSingleLine(Z)V

    .line 52
    sget-object v7, Lcom/waze/ifs/ui/SimpleChoiceActivity;->ARG_ALLOW_COMMENT:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/waze/reports/SimpleChoiceFragment;->setAllowComment(Z)V

    .line 53
    sget-object v7, Lcom/waze/ifs/ui/SimpleChoiceActivity;->ARG_INPUT_TYPE:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/waze/reports/SimpleChoiceFragment;->setInputType(I)V

    .line 55
    sget-object v7, Lcom/waze/ifs/ui/SimpleChoiceActivity;->ARG_CHOICES:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 56
    .local v0, choiceObj:[Ljava/lang/Object;
    array-length v7, v0

    new-array v1, v7, [Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;

    .line 57
    .local v1, choices:[Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v7, v1

    if-lt v5, v7, :cond_0

    .line 60
    invoke-virtual {v4, v1}, Lcom/waze/reports/SimpleChoiceFragment;->setChoices([Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;)V

    .line 62
    sget-object v7, Lcom/waze/ifs/ui/SimpleChoiceActivity;->ARG_FWD_INTENT:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    iput-object v7, p0, Lcom/waze/ifs/ui/SimpleChoiceActivity;->mFwdIntent:Landroid/content/Intent;

    .line 64
    invoke-virtual {p0}, Lcom/waze/ifs/ui/SimpleChoiceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    const v8, 0x7f0902cc

    invoke-virtual {v7, v8, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commit()I

    .line 65
    return-void

    .line 58
    :cond_0
    aget-object v7, v0, v5

    check-cast v7, Lcom/waze/reports/SimpleChoiceFragment$SimpleChoice;

    aput-object v7, v1, v5

    .line 57
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method
