.class public final Lv2/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lw2/i;


# instance fields
.field public a:Lw2/t;

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lw2/i;

    const-string v1, "ReviewService"

    invoke-direct {v0, v1}, Lw2/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lv2/m;->c:Lw2/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lv2/m;->b:Ljava/lang/String;

    invoke-static {p1}, Lw2/w;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.finsky.BIND_IN_APP_REVIEW_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    new-instance v0, Lw2/t;

    sget-object v4, Lv2/m;->c:Lw2/i;

    new-instance v7, Lv2/i;

    invoke-direct {v7}, Lv2/i;-><init>()V

    const-string v5, "com.google.android.finsky.inappreviewservice.InAppReviewService"

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lw2/t;-><init>(Landroid/content/Context;Lw2/i;Ljava/lang/String;Landroid/content/Intent;Lv2/i;Lw2/o;)V

    iput-object v0, p0, Lv2/m;->a:Lw2/t;

    :cond_0
    return-void
.end method

.method public static bridge synthetic b()Lw2/i;
    .locals 1

    sget-object v0, Lv2/m;->c:Lw2/i;

    return-object v0
.end method

.method public static bridge synthetic c(Lv2/m;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lv2/m;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a()LR1/f;
    .locals 3

    iget-object v0, p0, Lv2/m;->b:Ljava/lang/String;

    sget-object v1, Lv2/m;->c:Lw2/i;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "requestInAppReview (%s)"

    invoke-virtual {v1, v2, v0}, Lw2/i;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lv2/m;->a:Lw2/t;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Play Store app is either not installed or not the official version"

    invoke-virtual {v1, v2, v0}, Lw2/i;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lv2/a;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lv2/a;-><init>(I)V

    invoke-static {v0}, LR1/i;->a(Ljava/lang/Exception;)LR1/f;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, LR1/g;

    invoke-direct {v0}, LR1/g;-><init>()V

    iget-object v1, p0, Lv2/m;->a:Lw2/t;

    new-instance v2, Lv2/j;

    invoke-direct {v2, p0, v0, v0}, Lv2/j;-><init>(Lv2/m;LR1/g;LR1/g;)V

    invoke-virtual {v1, v2, v0}, Lw2/t;->s(Lw2/j;LR1/g;)V

    invoke-virtual {v0}, LR1/g;->a()LR1/f;

    move-result-object v0

    return-object v0
.end method
